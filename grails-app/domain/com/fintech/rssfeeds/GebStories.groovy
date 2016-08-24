package com.fintech.rssfeeds

class GebStories {

    String title
    Date publishDate
    String author
    String description

    static constraints = {
        title unique: true
        publishDate nullable: true
        author nullable: true
        description nullable: true
    }

    static mapping = {
        description sqlType: "text"
    }

    GebStories(GebStoriesCO gebStoriesCO) {
        title = gebStoriesCO.title
        publishDate = gebStoriesCO.publishDate
        author = gebStoriesCO.author
        description = gebStoriesCO.description
    }
}
