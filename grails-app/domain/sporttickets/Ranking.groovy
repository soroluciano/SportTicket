package sporttickets

class Ranking {
	
    List<Usuario> listaUsuarios = new ArrayList<Usuario>()
	def static belongsTo = [usuario:Usuario,asistencia:Asistencia]
	List<Asistencia> ListaAsistencias = new ArrayList<Asistencia>()
	
	
    static constraints = {
	
    }
}
