# {{{:PROJECT_NAME:}}}

A clojure console application

## start a REPL
```bash
# start a nrepl listening on port 9090
lein repl
```
You can then use an nrepl editor to work with the project.


## run the application with lein
```bash
# run the application without creating a jar
lein run "bob"
```


## run the tests
```bash
lein test
```


## create an uberjar and run the jar directly
```bash
# create your uberjar
lein uberjar

# run the standalone jar with all dependencies packed
java -jar target/myconsole-0.1.0-SNAPSHOT-standalone.jar "bob"


# now deploy jar as you see fit.

```



