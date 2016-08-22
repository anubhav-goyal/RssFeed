package rssfeed

import java.text.SimpleDateFormat

class FormatingDateTagLib {
    static namespace = "fmtDate"

    def formattingDate = {attr->
    String date = attr.val
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd H:m:s")
            Date newDate = simpleDateFormat.parse(date)
            out << newDate
        }
        catch (Exception ex) {
            println("hello : "+ex)
        }
    }
}
