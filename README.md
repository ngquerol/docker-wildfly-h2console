# docker-wildfly-h2console

Simple Docker image based on the Wildfly Application Server, with an included h2 console.

Cuurently there is two branches available, respectively matching latest Wildfly 10.x & 8.x stable releases.

Automated builds are available [here](https://hub.docker.com/r/ngquerol/wildfly-h2console/).

# Running

- For example: `docker run -p 8080:8080 -p 9990:9990 ngquerol/wildfly-h2console`

Then go to localhost:8080localhost:9990 to check if everything works. You can
obviously specify a tag or other port mappings.

The default administrator is `admin`, with its password `admin`

# Building

- Clone this repository
- Inside the repository, run `docker build . -t ngquerol/wildfly-h2console`

You can also provide build-time arguments to specify another username and/or
password for the default administrator:

`docker build . -t ngquerol/wildfly-h2console --build-arg admin_username=test --build-arg admin_password=test`
