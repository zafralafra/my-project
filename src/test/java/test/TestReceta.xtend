package test

import domain.Receta
import domain.Usuario
import org.junit.jupiter.api.BeforeEach
import org.junit.jupiter.api.DisplayName
import org.junit.jupiter.api.Test

import static org.junit.jupiter.api.Assertions.assertTrue

@DisplayName("Dada una receta")
class TestReceta {

	Usuario usuario1

	Receta recetaConColaborador

	@BeforeEach
	def void init() {

		usuario1 = new Usuario
		recetaConColaborador = new Receta => [
			addColaborador(usuario1)
		]
	}

	@Test
	@DisplayName("que tiene Colaboradores")
	def void tieneColaboradores() {
		assertTrue(recetaConColaborador.tieneColaboradores, "debería responder que tiene colaboradores")
	}
}
