package com.fintech.rssfeeds

class RssFeed {

    String title
    String description
    Date datePublish
    String link
    UrlFeed urlFeed
  //  Date dateUpload

    static constraints = {
        link unique: true, validator: {val->
            def recordFeed = RssFeed.findByLink(val)
            if(recordFeed){
                return "Sorry"
            }

        }
    }

    static mapping = {
        description sqlType: "text"
    }

    RssFeed(RssFeedCO rssFeedCO){
        title = rssFeedCO.title
        description = rssFeedCO.getDescription()
        datePublish = rssFeedCO.datePublish
        link = rssFeedCO.link
        urlFeed = rssFeedCO.urlFeed
    }

}
