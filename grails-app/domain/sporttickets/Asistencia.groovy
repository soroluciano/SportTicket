package sporttickets

class Asistencia {

	Partido partido = new Partido()
	Boolean asistencia
	
	static belongsTo =[partido:Partido,usuario:Usuario]
    static constraints = {
	asistencia(blank:false)
    }
}
