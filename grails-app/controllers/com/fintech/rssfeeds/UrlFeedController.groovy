package com.fintech.rssfeeds


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

class UrlFeedController {


    def index() {
        render (view: "/rssFeed/index")
    }

    def show(UrlFeed urlFeedInstance) {
        respond urlFeedInstance
    }

    def create() {
        render (view: "/rssFeed/create")
    }


    def edit(UrlFeed urlFeedInstance) {
        respond urlFeedInstance
    }

    def delete() {
        List<UrlFeed> urlFeedList = UrlFeed.findAll()
        render (view: "/rssFeed/delete",model: [urls:urlFeedList])
    }

    def urlList(){
        List<UrlFeed> urlFeedList = UrlFeed.createCriteria().list() {
            maxResults(3)
            firstResult(params.offset?params.offset as int:0)
        }
        Integer countUrl = UrlFeed.count
        render (view: "/rssFeed/showUrl",model: [countFeed: countUrl,urlFeeds: urlFeedList])

    }
}
