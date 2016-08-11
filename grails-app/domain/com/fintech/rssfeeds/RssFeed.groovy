package com.fintech.rssfeeds

class RssFeed {

    String title
    String content
    Date dateUpdated
    String link
    String author
    String linkId

    static constraints = {
        link unique: true
    }

//    static mapping = {
//        link unique: link
//    }
}
