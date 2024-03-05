* The GoRoutines is a way to launch multiple functions at concurrently where the concurrency != parallelism.
* As the parallel programs uses more threads or CPU's. Where the concurrency is like using the single CPU back and forth by two processes.
* The syntax for goRoutine is `go functionName()`. So when we run this code:
```
for i:=0; i<=10; i++{
    go dbCall()
}
```
* The code will execute without waiting for each and every call. It will finish the execution without the results. Where the jobs are running in background. This peice of code will run concurrently the tasks of 10 dbCall() functions.
* So to retrieve the results we will use the waitgroup comes in and we need to import them along fmt as sync.
* The syntax is 
```
var wg = sync.WaitGroup{}

func main(){
    for i:=0; i<10; i++{
        wg.Add(1)
        go dbCall()
    }
    wg.Wait()
}
func dbCall(){
    //SomeCode
    wg.Done()
}
```
* In this peice of code the wait will hold the program till all the jobs which are spawned background to be finished so that the program exits.
* So when we try to store the results of the concurrent calls of the function there is a problem of writing in a same memory location. So we need to use the Mutex which is same as inside the sync package.
* So it uses the `Lock(), Unloack()` to pause the other routines till the write is done. The example is:
```
var wg = sync.WaitGroup{}
var mut = sync.Mutex{}
func main(){
    for i:=0; i<10; i++{
        wg.Add(1)
        go dbCall()
    }
    wg.Wait()
}
func dbCall(){
    //SomeCode
    mut.Lock()
    resultSet.append(a)
    mut.Unlock()
    wg.Done()
}
```
* The placement of lock is very important as if we put the lock at the begining of a function then there is no use in the goroutines.
* There is other locks like `RLock() RUnLock()` which is used to read purpose only. That means when there is no involvement in the writing then there can only be read lock.
* When a process is compute intensive the more amount of cores is good for the conccurrency.
### Channels
* The channels are the message passers of the goroutine in the program.
* It will hold data like the int, string, etc. It is thread safe as we read and write from memory.
* We can listen for the data when the writing and reading happen so that we can block until something happens.