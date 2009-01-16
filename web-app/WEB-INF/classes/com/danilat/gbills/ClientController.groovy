package com.danilat.gbills

class ClientController {
	static authorizations = [
	                         index: Role.ALL_ROLES,
	                         show: Role.ALL_ROLES,
	                         edit: Role.ALL_ROLES,
	                         update: Role.ALL_ROLES,
	                         create: Role.ALL_ROLES,
	                         save: Role.ALL_ROLES
	                         ]
	
    // the delete, save and update actions only accept POST requests
    def allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def index = {
        if(!params.max) params.max = 10
        [ clientList: Client.list( params ) ]
    }

    def show = {
        def client = Client.get( params.id )

        if(!client) {
            flash.message = "Client not found with id ${params.id}"
            redirect(action:index)
        }
        else { return [ client : client ] }
    }
	
    def edit = {
        def client = Client.get( params.id )

        if(!client) {
            flash.message = "Client not found with id ${params.id}"
            redirect(action:index)
        }
        else {
            return [ client : client ]
        }
    }

    def update = {
        def client = Client.get( params.id )
        if(client) {
            client.properties = params
            if(!client.hasErrors() && client.save()) {
                flash.message = "Client ${params.id} updated"
                redirect(action:show,id:client.id)
            }
            else {
                render(view:'edit',model:[client:client])
            }
        }
        else {
            flash.message = "Client not found with id ${params.id}"
            redirect(action:edit,id:params.id)
        }
    }

    def create = {
        def client = new Client()
        client.properties = params
        return ['client':client]
    }

    def save = {
        def client = new Client(params)
        if(!client.hasErrors() && client.save()) {
            flash.message = "Client ${client.id} created"
            redirect(action:show,id:client.id)
        }
        else {
            render(view:'create',model:[client:client])
        }
    }
}
