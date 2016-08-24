package com.fintech.rssfeeds

class GebStoriesService {

    static transactional = false

/*    GebStories save(List<GebStoriesCO> gebStoriesCOList){
        GebStories gebStories
        gebStoriesCOList.each {gebStoriesCO->
            gebStories = new GebStories(gebStoriesCO)
            gebStories.save()
        }
        return gebStories
    }*/
  static  GebStories save(GebStoriesCO gebStoriesCO){
         GebStories  gebStories = new GebStories(gebStoriesCO)
            gebStories.save()
        return gebStories
    }
}
