package com.fintech.rssfeeds

import com.sun.syndication.feed.synd.SyndEntry

class RssFeedService {
 static transactional = false
    RssFeed save(List<SyndEntry> syndEntries) {
        for (SyndEntry syndEntry : syndEntries) {
            String desc = syndEntry.getDescription().getValue()
            if(desc!=null){
                desc = desc.substring(0,desc.length()>150?150:desc.length())
            }

            RssFeedCO rssFeedCO = new RssFeedCO(title: syndEntry.getTitle(), content: syndEntry.getContents(),
                    dateUpdated: syndEntry.getPublishedDate(), link: syndEntry.getLink(),
                    author: syndEntry.getAuthor(), uri: syndEntry.getUri(),
                    description: desc)
            if(rssFeedCO.validate()){
                RssFeed rssFeed = new RssFeed(rssFeedCO)
                rssFeed.save(flush: true)
            }
            else{
                RssFeed rssFeed =  RssFeed.findByLink(rssFeedCO.link)
                rssFeed.title = rssFeedCO.title
                rssFeed.description = rssFeedCO.description
                rssFeed.dateUpdated = rssFeedCO.dateUpdated
                rssFeed.save()
            }

        }
    }

    List<RssFeed> read(){
        List<RssFeed> rssFeed = RssFeed.findAll()
        return rssFeed
    }
}
