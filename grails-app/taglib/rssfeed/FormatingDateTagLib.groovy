package rssfeed

import java.text.SimpleDateFormat

class FormatingDateTagLib {
    static namespace = "fmtDate"

    def formattingDate = {attr->
    String date = attr.val
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd H:m:s")
            Date parsedDate = simpleDateFormat.parse(date)
            out << parsedDate
        }
        catch (Exception ex) {
            println("Exception : ${ex}")
        }
    }
}
