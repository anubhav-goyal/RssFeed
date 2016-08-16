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

    List<RssFeed> read() {
        List<RssFeed> rssFeed = RssFeed.findAll()
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
        def c = RssFeed.createCriteria()
        def rssRecords = c.list() {
            and {
                eq('urlFeed', urlFeed)
            }
            order("lastUpdated", "desc")
        }
    }

    def delete(UrlFeedCO urlFeedCO) {
        UrlFeed urlFeed = UrlFeed.findByUrl(urlFeedCO.url)
        Integer deletedFeeds = RssFeed.executeUpdate("delete from RssFeed where urlFeed=${urlFeed.id}")
        if (deletedFeeds != 0)
            urlFeed.delete()
    }
}
