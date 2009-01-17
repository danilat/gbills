package com.danilat.gbills

class ClientController {
    
    def index = { redirect(action:list,params:params) }

    // the delete, save and update actions only accept POST requests
    def allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def list = {
        if(!params.max) params.max = 10
        [ clientInstanceList: Client.list( params ) ]
    }

    def show = {
        def clientInstance = Client.get( params.id )

        if(!clientInstance) {
            flash.message = "client.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "Client not found with id ${params.id}"
            redirect(action:list)
        }
        else { return [ clientInstance : clientInstance ] }
    }

    def delete = {
        def clientInstance = Client.get( params.id )
        if(clientInstance) {
            clientInstance.delete()
            flash.message = "client.deleted"
            flash.args = [params.id]
            flash.defaultMessage = "Client ${params.id} deleted"
            redirect(action:list)
        }
        else {
            flash.message = "client.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "Client not found with id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def clientInstance = Client.get( params.id )

        if(!clientInstance) {
            flash.message = "client.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "Client not found with id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ clientInstance : clientInstance ]
        }
    }

    def update = {
        def clientInstance = Client.get( params.id )
        if(clientInstance) {
            clientInstance.properties = params
            if(!clientInstance.hasErrors() && clientInstance.save()) {
                flash.message = "client.updated"
                flash.args = [params.id]
                flash.defaultMessage = "Client ${params.id} updated"
                redirect(action:show,id:clientInstance.id)
            }
            else {
                render(view:'edit',model:[clientInstance:clientInstance])
            }
        }
        else {
            flash.message = "client.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "Client not found with id ${params.id}"
            redirect(action:edit,id:params.id)
        }
    }

    def create = {
        def clientInstance = new Client()
        clientInstance.properties = params
        return ['clientInstance':clientInstance]
    }

    def save = {
        def clientInstance = new Client(params)
        if(!clientInstance.hasErrors() && clientInstance.save()) {
            flash.message = "client.created"
            flash.args = ["${clientInstance.id}"]
            flash.defaultMessage = "Client ${clientInstance.id} created"
            redirect(action:show,id:clientInstance.id)
        }
        else {
            render(view:'create',model:[clientInstance:clientInstance])
        }
    }
}