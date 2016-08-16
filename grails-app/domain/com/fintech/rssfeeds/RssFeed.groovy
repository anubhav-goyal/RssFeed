package com.fintech.rssfeeds

class RssFeed {

    String title
    String content
    String datePublish
    String link
    String author
    String description
    String uri
    UrlFeed urlFeed
    Date dateUpload

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

    static mapping = {
        description sqlType: "text"
    }

    RssFeed(RssFeedCO rssFeedCO){
        title = rssFeedCO.title
        content = rssFeedCO.content
        datePublish = rssFeedCO.datePublish
        description = rssFeedCO.description
        link = rssFeedCO.link
        author = rssFeedCO.author
        uri = rssFeedCO.uri
        urlFeed = rssFeedCO.urlFeed
        dateUpload = rssFeedCO.dateUpload
    }

}
