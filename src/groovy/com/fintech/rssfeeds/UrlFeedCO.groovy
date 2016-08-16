package com.fintech.rssfeeds

import grails.validation.Validateable

@Validateable
class UrlFeedCO {

    String url

    static constraints = {
        url blank: false, validator: {val->
            UrlFeed recordUrl = UrlFeed.findByUrl(val)
            if (recordUrl) {
                return "Sorry"
            }
        }
    }

}
