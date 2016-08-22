package com.fintech.rssfeeds

import com.sun.syndication.feed.synd.SyndEntry

class RssFeedController {

    def rssFeedService

    def index() {
    }

    def create(UrlFeedCO urlFeedCO) {
        UrlFeed urlFeed = rssFeedService.createUrl(urlFeedCO)
        if (urlFeed){
            flash.message ="URL has been added in Record"
            saveFeed(urlFeed)
        }
        else{
            flash.message = "Sorry Record Not Entered"
        }
    }

    def saveFeed(UrlFeed urlFeed) {
        List<SyndEntry> syndEntries = RssFeedRetrieve.returnFeeds(urlFeed.url)
        rssFeedService.saveFeeds(syndEntries, urlFeed)
        flash.message = "Feeds are Stored"
        render view: "create"
        //redirect(action: "index", params: [url: urlFeed.url])
    }

    def delete(UrlFeedCO urlFeedCO) {
        rssFeedService.delete(urlFeedCO)
        redirect(action: "index")
    }

    def refresh(UrlFeedCO urlFeedCO) {
        if (urlFeedCO.url==null || urlFeedCO.url.equals("")) {
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
        if (urlFeedCO.url == null || urlFeedCO.url.equals("")){
            feedList()
        }
        else {
            selectedUrlFeed(urlFeedCO)
        }
    }

    def feedList(){
        List<RssFeed> feedList = RssFeed.createCriteria().list() {
            maxResults(3)
            order("datePublish", "desc")
            firstResult(params.offset?params.offset as int:0)
        }
        Integer countFeeds = RssFeed.count
        render (view: "show",model: [countFeed: countFeeds,feeds: feedList])
    }

    def selectedUrlFeed(UrlFeedCO urlFeedCO){
        UrlFeed urlFeed = UrlFeed.findByUrl(urlFeedCO.url)
        List<RssFeed> feedList = RssFeed.createCriteria().list() {
            eq('urlFeed', urlFeed)
            maxResults(5)
            order("datePublish", "desc")
            firstResult(params.offset?params.offset as int:0)
        }
        Integer countFeeds = RssFeed.countByUrlFeed(urlFeed)
        render (view: "show",model: [countFeed: countFeeds,feeds: feedList,url: urlFeedCO.url])
    }

}
