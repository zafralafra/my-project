package domain

import java.util.List

class Receta {

	List<Usuario> colaboradores = newArrayList

	def tieneColaboradores() {
		!colaboradores.empty
	}

	def addColaborador(Usuario colaborador) {
		colaboradores.add(colaborador)
	}

}
