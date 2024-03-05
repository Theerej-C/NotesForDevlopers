* Go is a very good programming language in the field of the DEvOPS.
* It is a statically typed language and use the type safety. The language is a com-piled one so the compile time is vey less.
* The Go language has a build in concurrency so that we can have a parallel processing at ease.
* There are many packages and modules in the GO so that we can leverage the power for anything like webdevelopment, etc.
* To decalre an module in the go use the command `go mod init NAME`. This creates a go.mod file which has the module name and the go version. It also have the other module names when we install them.
* Every go file in the project must follow an package and the special package named main which is the entry point of the go project.
* There must be an main function in the go project which is the entry point and the keyword is the `func` for the function.
* The fmt package is the package where we have the console functions like printing and etc.
* The example main function is :
```
package main

import "fmt"

func main() {
	fmt.Println("Hello")
}
```
* To compile the program we use the `go build main.go` which builds a executable file. We can run the compiled file just by executing it.
* The alternate is the `go run main.go` which is the single command which run the go program.

### Variable and Constants:
* To declare an variable use the syntax `var VARNAME VARTYPE`. Where there are many var types.
* We have the int, int16, int32, int64. These integers are the sized integers where we can have the predefined size mentioned.
* The uint is the unsigned int where we can only have the +ve.
* The float32 and float64 are the two float types. The float32 is less precise where the float64 is more precise. 
* We cannot operate two different data types like the float and the int. If we want to then we can type cast like `float64(NAMEOFINTVAR)`.
* The string is a variable which can be declared using the double quotes \" or the back quotes \`. \" is for the single line and the \` is for the multi line.
* To find a length of string if we use the build in len() function it will return the length of the bytes so we need to use the utf8.RuneCountInString() function from another library.
* When we declare a variable and not assigning a value then the defaut value is printed when we use it.
* If we don't use the type then the variable type is automatically infered from the declaration.
* We can drop the var keyword also with the shorthand `myVar:=90`. The colon is infered as the var.
* We can declare multiple vars like the python `var1,var2:=1,3`
* We can declare a constant with the constant key work instead of the var keyword.


