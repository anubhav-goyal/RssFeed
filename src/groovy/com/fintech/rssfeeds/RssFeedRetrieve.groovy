package com.fintech.rssfeeds

import com.sun.syndication.feed.synd.SyndEntry
import com.sun.syndication.feed.synd.SyndFeed
import com.sun.syndication.io.SyndFeedInput
import org.xml.sax.InputSource

import java.util.zip.GZIPInputStream


class RssFeedRetrieve {

   static List<SyndEntry> returnFeeds(String url){
        SyndFeed feed = null;
        InputStream is = null;
        List<SyndEntry> syndEntryList
        try {

            URLConnection openConnection = new URL(url).openConnection()
            is = new URL(url).openConnection().getInputStream()

            InputSource source = new InputSource(is)
            SyndFeedInput input = new SyndFeedInput()
            feed = input.build(source)
            syndEntryList = feed.getEntries()

        } catch (Exception e){
            println("Exception occured ${e}")
        } finally {
            if( is != null)	is.close();
        }

        return syndEntryList
    }
}
