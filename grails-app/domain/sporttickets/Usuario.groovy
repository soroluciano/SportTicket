package sporttickets

class Usuario {
	
	String nombre
	String apellido
	String mail
	Integer dni
	Integer tipoUsuario
	List<Asistencia> listaAsistencias = new ArrayList<Asistencia>()
	Integer cantidadEventos
	Integer promedio
	Boolean Prioridad
	Date FechaIngreso
	
  static hasMany=[asistencias:Asistencia]
    static constraints = {	
	nombre(blank: false, maxsize:50)
    apellido(blank: false, maxsize:50)
	mail(email:true)
	dni(blank:false,maxsize:8)
	tipoUsuario(blank:false)
	cantidadEventos(blank:false)
	promedio(blank:false,scale:2)
    }
	
	
}
