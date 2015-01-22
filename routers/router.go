package routers

import (
	"budget-planner-go/controllers"
	"github.com/astaxie/beego"
)

func init() {

	// Page rout
	beego.Router("/", &controllers.MainController{})
	beego.Router("/home", &controllers.MainController{})
	beego.Router("/notice", &controllers.MainController{}, "get:Notice")

	//beego.Router("/settings", &controllers.MainController{}, "get,post:Settings")

	// User routes
	beego.Router("/user/login/:back", &controllers.UserController{}, "get,post:Login")
	beego.Router("/user/logout", &controllers.UserController{}, "get:Logout")
	beego.Router("/user/register", &controllers.UserController{}, "get,post:Register")
	beego.Router("/user/profile", &controllers.UserController{}, "get,post:Profile")
	beego.Router("/user/verify/:uuid({[0-9A-F]{8}-[0-9A-F]{4}-4[0-9A-F]{3}-[89AB][0-9A-F]{3}-[0-9A-F]{12}})", &controllers.UserController{}, "get:Verify")
	beego.Router("/user/remove", &controllers.UserController{}, "get,post:Remove")

}
