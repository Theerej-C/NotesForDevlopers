* The structs is a structure where we can define a data structure or the type. The syntax for the struct is:
```
type gasEngine struct{
    test int32
    gall int64
}
func main(){
    var meEng gasEngine
}
```
* We can set the values using the struct literal declaration like `myEng gasEngine := gasEngine{test:34, gall:23}` during the declaration. We can ommit the field names in the declaration as it will follow the order. Another syntax is `myEng.test = 40`.
* We can use an another struct inside an another struct like an data type. Where the reference is like \. like `myEng.ownerInfo.name`.
* We can use a anonymous struct like 
```
var myStruct  = struct{
    mp int
    gal int
}{23,56}
```
* But this is not reusable in the other declaration.
* We can have methods which ties to an struct like it can access the fields of the struct like 
```
func (e gasEngine) milesLeft() uint8 {
    return e.test*e.gal
}
func main(){
    myEng gasEngine := gasEngine{test:34, gall:23}
    var milesLeft = myEng.milesLeft()
}
```
* This calls the method in the struct and then it will use the method for the calculation. This is like the class and the method in the java.
### Interfaces
* When we need a blueprint for the struct like generalized we need an thing called interface.
* The syntax is: 
```
type engine interface{
    milesLeft() uint8
}
```
* The thing to note is that the milesLeft() is the method signature of the milesLeft method which can be used anywhere like when a struct has a mehtod of milesLeft we dont need to mention the which type of engine we need (struct) like :
```
func canItMakeIt(e engine, mile uint){
    //something.
}
```
* Where we don't need to connect the interface and the struct explicitly.
### Pointers
* It is a special data type where it stores the memory location of the varible. We use the * syntax in the go lang to mark the pointer.
```
func main(){
    var p *int32
    var i int32
}
```
* The decalaration itself not give a memory address on the pointer where the new keyword will give the pointer a address 
```
var p *int32 = new(int32)
fmt.Println(p)
```
* 

