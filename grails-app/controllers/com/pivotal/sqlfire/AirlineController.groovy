package com.pivotal.sqlfire



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AirlineController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Airline.list(params), model:[airlineInstanceCount: Airline.count()]
    }

    def show(Airline airlineInstance) {
        respond airlineInstance
    }

    def create() {
        respond new Airline(params)
    }

    @Transactional
    def save(Airline airlineInstance) {
        if (airlineInstance == null) {
            notFound()
            return
        }

        if (airlineInstance.hasErrors()) {
            respond airlineInstance.errors, view:'create'
            return
        }

        airlineInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'airline.label', default: 'Airline'), airlineInstance.id])
                redirect airlineInstance
            }
            '*' { respond airlineInstance, [status: CREATED] }
        }
    }

    def edit(Airline airlineInstance) {
        respond airlineInstance
    }

    @Transactional
    def update(Airline airlineInstance) {
        if (airlineInstance == null) {
            notFound()
            return
        }

        if (airlineInstance.hasErrors()) {
            respond airlineInstance.errors, view:'edit'
            return
        }

        airlineInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Airline.label', default: 'Airline'), airlineInstance.id])
                redirect airlineInstance
            }
            '*'{ respond airlineInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Airline airlineInstance) {

        if (airlineInstance == null) {
            notFound()
            return
        }

        airlineInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Airline.label', default: 'Airline'), airlineInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'airline.label', default: 'Airline'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
