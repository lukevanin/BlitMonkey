BlitMonkey

2011-01-09
Config has been refactored to parse into a generic config collection. Objects are created by name, properties are fetched by name at creation time.
Eg:
	Where the XML config node might look like this:
		<m:animation id="abuIdleAnimation" type="cell" cells="abuCells">
			...
		</m:animation>
	
	The object can be created like this:
		var animation:IAnimation = objects.getObject("abuIdleAnimation", IAnimation) as IAnimation;
		
The two biggest flaws being:
	1. Class type is required by getObject() and the result needs to be type-cast (which seems redundant)
	2. There is no enforcement of class type to node name which means extra (unnecessary) care is needed to make sure the named node is of the type this factory expects.
	
This can be improved by using a schema. The trick is to use something functional without overkill.
Eg:
	<element:animation type="IAnimation">
		<attribute:id type="string" />
		<attribute:type type="string" />
		<element:frame type="IAnimationFrame">
			<attribute:duration type="string" />
		</element>
	</element>
	
This becomes tricky when defining different rules for the same node name which might have different "types", although simple matching rules could be used:
Eg:
	<element:animation where:type="cell" type="ICellAnimation">
		<attribute:cells type="string" />
		<element:frame type="ICellAnimationFrame">
			<attribute:cell type="int" />
		</element:frame>
	</element:animation>

Although this does seem like re-inventing the wheel in that the structure is defined in the source code and in a schema, which hints at the possibility of code generation from the schema. XSD is built for this exact purpose but seems very top-heavy. A better solution is needed.

	

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