Funcion total <- CalcularTotal(precio, cantidad)
    total <- precio * cantidad
FinFuncion

Funcion descuento <- CalcularDescuento(total, porcentaje)
    descuento <- total * (porcentaje / 100)
FinFuncion

Funcion final <- CalcularPrecioFinal(total, descuento)
    final <- total - descuento
FinFuncion

Algoritmo PrecioDescuentoFunciones
    Definir Precio, Cantidad, descuentoPorcentaje, total, descuentoMonto, precioFinal Como Real
    
    Escribir "Ingrese precio individual: "
    Leer Precio
    
    Escribir "Ingrese cantidad a comprar: "
    Leer Cantidad
    
    Escribir "Ingrese porcentaje de descuento: "
    Leer descuentoPorcentaje
    
    total <- CalcularTotal(Precio, Cantidad)
    descuentoMonto <- CalcularDescuento(total, descuentoPorcentaje)
    precioFinal <- CalcularPrecioFinal(total, descuentoMonto)
    
    Escribir "Total antes del descuento: $", total
    Escribir "Descuento aplicado: $", descuentoMonto
    Escribir "Precio final: $", precioFinal
FinAlgoritmo