package com.fintech.rssfeeds

import grails.validation.Validateable

@Validateable
class GebStoriesCO {
    String title
    Date publishDate
    String author
    String description

    static constraints={
        publishDate nullable: true
        author nullable: true
        description nullable: true
    }
}
