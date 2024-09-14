CREATE TABLE `Categoria` (
  `id_categoria` int PRIMARY KEY AUTO_INCREMENT,
  `nombre_categoria` varchar(255)
);

CREATE TABLE `Producto` (
  `id_producto` int PRIMARY KEY AUTO_INCREMENT,
  `nombre` varchar(255),
  `descripcion` text,
  `precio` decimal(10,2),
  `cantidad_stock` int,
  `fecha_vencimiento` date,
  `id_categoria` int
);

CREATE TABLE `Cliente` (
  `id_cliente` int PRIMARY KEY AUTO_INCREMENT,
  `nombre` varchar(255),
  `apellido` varchar(255),
  `telefono` varchar(20),
  `direccion` text,
  `email` varchar(255)
);

CREATE TABLE `Empleado` (
  `id_empleado` int PRIMARY KEY AUTO_INCREMENT,
  `nombre` varchar(255),
  `apellido` varchar(255),
  `cargo` varchar(255),
  `telefono` varchar(20),
  `email` varchar(255)
);

CREATE TABLE `Venta` (
  `id_venta` int PRIMARY KEY AUTO_INCREMENT,
  `fecha` date,
  `total` decimal(10,2),
  `id_cliente` int,
  `id_empleado` int
);

CREATE TABLE `DetalleVenta` (
  `id_detalle` int PRIMARY KEY AUTO_INCREMENT,
  `id_venta` int,
  `id_producto` int,
  `cantidad` int,
  `precio_unitario` decimal(10,2),
  `subtotal` decimal(10,2)
);

ALTER TABLE `Producto` ADD FOREIGN KEY (`id_categoria`) REFERENCES `Categoria` (`id_categoria`);

ALTER TABLE `Venta` ADD FOREIGN KEY (`id_cliente`) REFERENCES `Cliente` (`id_cliente`);

ALTER TABLE `Venta` ADD FOREIGN KEY (`id_empleado`) REFERENCES `Empleado` (`id_empleado`);

ALTER TABLE `DetalleVenta` ADD FOREIGN KEY (`id_venta`) REFERENCES `Venta` (`id_venta`);

ALTER TABLE `DetalleVenta` ADD FOREIGN KEY (`id_producto`) REFERENCES `Producto` (`id_producto`);

ALTER TABLE `Producto` ADD FOREIGN KEY (`descripcion`) REFERENCES `Producto` (`precio`);
