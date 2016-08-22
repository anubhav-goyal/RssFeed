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
        int offSet = params.offset?params.offset as int:0
        List<UrlFeed> urlFeedList = getUrlLists(offSet)
        Integer countUrl = UrlFeed.count
        render (view: "/rssFeed/delete",model: [countUrl: countUrl,urls:urlFeedList])
    }

    def urlList(){
        int offSet = params.offset?params.offset as int:0
        List<UrlFeed> urlFeedList = getUrlLists(offSet)
        Integer countUrl = UrlFeed.count
        render (view: "/rssFeed/showUrl",model: [countUrl: countUrl,urlFeeds: urlFeedList])

    }

   private List<UrlFeed> getUrlLists(int offSet){
        List<UrlFeed> urlFeedList = UrlFeed.createCriteria().list() {
            maxResults(5)
            firstResult(offSet)
        }
        return urlFeedList
    }
}
