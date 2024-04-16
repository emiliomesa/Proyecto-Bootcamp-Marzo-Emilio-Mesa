Proceso AlgoritmoMarzo
	Definir PrecioOriginal, Impuesto, CantidadProducto, Resultado1, Resultado2, Resultado3, CostoEnvio, CostoFinal, DescuentoCupon, precioCantidad, precioImpuesto, precioDescuento, peso, preciocantidadPeso Como Real;
	definir destinos, Destino Como Caracter;
	Definir i Como Caracter;
	
	
	Escribir "Ingrese el Precio Original del Producto";
	Leer PrecioOriginal;
	
	Escribir "Ingrese porcentaje Cupon de Descuento";
	Leer DescuentoCupon;
	
	Resultado1<-(PrecioOriginal*DescuentoCupon)/(100);
	precioDescuento<-(PrecioOriginal-Resultado1);
	
	Escribir "Precio Tras Descuento", precioDescuento;
	
	Impuesto<-(precioDescuento*13.75)/(100);
	precioImpuesto<-(precioDescuento+Impuesto);
	Escribir "Precio Iva Aplicado", precioImpuesto;
	
	Escribir "Ingrese la cantidad de productos";
	Leer CantidadProducto;
	
	Escribir "Ingrese el peso de los productos en Kilogramos";
	Leer peso;
	Si CantidadProducto > 1 Entonces
		precioCantidad <-(precioImpuesto - (precioImpuesto * ((5 / 100) * CantidadProducto)));
	SiNo
		precioImpuesto<-precioCantidad;
	FinSi
	Escribir (precioImpuesto + precioCantidad);
	
	
	Dimensionar destinos[4,4];
	
	destinos[1,1] <- "Nueva York";
	destinos[1,2] <- "5000";
	destinos[2,1] <- "Chicago";
	destinos[2,2] <- "3000";
	destinos[3,1] <- "Los Angeles";
	destinos[3,2] <- "4000";
	
	Escribir "Seleccione el destino de envio";
	Para i<-1 Hasta 3 Con Paso 1 Hacer
		Para i <- 1 Hasta 3 Con Paso 1 Hacer
			Escribir i, ". ", destinos[i,1];
		FinPara
	FinPara
	
	

	
	
	
	
FinProceso
