package sporttickets

class ComprobanteReserva {

	Integer NroComprobante
	String descripcion
	Usuario usuario
	Sector sector
	
	
    static constraints = {
	descripcion(blank:false,maxsize:200)
    }
	
	
}
