package sporttickets

class Sector {

	String nombre
	Integer capacidad
	Integer precio
	String descripcion
	
    static constraints = {
	nombre(blank:false,maxsize:50)
	capacidad(range:20000..70000)
	precio(blank:false,scale:2)
	descripcion(maxsize:200)
    }
}
