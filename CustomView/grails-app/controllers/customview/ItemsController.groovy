package customview

class ItemsController {

    static layout = 'main'

    def itemsService

    def listarItems(){
        def items = itemsService.buscarItems(params.query,params.sort,params.pagenumber)
       
        
        render(view: "/items/list", model: items)
    }
    def vistaItems(){
        def items = itemsService.buscarinfoarticulos(params.query,params.busqueda)
        
        render(view: "/items/vistaitems", model: items)
    }

}
