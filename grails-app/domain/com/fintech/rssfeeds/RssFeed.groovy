package com.fintech.rssfeeds

class RssFeed {

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

    RssFeed(RssFeedCO rssFeedCO){
        title = rssFeedCO.title
        content = rssFeedCO.content
        dateUpdated = rssFeedCO.dateUpdated
        description = rssFeedCO.description
        link = rssFeedCO.link
        author = rssFeedCO.author
        uri = rssFeedCO.uri
    }

}
