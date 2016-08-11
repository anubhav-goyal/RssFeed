package com.fintech.rssfeeds

import com.sun.syndication.feed.synd.SyndEntry
import com.sun.syndication.feed.synd.SyndFeed
import com.sun.syndication.io.SyndFeedInput
import org.xml.sax.InputSource

import java.util.zip.GZIPInputStream

/**
 * Created by anubhav on 11/8/16.
 */
class RssFeedRetrieve {

    List<SyndEntry> returnFeeds(String url){
        SyndFeed feed = null
        InputStream is = null
        List<SyndEntry> syndEntries
        def rssMap = [:]
        try {

            URLConnection openConnection = new URL(url).openConnection()
            is = new URL(url).openConnection().getInputStream()

            if("gzip".equals(openConnection.getContentEncoding())){
                is = new GZIPInputStream(is)
            }
            InputSource source = new InputSource(is)
            SyndFeedInput input = new SyndFeedInput()
            feed = input.build(source)

            syndEntries = feed.getEntries()

        } catch (Exception e){
            println("Exception occured ${e}")
        } finally {
            if( is != null)	is.close();
        }

        return syndEntries
        //return rssMap
    }
}
