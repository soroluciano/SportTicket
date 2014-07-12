package sporttickets


class Partido {
	
	Estadio estadio = new Estadio()
	Date fechaHora = new Date()
	
	static belongsTo =[estadio:Estadio]
	static hasMany =[asistencias:Asistencia]
	
    static constraints = {
	fechaHora(blank:false)
    }
}
