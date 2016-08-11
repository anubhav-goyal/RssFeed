package com.fintech.rssfeeds

import com.sun.syndication.feed.synd.SyndEntry

class RssFeedController {
    // static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def rssFeedService

    def index() {
        String url = "http://timesofindia.indiatimes.com/rssfeedstopstories.cms"
        RssFeedRetrieve rssFeedRetrieve = new RssFeedRetrieve()
        List<SyndEntry> syndEntries = rssFeedRetrieve.returnFeeds(url)
        rssFeedService.save(syndEntries)
        List<RssFeed> feedList = rssFeedService.read()
        [feeds:feedList]
    }

    def show(RssFeed rssFeedInstance) {
        respond rssFeedInstance
    }

    def create() {
        respond new RssFeed(params)
    }

}
