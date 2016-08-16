package customs

class ShowTagLib {
    static namespace = "show"

    def description = { attr ->
        String descripData = attr.val
        String returnDescription = null
        if (descripData.contains("<img")) {
            Integer closedImg = descripData.indexOf("/>")
            String imgString =  descripData.substring(0,closedImg+2)
            String desString = descripData.substring(closedImg+2)
            returnDescription = imgString+"<br/>"+desString
        }
        else {
            returnDescription = descripData
        }

        out << returnDescription
    }
}
