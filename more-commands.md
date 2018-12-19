# Course commands

## 3. Copying in Source

Build an image with a tag (store image under tagname):  
`docker build -t testing .`

List files in image tagged testing:  
`docker run --rm testing ls -alR`

## 3. Publishing to the Runtime Optimized Image

If an entrypoint has been specified, the above command will not work. Use the following to open a bash inside the container:  
`docker run --rm -it --entrypoint=bash testing`

or this to override the entrypoint and specify a command:  
`docker run --rm -it --entrypoint=bash testing -c "ls -alR"`

NGINX image (Angular) shell:
`docker exec -i -t angular-container sh`

Run the image with  
`docker run --rm -it -p 8080:80 testing`

Clear up some space:  
`docker image prune`

### Note: Registry: reset registry, clear volume

From [Implementing a Self-hosted Docker Registry](https://app.pluralsight.com/library/courses/implementing-self-hosted-docker-registry/table-of-contents)

> recreate.sh

Remove containers, columes (named and anonymous, not external) & orphan containers:  
```
docker-compose down --volumes --remove-orphans
docker-compose build --pull # separate so we can explicitly pull before building
docker-compose up -d
docker-compose logs -f learing-jenkins
```

## Building an Image on Every Commit

You have to install TeamCity.VSTest.TestAdapter package to grab tests output.  
https://stackoverflow.com/a/52236646/54159

## Run image from my-registry

From another computer (other than dev-pc above)! 

`docker run --rm -it -p 8080:80 my-registry:55000/gen:ci-14`  
=> runs now on localhost:8080

To run another version on the same machine (but different port):  
`docker run --rm -it -p 8090:80 my-registry:55000/gen:ci-14`  
=> runs now on localhost:8090

## Links

- [Run Angular in a Docker Container using Multi-Stage builds](https://malcoded.com/posts/angular-docker)
- [Your Angular apps as Docker containers](https://medium.com/@DenysVuika/your-angular-apps-as-docker-containers-471f570a7f2)