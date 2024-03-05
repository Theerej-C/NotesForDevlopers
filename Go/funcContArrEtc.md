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
* The map has a build in delete method where we can delete a pair using the key. Like `delete(mapName,keyName)`.
* We can use the for loop to iterate the map where the order is not maintained in the map so different result for different run.  Like: `for name,value:= range myMap{}`. The range keyword is the one to use here.
* Similarly like the map we can iterate through the array using the range like
```
for i,v := range intArr{
    // something
}
```
* Where the i is index and the v value of the array index.
* The main point to note is that there is no direct while loop in go where the `for` is the keyword for while like 
```
for n<10{
    fmt.Println(n)
    n = n+1
}
```
* We can also use the for loop as normal like other languages with three part like 
```
for i:=0; i<10; i++{
    fmt.Println(i)
}
```
### Strings and Runes
* We can index the string just like the array but there is a catch when we print it we get a number \!.
* This is because the UTF-8 encoding the go lang. The UTF-8 encoding will act on the strings in the go.
* The UTF-8 will tells that how many bits does the character uses. For example as per ASCII the a is 97 which uses 8 bytes and where the chinese symbols are using more bytes so it has more bits. So as per UTF-8 the encoding is variable size so for characters like chinese it will use extra bits like 16. So when we try to print the characters using the for loop for the string it will have a representation and the array will have all the bytes. 
* So that to iterate an string we use the rune data type and case it in the rune like: `var myString = []rune("res")`.
* Rune is just an alternate for the int32 where we type cast the string and it will give the correct UTF-8 encoding for the characters in the string.
* We can convert the rune numbers to string using the `string(runnum)` type casting.
* We can use the String Builder in the string package in the go to build the string like 
```
var strBuilder strings.Builder
for i :=range runeString{
    strBuilder.WriteString(runeString[i])
}
var str = strBuilder.String()
```






 