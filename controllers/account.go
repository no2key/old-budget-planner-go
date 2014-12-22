package controllers

import (
	"github.com/astaxie/beego"
)

func (this *MainController) AccountGet() {
	this.Data["Website"] = "beego.me"
	this.Data["Email"] = "astaxie@gmail.com"
	this.TplNames = "index.tpl"
}
