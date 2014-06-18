package sporttickets

class Usuario {
	
	Integer idSocio
	String nombre
	String apellido
	String mail
	String contrasenia
	Integer dni
	Integer tipoUsuario
	def listaAsistencias = new ArrayList<Asistencia>()
	Integer cantidadEventos
	Integer promedio
	
    static constraints = {
	idSocio(blank:false, maxsize:20,unique:true)	
	nombre(blank: false, maxsize:50)
    apellido(blank: false, maxsize:50)
	mail(email:true)
	contrasenia(blank:false,password:true)
	dni(blank:false,maxsize:8)
	tipoUsuario(blank:false,maxsize:3)
	cantidadEventos(blank:false)
	promedio(blank:false,scale:2)
    }
	
	
}
