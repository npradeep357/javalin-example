# javalin-example
An example implementation of how to use javalin web server framewaork to create a simple, fast and light weight REST service without using custom annotations and reflections.

This example uses javalin 2.7.0 version. More details on Javalin can be found on https://javalin.io.

To make this jar a docker image add the following plugin in the build tag of pom.xml and run build on the machine where docker and docker registry are installed.
You can edit the configuration as you like to talk to other regsiteries.

      <plugin>
				<groupId>com.spotify</groupId>
				<artifactId>dockerfile-maven-plugin</artifactId>
				<version>1.3.6</version>
				<executions>
					<execution>
						<id>default</id>
						<goals>
							<goal>build</goal>
							<goal>push</goal>
						</goals>
					</execution>
				</executions>
				<configuration>
					<repository>localhost:5000/javalin-example</repository>
					<tag>latest</tag>
					<buildArgs>
						<JAR_FILE>${project.build.finalName}-${project.version}-example.jar</JAR_FILE>
					</buildArgs>
				</configuration>
				<dependencies>
					<dependency>
						<groupId>javax.activation</groupId>
						<artifactId>activation</artifactId>
						<version>1.1.1</version>
					</dependency>
				</dependencies>
			</plugin>
      
