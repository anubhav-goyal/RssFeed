package com.fintech.rssfeeds

import com.sun.syndication.feed.synd.SyndEntry

class RssFeedController {

    def rssFeedService

    def index(UrlFeedCO urlFeedCO) {
        List<RssFeed> feedList
        if (urlFeedCO.url == null || urlFeedCO.url.equals("all")) {
            feedList = RssFeed.list(sort: "dateUpload", order: "desc")
            urlFeedCO = new UrlFeedCO(url: "all")
        } else {
            feedList = rssFeedService.readFeeds(urlFeedCO)
        }
        List<UrlFeed> urlList = UrlFeed.findAll()
        [feeds: feedList, urls: urlList, refreshUrl: urlFeedCO.url]
    }

    def create(UrlFeedCO urlFeedCO) {
        UrlFeed urlFeed = rssFeedService.createUrl(urlFeedCO)
        if (urlFeed)
            saveFeed(urlFeed)
        else
            redirect(action: "index", params: [url: urlFeed.url])
    }

    def saveFeed(UrlFeed urlFeed) {
        List<SyndEntry> syndEntries = RssFeedRetrieve.returnFeeds(urlFeed.url)
        rssFeedService.saveFeeds(syndEntries, urlFeed)
        redirect(action: "index", params: [url: urlFeed.url])
    }

    def delete(UrlFeedCO urlFeedCO) {
        rssFeedService.delete(urlFeedCO)
        redirect(action: "index")
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
        redirect(action: "index", params: [url: urlFeedCO.url])
    }

}
