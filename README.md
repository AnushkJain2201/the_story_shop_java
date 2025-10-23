# Steps to successfully run this project on a tomcat server:

```1. Clone the project on local machine```

```2. Delete all the files and folders inside the classes folder of WEB-INF```

```3. open the project in terminal```

```4. Navigate to WEB-INF by cd WEB-INF```

```5. Navigate to src folder by cd src```

```
6. Compile all the classes by the following commands:
- a. javac -d ../classes listeners/*
- b. javac -d ../classes controllers/*
- c. javac -d ../classes models/*
- d. javac -d ../classes elfuncs/*
- e. javac -d ../classes utils/*
```

```7. Copy the lb.sql file and paste it in mysql command line client.```

```8. Configure the parameters of web.xml file (esp root and unmsql)```

```9. Copy and paste all the jar files in the lib directory of either the project or the tomcat directory. All the necesary jar files are kept inside the folder named JAR.```

```10. Have a nice surfing around my project world. I am open to suggestions and pull requests :)```
