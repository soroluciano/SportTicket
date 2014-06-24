package sporttickets

class Asistencia {

	Partido partido = new Partido()
	Boolean asistencia
	
	static hasMany = [rankings: Ranking]
    static constraints = {
	asistencia(blank:false)
    }
}
