# docker-wildfly-h2console

Simple Docker image based on the Wildfly Application Server, with an included h2 console.

Currently there is two branches available, respectively matching latest Wildfly 10.x & 8.x stable releases.

Automated builds are available [here](https://hub.docker.com/r/ngquerol/wildfly-h2console/).

# Running

For example: 

`docker run -p 8787:8787 -p 8080:8080 -p 9990:9990 ngquerol/wildfly-h2console`

Then go to either `localhost:8080` or `localhost:9990` to check if everything works. You can obviously specify a tag or other port mappings.

The default administrator is `admin`, with the password `admin`. Remote debugging happens on port `8787` by default.

# Building

- Clone this repository
- Switch to the appropriate branch
- Inside the repository, run `docker build . -t ngquerol/wildfly-h2console`

Or simply do, e.g. for Wildfly 10.x:

- `docker build https://github.com/ngquerol/docker-wildfly-h2console.git#wildfly10.x`

You can also provide build-time arguments to specify another username and/or
password for the default administrator:

`docker build . -t ngquerol/wildfly-h2console --build-arg debug_port=12345 --build-arg admin_username=test --build-arg admin_password=test`
