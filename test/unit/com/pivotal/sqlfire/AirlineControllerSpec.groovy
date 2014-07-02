package com.pivotal.sqlfire



import grails.test.mixin.*
import spock.lang.*

@TestFor(AirlineController)
@Mock(Airline)
class AirlineControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.airlineInstanceList
            model.airlineInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.airlineInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            def airline = new Airline()
            airline.validate()
            controller.save(airline)

        then:"The create view is rendered again with the correct model"
            model.airlineInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            airline = new Airline(params)

            controller.save(airline)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/airline/show/1'
            controller.flash.message != null
            Airline.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def airline = new Airline(params)
            controller.show(airline)

        then:"A model is populated containing the domain instance"
            model.airlineInstance == airline
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def airline = new Airline(params)
            controller.edit(airline)

        then:"A model is populated containing the domain instance"
            model.airlineInstance == airline
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/airline/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def airline = new Airline()
            airline.validate()
            controller.update(airline)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.airlineInstance == airline

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            airline = new Airline(params).save(flush: true)
            controller.update(airline)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/airline/show/$airline.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/airline/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def airline = new Airline(params).save(flush: true)

        then:"It exists"
            Airline.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(airline)

        then:"The instance is deleted"
            Airline.count() == 0
            response.redirectedUrl == '/airline/index'
            flash.message != null
    }
}
