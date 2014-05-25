package sporttickets

class Usuario {
	
	Integer idSocio
	String nombre
	String apellido
	String mail
	Integer dni
	Integer tipoUsuario
	def listaAsistencias = new ArrayList<Asistencia>()
	Integer cantidadEventos
	Integer promedio
	
    static constraints = {
    }
}
