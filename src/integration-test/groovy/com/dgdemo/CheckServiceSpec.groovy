package com.dgdemo

import grails.test.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class CheckServiceSpec extends Specification {

    CheckService checkService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Check(...).save(flush: true, failOnError: true)
        //new Check(...).save(flush: true, failOnError: true)
        //Check check = new Check(...).save(flush: true, failOnError: true)
        //new Check(...).save(flush: true, failOnError: true)
        //new Check(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //check.id
    }

    void "test get"() {
        setupData()

        expect:
        checkService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Check> checkList = checkService.list(max: 2, offset: 2)

        then:
        checkList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        checkService.count() == 5
    }

    void "test delete"() {
        Long checkId = setupData()

        expect:
        checkService.count() == 5

        when:
        checkService.delete(checkId)
        sessionFactory.currentSession.flush()

        then:
        checkService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Check check = new Check()
        checkService.save(check)

        then:
        check.id != null
    }
}
