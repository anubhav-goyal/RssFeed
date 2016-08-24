package com.fintech.rssfeeds

import java.text.SimpleDateFormat


class GebStroiesController {
def gebStoriesService
    def index(){
       /* 1.upto(5){pageNo->
            String url ="https://yourstory.com/ys-stories/page/${pageNo}/"
            GebFeedRetrieve.gebFeed(url)
        }*/
        GebFeedRetrieve.gebFeed()
//        List<GebStoriesCO> gebStoriesCOList = GebFeedRetrieve.gebFeed()
//        gebStoriesService.save(gebStoriesCOList)
        redirect( action: "storyList")
    }

    def storyList(){
        Integer countStory = GebStories.count
        List<GebStories> gebStories = GebStories.createCriteria().list() {
            maxResults(1)
            // order("datePublish", "desc")
            firstResult(params.offset?params.offset as int:0)
        }
        render (view: "/gebStories/show",model: [countStory: countStory,stories: gebStories])
    }

}
