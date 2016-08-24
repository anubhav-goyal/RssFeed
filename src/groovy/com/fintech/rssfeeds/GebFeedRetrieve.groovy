package com.fintech.rssfeeds

import geb.Browser
import geb.navigator.Navigator

import java.text.SimpleDateFormat


class GebFeedRetrieve {
    static List<GebStoriesCO> gebFeed() {
        List<GebStoriesCO> gebStoriesCOList = []
        Browser.drive() {
            1.upto(5) { pageNo ->
                String url = "https://yourstory.com/ys-stories/page/${pageNo}/"
                go(url)
                def obj = $("a.block")
                0.upto(obj.size()-1) { i ->
                    Navigator navigator = $("a.block", i)
                    navigator.click()
                    try {
                        Thread.sleep(1000)
                    }
                    catch (Exception ex) {
                    }
                    String title = $("h3.ys_post_title.title.color-ys").text()
                    String author = $("a.postInfo.color-ys").text()
                    String stringDate = $("p.postInfo.color-grey.mt-5.fr").text()
                    String content = $("div.ys_post_content.text").text()
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd MMMM yyyy")
                    stringDate = stringDate.substring(1).trim()
                    Date date = simpleDateFormat.parse(stringDate)
                    GebStoriesCO gebStoriesCO = new GebStoriesCO(title: title, author: author, publishDate: date, description: content)
                    GebStories gs = GebStoriesService.save(gebStoriesCO)
                    gebStoriesCOList.add(gebStoriesCO)
                    println(gs)
                    go(url)
                }

            }
        }
        return gebStoriesCOList
    }
}
