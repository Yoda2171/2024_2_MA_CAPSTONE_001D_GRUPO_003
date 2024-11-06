import { MetodoPago } from './metodoPago.interface';

export interface Venta {
  id?: number;
  total: number;
  detalles: DetalleVenta[];
  pagos: Pago[];
}

export interface DetalleVenta {
  id?: number;
  producto: Producto;
  cantidad: number;
  precioUnitario: number;
  subtotal: number;
}

export interface Pago {
  id?: number;
  monto?: number | null;
  metodoPago: MetodoPago;
}

export interface Producto {
  id: number;
  codigoBarras: string;
  nombre: string;
  precioCosto: number;
  precioVenta: number;
  cantidad: number;
}

// Nueva interfaz para la estructura que envías a la API
export interface VentaAPI {
  id?: number;
  total: number;
  detalles: {
    productoId: number;
    cantidad: number;
    precioUnitario: number;
  }[];
  pagos: {
    metodoPagoId: number;
    monto?: number | null;
  }[];
}

export interface Ventaboleta {
  id?: number;
  total: number;
  detalles: DetalleVenta[];
  pagos: {
    metodoPagoId: number;
    monto?: number | null;
  }[];
}