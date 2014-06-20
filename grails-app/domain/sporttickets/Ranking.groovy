package sporttickets

class Ranking {
	
	def listaUsuarios = new ArrayList<Usuario>()
	def static hasMany = [usuario:Usuario]
	def ListaSectores = new ArrayList<Sector>()
	
    static constraints = {
    }
}
