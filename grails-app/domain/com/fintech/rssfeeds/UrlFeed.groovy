package com.fintech.rssfeeds

class UrlFeed {

    String url

    static hasMany = [rssfeeds: RssFeed]
    Date dateCreated
    static constraints = {
        url blank: false, unique: true
        dateCreated nullable: true
    }

    UrlFeed(UrlFeedCO urlFeedCO){
        url = urlFeedCO.url
    }
}
