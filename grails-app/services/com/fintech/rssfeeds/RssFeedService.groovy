package com.fintech.rssfeeds

import com.sun.syndication.feed.synd.SyndEntry

class RssFeedService {

    static transactional = false


    RssFeed saveFeeds(List<SyndEntry> syndEntries, UrlFeed recievedUrlFeed) {
        RssFeed rssFeed = null
        syndEntries.each { syndEntry ->
            RssFeedCO rssFeedCO = new RssFeedCO(syndEntry, recievedUrlFeed)
            if (rssFeedCO.validate()) {
                rssFeed = new RssFeed(rssFeedCO)
                rssFeed.save(flush: true)
            }

        }
        return rssFeed
    }


    UrlFeed createUrl(UrlFeedCO urlFeedCO) {
        UrlFeed urlFeed = null
        if (urlFeedCO.validate()) {
            urlFeed = new UrlFeed(urlFeedCO)
            urlFeed.save(flush: true)
        }
        return urlFeed
    }

    List<RssFeed> readFeeds(UrlFeedCO urlFeedCO) {
        UrlFeed urlFeed = UrlFeed.findByUrl(urlFeedCO.url)
        List<RssFeed> rssRecords = RssFeed.createCriteria().list() {
            eq('urlFeed', urlFeed)
            order("datePublish", "desc")
        }
        return rssRecords
    }

    Integer delete(UrlFeedCO urlFeedCO) {
        UrlFeed urlFeed = UrlFeed.findByUrl(urlFeedCO.url)
        Integer deletedFeeds = RssFeed.executeUpdate("delete from RssFeed where urlFeed=${urlFeed.id}")
        deletedFeeds = urlFeed.delete()
        return deletedFeeds
    }
}
