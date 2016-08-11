package com.fintech.rssfeeds

/**
 * Created by anubhav on 11/8/16.
 */
class RssFeedCO {
    String title
    String content
    Date dateUpdated
    String link
    String author
    String linkId

    static constraints = {
        link unique: true
    }

    RssFeedCO(def rssMap){
        def keyList = rssMap.keySet()
        for(String keys : keyList){
            if (keys.endsWith("].titleEx.value") && keys.startsWith("SyndFeedImpl.entries")){
                println "${keys} values ${rssMap.get(keys)}"
            }
            else if (keys.endsWith("].link") && keys.startsWith("SyndFeedImpl.entries")){
                println "${keys} values ${rssMap.get(keys)}"
            }
            else if (keys.endsWith("].description.value") && keys.startsWith("SyndFeedImpl.entries")){
                println "${keys} values ${rssMap.get(keys)}"
            }
            else if (keys.endsWith("].author") && keys.startsWith("SyndFeedImpl.entries")){
                println "${keys} values ${rssMap.get(keys)}"
            }
            else if (keys.endsWith("].date") && keys.startsWith("SyndFeedImpl.entries")){
                println "${keys} values ${rssMap.get(keys)}"
            }
        }
    }
}
