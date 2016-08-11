package com.fintech.rssfeeds

import grails.validation.Validateable

/**
 * Created by anubhav on 11/8/16.
 */
@Validateable
class RssFeedCO {
    String title
    String content
    String dateUpdated
    String link
    String author
    String description
    String uri

    static constraints = {
        link unique: true, validator: {val->
            def recordFeed = RssFeed.findByLink(val)
            if(recordFeed){
                return "Sorry"
            }

        }
        author nullable: true, blank: true
        uri nullable: true,blank: true
        description nullable: true,blank: true
    }

}
