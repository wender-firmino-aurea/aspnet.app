# ASPNET App

This is a Docker image for test. This image include a ASPNet application.


### Prerequisites

* Docker
* Curl
* .Net SDK 2.1.200



### Installing

You will need clone this repository locally and build the image before test it.

```
$ docker build -t dotnet.app .
```

After build you can run the image

```
docker run -p 1234:5000 -d dotnet.app
```

## Running the tests

To test your app, get the port of your app that Docker mapped:

```
$ docker ps

# Example
ID            IMAGE                                COMMAND    ...   PORTS
ecce33b30ebf  dotnet.app:latest  npm start  ...   1234->5000
```

Now you can call your app using curl (install if needed via: sudo apt-get install curl):

```
curl -i localhost:1234
```

After execute the curl command you will seee some like this:

```
HTTP/1.1 200 OK
Date: Sat, 12 May 2018 14:51:21 GMT
Server: Kestrel
Transfer-Encoding: chunked

Hello World, from ASP.NET!
```

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
