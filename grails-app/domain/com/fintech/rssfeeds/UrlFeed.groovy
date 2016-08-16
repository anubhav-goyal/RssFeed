package com.fintech.rssfeeds

class UrlFeed {

    String url

    static hasMany = [rssfeeds: RssFeed]
    static constraints = {
        url blank: false, unique: true
    }

    UrlFeed(UrlFeedCO urlFeedCO){
        url = urlFeedCO.url
    }
}
