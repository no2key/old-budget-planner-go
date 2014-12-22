package models

import (
	"github.com/astaxie/beego/orm"
	"time"
)

type AuthUser struct {
	Id       int `orm:"pk"`
	First    string
	Last     string
	Email    string `orm:"unique"`
	Password string
	Reg_key  string
	Reg_date time.Time `orm:"auto_now_add;type(datetime)"`
}

type Account struct {
	Id       int    `orm:"pk"`
	Name     string `orm:"unique"`
	Number   string `orm:"unique"`
	Type     string
	Format   string
	Created  time.Time `orm:"auto_now_add;type(datetime)"`
	Modified time.Time `orm:"auto_now;type(datetime)"`
}

type Payments struct {
	Id         int      `orm:"pk"`
	Account    *Account `orm:"rel(fk)"`
	Name       string
	Type       string
	Amount     float32
	Start      time.Time `orm:"type(datetime)"`
	End        time.Time `orm:"type(datetime)"`
	Recurrence string
	Created    time.Time `orm:"auto_now_add;type(datetime)"`
	Modified   time.Time `orm:"auto_now;type(datetime)"`
}

func init() {
	orm.RegisterModel(new(AuthUser))
}
