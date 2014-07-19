package Seguridad

import org.apache.commons.lang.builder.HashCodeBuilder

class UsuariosRol implements Serializable {

	private static final long serialVersionUID = 1

	Usuarios usuarios
	Rol rol

	boolean equals(other) {
		if (!(other instanceof UsuariosRol)) {
			return false
		}

		other.usuarios?.id == usuarios?.id &&
			other.rol?.id == rol?.id
	}

	int hashCode() {
		def builder = new HashCodeBuilder()
		if (usuarios) builder.append(usuarios.id)
		if (rol) builder.append(rol.id)
		builder.toHashCode()
	}

	static UsuariosRol get(long usuariosId, long rolId) {
		UsuariosRol.where {
			usuarios == Usuarios.load(usuariosId) &&
			rol == Rol.load(rolId)
		}.get()
	}

	static UsuariosRol create(Usuarios usuarios, Rol rol, boolean flush = false) {
		new UsuariosRol(usuarios: usuarios, rol: rol).save(flush: flush, insert: true)
	}

	static boolean remove(Usuarios u, Rol r, boolean flush = false) {

		int rowCount = UsuariosRol.where {
			usuarios == Usuarios.load(u.id) &&
			rol == Rol.load(r.id)
		}.deleteAll()

		rowCount > 0
	}

	static void removeAll(Usuarios u) {
		UsuariosRol.where {
			usuarios == Usuarios.load(u.id)
		}.deleteAll()
	}

	static void removeAll(Rol r) {
		UsuariosRol.where {
			rol == Rol.load(r.id)
		}.deleteAll()
	}

	static mapping = {
		id composite: ['rol', 'usuarios']
		version false
	}
}
