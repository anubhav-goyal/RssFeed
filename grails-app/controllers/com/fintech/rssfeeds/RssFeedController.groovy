package com.fintech.rssfeeds


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RssFeedController {
    // static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def rssFeedService

    def index() {
        String url = "http://timesofindia.indiatimes.com/rssfeedstopstories.cms"
        RssFeedRetrieve rssFeedRetrieve = new RssFeedRetrieve()
        def rssMap = rssFeedRetrieve.returnFeeds(url)
        //rssFeedService.save(rssMap)

        render rssMap
    }

    def show(RssFeed rssFeedInstance) {
        respond rssFeedInstance
    }

    def create() {
        respond new RssFeed(params)
    }

}
