package com

import com.fintech.rssfeeds.GebFeedRetrieve


class StoryJob {
    def gebStoriesService
    static triggers = {
        simple name: "Story Job",
                startDelay: 10000,
                repeatInterval: 1000*60*60l // execute job once in 60 minutes
    }

    def execute() {
        gebStoriesService.saveStories()  //Retrieve Stories and store them
    }
}
