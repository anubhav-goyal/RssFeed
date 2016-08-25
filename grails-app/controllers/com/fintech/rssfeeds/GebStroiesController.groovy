package com.fintech.rssfeeds

class GebStroiesController {

    def index() {
    }

    def storyList() {
        Integer countStory = GebStories.count
        List<GebStories> gebStories = GebStories.createCriteria().list() {
            maxResults(1)
             order("publishDate", "desc")
            firstResult(params.offset ? params.offset as int : 0)
        }
        render(view: "/gebStories/show", model: [countStory: countStory, stories: gebStories])
    }

}
