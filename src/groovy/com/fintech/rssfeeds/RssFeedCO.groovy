package com.fintech.rssfeeds

import com.sun.syndication.feed.synd.SyndEntry
import grails.validation.Validateable

@Validateable
class RssFeedCO {
    String title
    String content
    String datePublish
    String link
    String author
    String description
    String uri
    UrlFeed urlFeed

    static constraints = {
        link unique: true, validator: { val ->
            RssFeed recordFeed = RssFeed.findByLink(val)
            if (recordFeed) {
                return "Sorry"
            }

        }
        author nullable: true, blank: true
        uri nullable: true, blank: true
        description nullable: true, blank: true
    }

    RssFeedCO(SyndEntry syndEntry, UrlFeed urlFeed) {
        title = syndEntry.getTitle()
        content = syndEntry.getContents()
        datePublish = syndEntry.getPublishedDate()
        link = syndEntry.getLink()
        author = syndEntry.getAuthor()
        description = syndEntry.getDescription().getValue()
        uri = syndEntry.getUri()
        this.urlFeed = urlFeed
    }

}
