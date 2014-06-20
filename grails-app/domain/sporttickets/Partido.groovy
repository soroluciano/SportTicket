package sporttickets


class Partido {
	
	def estadio = new Estadio();
	def fechaHora = new Date()
	
	
    static constraints = {
     estadio(blank:false, maxsize:50)
     fechaHora(blank:false)
    }
}
