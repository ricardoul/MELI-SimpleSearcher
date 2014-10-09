package customview

import groovyx.net.http.HTTPBuilder
import groovyx.net.http.ContentType
import groovyx.net.http.Method
import groovyx.net.http.RESTClient

class ItemsService {

    def buscarItems(query,sort,pagenumber){
    def api=new RESTClient("https://api.mercadolibre.com") 
        //def html = api.get(path : '/search', query : [q:'Groovy'])

        def pagenumberint= pagenumber?pagenumber as int: 0;
        def resp=api.get(path : '/sites/MLU/search', query : [q:query, limit: 10,offset: pagenumberint*10])

        def items=resp.getData()
       items.results.each{ item ->
            item.nombre_vendedor = (buscarvendedor(item.seller.id)).nickname
            item.busqueda=query
        }
        

        items.sigpage=items.paging.total>(pagenumberint*10)
        items.pagenumber=pagenumberint
       items.paginastotal=Math.round((items.paging.total)/10)


        if(sort)
        {
        items.results.sort { it.price }
        }

        return items
    }

    def buscarvendedor(query){
        def apiNombreSeller=new RESTClient("https://api.mercadolibre.com") 
        def lapath="/users/"+query
        def respNombreSeller=apiNombreSeller.get(path : lapath)
        return respNombreSeller.getData()

    }

    def buscardescripcion(query){
        def apiDescripcion=new RESTClient("https://api.mercadolibre.com") 
        def lapath="/items/"+query+"/description"
        def respDescripcion=apiDescripcion.get(path : lapath)
        return respDescripcion.getData()

    }
      def buscarinfoarticulos(query,busqueda){
        def apiItems=new RESTClient("https://api.mercadolibre.com") 
        def lapath="/items/"+query
        def respItems=apiItems.get(path : lapath)
       def items= respItems.getData()
         items.descripcion_posta = (buscardescripcion(items.id)).text
         items.busqueda=busqueda
         return items
        }

    

}
