package sporttickets


class Partido {
	
	Estadio estadio = new Estadio()
	Date fechaHora = new Date()
	
	static belongsTo =[estadio:Estadio]
	
    static constraints = {
	fechaHora(blank:false)
    }
}
