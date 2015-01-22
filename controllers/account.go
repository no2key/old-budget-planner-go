package controllers

import (
	"github.com/astaxie/beego"
)

type AccountController struct {
	beego.Controller
}

func (this *AccountController) AccountGet() {
	this.Data["Website"] = "beego.me"
	this.Data["Email"] = "astaxie@gmail.com"
	this.TplNames = "index.tpl"
}
