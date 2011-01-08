BlitMonkey

2011-01-08
Refactored config to be independet of source format with the intention of allowing different file formats (like CSV, INF) or a database to be used without having to re-write the config models.

Supporting a new config type is quite lengthy:
1. Add QName enum to XmlConfigEnum
2. Create an interface and factory to create the config
3. Create a model to store the config
4. Create an interface, factory and provider to create instances
5. Create the necessary models/views/controllers/facades/proxys/etc to implement the type

The intermediate config models in step 2 and 3 could be removed resulting in a simpler implementation, but with the side effect of parsing the (potentially massive and slow) config xml to create objects. Still think the resulting simplicity may pay off though.




2011-01-07
Just starting out, trying to figure out GIT for one thing