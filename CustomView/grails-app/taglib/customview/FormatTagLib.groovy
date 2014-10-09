package customview

class FormatTagLib {
	 
   def emoticon = { attrs, body ->
   	  
            
       out << body() << (attrs.happy == 'true' ? " :-)" : attrs.happy)
    }

    }
