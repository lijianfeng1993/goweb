module LearnGo/practice/goweb

replace (
	golang.org/x/crypto => github.com/golang/crypto v0.0.0-20191002192127-34f69633bfdc
	golang.org/x/net => github.com/golang/net v0.0.0-20191009170851-d66e71096ffb
	golang.org/x/sys => github.com/golang/sys v0.0.0-20191009170203-06d7bd2c5f4f
	golang.org/x/text => github.com/golang/text v0.3.0
)

go 1.12

require github.com/gin-gonic/gin v1.4.0
