class UrlMappings {

	static mappings = {
		"/items/list" (controller: "Items", parseRequest: true) {
            action = [GET: "listarItems"]
        }
        "/items/view" (controller: "Items", parseRequest: true) {
            action = [GET: "vistaItems"]
        }

		"/"(view:"/index")
		"500"(view:'/error')
	}
}
