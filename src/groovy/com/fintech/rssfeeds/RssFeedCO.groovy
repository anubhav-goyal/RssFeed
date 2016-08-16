package com.fintech.rssfeeds

import com.sun.syndication.feed.synd.SyndEntry
import grails.validation.Validateable

import java.text.SimpleDateFormat

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
    Date dateUpload

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
        dateUpload = changeToDate(datePublish)
    }

    Date changeToDate(String datePublish) {
        try {
            Date date = Date.parse("E MMM dd H:m:s z yyyy", datePublish)
            String stringDate = date.format("yyyy-MM-dd HH:m:s")
            Date actualDate = new SimpleDateFormat("yyyy-MM-dd HH:m:s").parse(stringDate)
            return actualDate
        }
        catch (Exception ex) {
            println(ex)
        }
        return null
    }

}
