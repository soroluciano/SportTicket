package sporttickets

class ComprobanteReserva {

	Integer nrocomprobante
	String descripcion

	static belongsTo =[partido:Partido,usuario:Usuario]
	
    static constraints = {
    nrocomprobante(blank: false, maxsize: 50,unique:true)
	descripcion(blank:false,maxsize:200)
    partido unique:true
	usuario unique:true;
    }
	
}
