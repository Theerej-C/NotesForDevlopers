- Consider a single server system where it need to handle data and request from the client. Where the protocol used is HTTP and the format used is JSON.
- The pages are HTML pages which is returned to client side. Then we can modify this to two server system where one is for the database and another one is for request handling.
- In database selection we can use two kinds:
    - A Normal Relational Database
    - NoSQL Database
- In relational database we can do like linking of tables, arrangement in rows and columns structure, etc. It is about the relationship between the data we are storing.
- In NoSQL databases the main concept is different from relational database. There are 4 types of NoSQL databases. Maximum option is CouchDB, Neo4j, etc.
- There are some advantages for the NoSQL Databases like there are no relation between data. Then we just need to serialize and deserialize JSON for the transfer of information.
- If you want to scale the system there are two ways like:
    - Vertical Scaling: Increasing power of the existing system
    - Horizontal Scaling: Adding More Systems.
- As vertical scaling relies on single system so failure rate is high. So Horizontal scaling is the desirable one for the large scale application. So for horizontal scaling and adding of more nodes we need load balancers.

### Load Balancer and Database Replication:

- A load balancer evenly distributes the incoming traffic among the web servers that are defined in the load balancer set.
- A private IP is used inside the server cluster from the load balancer so that the IP remain private.
- So when we plan for load balancing we are concentrating on web tier and for data we need to stop failovers and redundancy.
- In database replication there will be master slave relationship where the main is in master and copy will be in slaves.
- Master support write operation and the slaves only support read operations. So when a slave dies traffic is redirected to other slave and if a master is died then a slave will be temporary master.

### Caching and CDN:

- Cache is a instant memory area which stores the result of expensive data or frequently used data in memory so that subsequent request will be quick.
- When a user visits a website a CDN server close to it will deliver static content and if that is not there it will fetch that static content from web. The URL or the actual resource itself provided by the CDN.
### Stateful and Stateless architecture:
- A stateful server remembers client data from one request to the next. The issue is that every request from the same client must be routed to the same server. This can be done with sticky session but this will add on overhead.
- In stateless architecture there is no state maintained and also the request can be sent to any web servers. which fetch state from the shared data store. The data is stored in shared data stores and kept outside of webservers.
### Data Centers and Message Queues:
- Data centers are the split of the database into different data centers where the rate of failures are minimized. There are perks in the database centers.
- Traffic redirection is one of the perks where we can redirect the traffic as we wanted to any centers. Data Synchronization is another advantage where users from different regions can sync their database or cache.
- A message queue is a durable component stored in a memory that supports asynchronous communication. The architecture is so simple where there will be a producer and a consumer where producer will produce a message and consumer will consume it.
- The producer can sent the message to the queue when consumer is not available also and consumer can use the message when producer is not available also. This is a biggest advantage.
### Logging metrics, automation:
- The logging is like taking all the errors which is appearing in your application and storing that for future use. Then the metrics is collecting different types of metrics which will helps the owner in different manner like information about the traffic can be a useful information.
- And also when system gets bigger we can incorporate automation to do task quickly like continuous integration and continuous deployment. 
## Database Scaling:
- There are two broad approaches for database scalling:
	- Vertical Scaling 
	- Horizontal Scaling 
- In vertical scaling is kind of adding up where we will increase the power by adding more computing, DB, etc. There are many drawbacks also like single point of failure, overall cost will go high.
- Horizontal scaling also known as sharding is addition of more servers with the existing one. This will separate the large database into smaller more easily managed parts called shards. Each shard is same schema but the data are unique.
- When we try to access the database the step is like first the hash function will taken in the user id then the hash function will spit out a integer which will specify the number of the shard.
- The important thing to note is the sharding key where here it is user id. We need to chose apt one for the DB. We need to chose the key which evenly distribute the data.
- But there will be problems arise when sharding is involved like resharding data due to no space in a shard, celebrity problem when many data intense things are in same shard, Then Join and de-normalization where the join operation is harder when database are in different shards.