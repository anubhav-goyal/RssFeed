package com.fintech.rssfeeds

import com.sun.syndication.feed.synd.SyndEntry

class RssFeedController {

    def rssFeedService

    def index(UrlFeedCO urlFeedCO) {
        //String url = "http://timesofindia.indiatimes.com/rssfeedstopstories.cms"
        // String url = "http://feeds.feedburner.com/TechCrunch/startups"
        List<RssFeed> feedList
        if (urlFeedCO.url == null || urlFeedCO.url.equals("all")) {
            feedList = RssFeed.list()
            urlFeedCO = new UrlFeedCO(url: "all")
        } else {
            feedList = rssFeedService.readFeeds(urlFeedCO)
        }
        List<UrlFeed> urlList = UrlFeed.findAll()
        [feeds: feedList, urls: urlList, refreshUrl: urlFeedCO.url]
    }

    def show(RssFeed rssFeedInstance) {
        respond rssFeedInstance
    }

    def create(UrlFeedCO urlFeedCO) {
        UrlFeed urlFeed = rssFeedService.createUrl(urlFeedCO)
        println("url feed ${urlFeed}")
        if (urlFeed)
            saveFeed(urlFeed)
        else
            redirect index()
    }

    def saveFeed(UrlFeed urlFeed) {
        List<SyndEntry> syndEntries = RssFeedRetrieve.returnFeeds(urlFeed.url)
        rssFeedService.saveFeeds(syndEntries, urlFeed)
        redirect index()
    }

    def delete(UrlFeedCO urlFeedCO) {
        rssFeedService.delete(urlFeedCO)
        redirect index()
    }

    def refresh(UrlFeedCO urlFeedCO) {
        if (urlFeedCO.url.equals("all")) {
            List<UrlFeed> urlList = UrlFeed.findAll()
            urlList.each { feedUrl ->
                List<SyndEntry> syndEntries = RssFeedRetrieve.returnFeeds(feedUrl.url)
                rssFeedService.saveFeeds(syndEntries, feedUrl)
            }
        } else {
            UrlFeed urlFeed = UrlFeed.findByUrl(urlFeedCO.url)
            List<SyndEntry> syndEntries = RssFeedRetrieve.returnFeeds(urlFeed.url)
            rssFeedService.saveFeeds(syndEntries, urlFeed)
        }
        redirect action: index()
    }

}
