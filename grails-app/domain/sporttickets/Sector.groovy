package sporttickets

class Sector {

	String nombre
	Integer capacidad
	Integer precio
	String descripcion
	static belongsTo = [estadio:Estadio]
	
    static constraints = {
	nombre(blank:false,maxsize:50)
	capacidad(blank:false,maxsize:50)
	precio(blank:false,scale:2)
	descripcion(maxsize:200)
    }
}
