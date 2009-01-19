package com.danilat.gbills

class ItemController {
	def billService
    
    def delete = {
        def item = Item.get( params.id )
        def bill = Bill.get(params.bill)
        if(item) {
            item.delete()
            billService.populateBill(bill).save()
            flash.message = "item.deleted"
            flash.args = [params.id]
            flash.defaultMessage = "Item ${params.id} deleted"
        }
        else {
            flash.message = "item.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "Item not found with id ${params.id}"
        }
        redirect(controller:'bill',action:'edit',id:bill.id)
    }

    def updateDescription = {
        def item = Item.get( params.id )
        if(item) {
            item.description = params.description
            if(!item.hasErrors() && item.save()) {
                flash.message = "item.updated"
                flash.args = [params.id]
                flash.defaultMessage = "Item ${params.id} updated"
                redirect(action:show,id:item.id)
            }
            else {
                render(view:'edit',model:[item:item])
            }
        }
        else {
            flash.message = "item.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "Item not found with id ${params.id}"
            redirect(action:edit,id:params.id)
        }
    }
    
    def updatePrice = {
        def item = Item.get( params.id )
        if(item) {
            item.price = params.price
            if(!item.hasErrors() && item.save()) {
                flash.message = "item.updated"
                flash.args = [params.id]
                flash.defaultMessage = "Item ${params.id} updated"
                redirect(action:show,id:item.id)
            }
            else {
                render(view:'edit',model:[item:item])
            }
        }
        else {
            flash.message = "item.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "Item not found with id ${params.id}"
            redirect(action:edit,id:params.id)
        }
    }

    def save = {
        def item = new Item(params)
        def bill = item.bill
        if(!item.hasErrors() && item.save()) {
            flash.message = "item.created"
            flash.args = ["${item.id}"]
            flash.defaultMessage = "Item ${item.id} created"
        }
        billService.populateBill(bill).save()
        redirect(controller:'bill',action:'edit',id:bill.id)
    }
}