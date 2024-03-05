* `func FUNCNAME(){}` is the syntax of the function in the go. We can call a function in anoter func using the invocation.
* If a function returns a value then we need to set a return type like `func main () int`. Then we use the return the keyword in it.
* We can have many return types like (int,int) and use the \, to seperate the return value in the return keyword.
* We can use the %v for the variables in the string as a repalcement like the C.
* The error is an type in the go where we can return a error for an function if something goes wrong. We import the errors package and use the `errors.New()` to create an error.
* The design pattern of the go is that maximum all the functions should return a error type along the other things and as the error will have a `nil` type as the default so that if there is no error there is no return.
* The example function is:
```
package main
import "fmt"

func main() {
  fmt.Println("Try programiz.pro")
  fmt.Println(hello(7))
}
func hello(myint int) int{
    return myint/2
}
func hello1(myint int) (int,int){
    return myint/2,myint/3
}
```
* There are control structure as `if` and the `else if` and the `else` where the paranthesis is not required in the conditions.
* The `else` and the `else if` need to be in the same line of the ending bracket. The && and the || are the `and` and the `or` statement for the conditions.
* The switch is the statment which can be used instead of the if else where the syntax is similar to other languages. The break is inbuild so we don't need to specify in the case statements.
```
switch remainder{
    case 1:
    case 2:
    etc...
}
```
### Arrays:
* It is a fixed type and same length and indexable and the contiguos memory data type which is a linear one.
* The syntax of the array decalaration is the `var intArr [4]int32`. The index is also simple where the [] are the one to represent the index.
* We don't need to have a = in the array decalaration and assigning in a same like like `arr:=[2]int32{1,2}`. The `...` syntax is for the size automatic declaration like `arr:=[...]int32{1,2}` where the size is automatically detected.
* Slice is like the ArrayList in the java where the size is not declared like `var intSlice []int32`. The slight modification in the syntax of the declaration is that `intSlice []int32 := []int32{1,2,3,4}` as the declaration without the = is array.
* It has a build in methods like append `intSlice = append(intSlice,3)`
* The `cap()` is an build in method to find the capacity of the slice where it doubles for the extension where a new array is formed for every new slice.
* The spread operator can be used to append a another slice. Syntax is `intslice = append(intslice,intslice1)`
### Maps:
* Maps are like the maps in the C++ where the declaration can be done using the make keyword. Like `var myMap[string]int32 = make(map[string]int32)` where the type inside the \[] is the key and the another one is the value. 
* We need to be careful where the map return something everytime if the value doesn't exist also like the default values.
* But for this there is a work around where the map will return an boolean with the value where it will indicate the presence of the key. Like `var age, ok = myMap["Adam"]`.



 