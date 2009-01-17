package com.danilat.gbills

class BillController {
    
    def index = { redirect(action:list,params:params) }

    // the delete, save and update actions only accept POST requests
    def allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def list = {
        if(!params.max) params.max = 10
        [ billInstanceList: Bill.list( params ) ]
    }

    def show = {
        def billInstance = Bill.get( params.id )

        if(!billInstance) {
            flash.message = "bill.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "Bill not found with id ${params.id}"
            redirect(action:list)
        }
        else { return [ billInstance : billInstance ] }
    }

    def delete = {
        def billInstance = Bill.get( params.id )
        if(billInstance) {
            billInstance.delete()
            flash.message = "bill.deleted"
            flash.args = [params.id]
            flash.defaultMessage = "Bill ${params.id} deleted"
            redirect(action:list)
        }
        else {
            flash.message = "bill.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "Bill not found with id ${params.id}"
            redirect(action:list)
        }
    }

    def edit = {
        def billInstance = Bill.get( params.id )

        if(!billInstance) {
            flash.message = "bill.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "Bill not found with id ${params.id}"
            redirect(action:list)
        }
        else {
            return [ billInstance : billInstance ]
        }
    }

    def update = {
        def billInstance = Bill.get( params.id )
        if(billInstance) {
            billInstance.properties = params
            if(!billInstance.hasErrors() && billInstance.save()) {
                flash.message = "bill.updated"
                flash.args = [params.id]
                flash.defaultMessage = "Bill ${params.id} updated"
                redirect(action:show,id:billInstance.id)
            }
            else {
                render(view:'edit',model:[billInstance:billInstance])
            }
        }
        else {
            flash.message = "bill.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "Bill not found with id ${params.id}"
            redirect(action:edit,id:params.id)
        }
    }

    def create = {
        def billInstance = new Bill()
        billInstance.properties = params
        return ['billInstance':billInstance]
    }

    def save = {
        def billInstance = new Bill(params)
        if(!billInstance.hasErrors() && billInstance.save()) {
            flash.message = "bill.created"
            flash.args = ["${billInstance.id}"]
            flash.defaultMessage = "Bill ${billInstance.id} created"
            redirect(action:show,id:billInstance.id)
        }
        else {
            render(view:'create',model:[billInstance:billInstance])
        }
    }
}