package uniandes.edu.co.proyecto.Repositories;

import java.util.Date;
import java.util.Collection;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;
import uniandes.edu.co.proyecto.modelo.Producto;

public interface ProductoRepository extends JpaRepository<Producto, Long> {

    public interface ProductoInfo {
        String getNombreProducto();

        Long getCodigoBarras();

        String getBodega();

        String getSucursal();

        String getProveedor();

        Integer getTotalExistencia();
    }

    public interface ProductoImportante {

        String getNombre();

        Integer getCantidadActual();

        Integer getCantidadMinima();

        Double getCostoPromedio();
    }

    @Query(value = "SELECT * FROM Producto", nativeQuery = true)
    Collection<Producto> getAllProductos();

    @Query(value = "SELECT * FROM Producto WHERE Codigo_Barras = :codBar", nativeQuery = true)
    Producto getProducto(@Param("codBar") Long codBar);

    @Modifying
    @Transactional
    @Query(value = "INSERT INTO Producto (Codigo_Barras, Nombre, Precio_Unitario_Venta, Presentacion, Cantidad_Presentacion, Unidad_Medida, Fecha_Expiracion, Codigo_Categoria, Id_Especificacion_Empacado)  VALUES (producto_seq.nextval, :nombre, :precio, :presentacion, :cantidad, :unidadMedida, :expiracion, :codCategoria, :idEspecificacion)", nativeQuery = true)
    void insertProducto(@Param("nombre") String nombre, @Param("precio") Double precio,
            @Param("presentacion") String presentacion,
            @Param("cantidad") Integer cantidad, @Param("unidadMedida") String unidadMedida,
            @Param("expiracion") Date expiracion, @Param("codCategoria") Long codCategoria,
            @Param("idEspecificacion") Long idEspecificacion);

    @Modifying
    @Transactional
    @Query(value = "UPDATE Producto SET Cantidad_Presentacion = :presentacion WHERE Codigo_Barras = :codBar", nativeQuery = true)
    void updateProducto(@Param("codBar") Long codBar, @Param("presentacion") String presentacion);

    @Modifying
    @Transactional
    @Query(value = "DELETE FROM Producto WHERE Codigo_Barras = :codBar", nativeQuery = true)
    void deleteProducto(@Param("codBar") Long codBar);

    @Query(value = """
            Select p.* \r
            From Producto p\r
            INNER JOIN Producto_Perecedero pp ON p.codigo_barras = pp.codigo_barras_producto \r
            INNER JOIN Categoria c ON p.codigo_categoria = c.codigo \r
            INNER JOIN Info_Extra_Bodega ieb ON p.Codigo_Barras = ieb.codigo_barras_producto \r
            INNER JOIN Bodega b ON ieb.id_bodega = b.id \r
            INNER JOIN Sucursal s ON b.id_sucursal = s.id \r
            WHERE Precio_Unitario_Venta BETWEEN :precioMinimo AND :precioMaximo\r
            AND pp.fecha_vencimiento > TO_DATE(:fechaVencimiento, 'YYYY-MM-DD') \r
            AND (s.id= :sucursal OR c.codigo= :codigoCategoria)""", nativeQuery = true)
    Collection<Producto> ProductosConCaracteristicas(@Param("sucursal") Long sucursal,
            @Param("precioMinimo") Double precioMinimo,
            @Param("precioMaximo") Double precioMaximo,
            @Param("fechaVencimiento") String fechaVencimiento,
            @Param("codigoCategoria") Long codigoCategoria);

    @Query(value = """
            SELECT p.nombre, dcb.cantidad_Existencias AS CantidadActual, \r
            ieb.nivel_Minimo_Re_Orden AS CantidadMinima, ieb.costo_Promedio \r
            FROM Producto p \r
            INNER JOIN Info_Extra_Bodega ieb ON p.codigo_barras = ieb.codigo_barras_producto \r
            INNER JOIN Detalle_Costo_Bodega dcb ON ieb.id_detalle_costo_bodega = dcb.id \r
            WHERE ieb.id_bodega IN (SELECT b.id \r
            FROM Bodega b \r
            INNER JOIN Sucursal s ON b.id_sucursal = s.id \r
            WHERE b.id = :bodega AND s.id = :sucursal) \r
            """, nativeQuery = true)
    Collection<ProductoImportante> obtenerDatosProducto(@Param("bodega") Long bodega,
            @Param("sucursal") Long sucursal);

    @Query(value = """
            SELECT p.nombre, dcb.cantidad_Existencias AS CantidadActual, \r
            ieb.nivel_Minimo_Re_Orden AS CantidadMinima, ieb.costo_Promedio \r
            FROM Producto p \r
            INNER JOIN Info_Extra_Bodega ieb ON p.codigo_barras = ieb.codigo_barras_producto \r
            INNER JOIN Detalle_Costo_Bodega dcb ON ieb.id_detalle_costo_bodega = dcb.id \r
            WHERE ieb.id_bodega IN (SELECT b.id \r
            FROM Bodega b \r
            INNER JOIN Sucursal s ON b.id_sucursal = s.id) \r
            """, nativeQuery = true)
    Collection<ProductoImportante> obtenerDatosProducto1();

    @Query(value = """
            SELECT p.Nombre AS nombreProducto, \r
            p.Codigo_Barras,\r
            b.nombre AS bodega,\r
            s.Nombre AS sucursal,\r
            pr.Nombre AS proveedor,\r
            ieb.Total_Existencia \r
            FROM Producto p \r
            INNER JOIN Info_Extra_Bodega ieb ON p.Codigo_Barras = ieb.Codigo_Barras_Producto \r
            INNER JOIN Detalle_Costo_Bodega dcb ON ieb.Id_Detalle_Costo_Bodega= dcb.id\r
            INNER JOIN Bodega b ON ieb.id_bodega = b.id \r
            INNER JOIN Sucursal s ON b.id_sucursal = s.id\r
            INNER JOIN Info_Extra_Proveedor iep ON p.Codigo_Barras = iep.Codigo_Barras_Producto \r
            INNER JOIN Proveedor pr ON iep.Nit_Proveedor = pr.Nit \r
            WHERE ieb.Nivel_Minimo_Re_Orden> dcb.Cantidad_Existencias""", nativeQuery = true)
    Collection<ProductoInfo> findProductosConBodegaYProveedor();
}