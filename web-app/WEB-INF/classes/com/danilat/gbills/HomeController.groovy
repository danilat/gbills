package com.danilat.gbills
class HomeController {
	static authorizations = [index: Role.ALL_ROLES]
    def index = { render("hola") }
}
