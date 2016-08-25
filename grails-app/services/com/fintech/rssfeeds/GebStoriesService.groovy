package com.fintech.rssfeeds

import geb.Browser
import geb.navigator.Navigator

import java.text.SimpleDateFormat

class GebStoriesService {

    static transactional = false

    void saveStories() {
        Browser.drive() {
            1.upto(5) { pageNo ->
                String url = "https://yourstory.com/ys-stories/page/${pageNo}/"
                go(url)
                def obj = $("a.block")
                0.upto(obj.size() - 1) { i ->
                    try {
                        Navigator navigator = $("a.block", i)
                        navigator.click()
                        Thread.sleep(1000)
                        String title = $("h3.ys_post_title.title.color-ys").text()
                        String author = $("a.postInfo.color-ys").text()
                        String stringDate = $("p.postInfo.color-grey.mt-5.fr").text()
                        String content = js."(\$(document.getElementsByClassName('ys_post_content text'))).html()" as String
                        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd MMMM yyyy")
                        stringDate = stringDate.substring(1).trim()
                        Date date = simpleDateFormat.parse(stringDate)
                        GebStories gebStories = new GebStories(title: title, author: author, publishDate: date, description: content)
                        gebStories.save()
                        go(url)
                    }
                    catch (Exception ex) {
                        println("Exception : ${ex}")
                    }
                }

            }
        }
    }

}
