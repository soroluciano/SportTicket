package sporttickets


class Partido {
	
	def estadio = new Estadio();
	def fechaHora = new Date()
	
	
    static constraints = {
	fechaHora{validator:{it <new Date()}}
    }
}
