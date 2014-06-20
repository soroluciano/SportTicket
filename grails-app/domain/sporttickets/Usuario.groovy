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
	idSocio(blank:false, maxsize:50,unique:true)	
	nombre(blank: false, maxsize:50)
    apellido(blank: false, maxsize:50)
	mail(email:true)
	dni(blank:false,maxsize:8)
	tipoUsuario(blank:false)
	cantidadEventos(blank:false)
	promedio(blank:false,scale:2)
    }
	
	
}
