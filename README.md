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
Date: Fri, 11 May 2018 23:25:58 GMT
Server: Apache/2.4.10 (Debian)
X-Powered-By: PHP/5.6.36
Vary: Accept-Encoding
Content-Length: 206
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html>
<html>
    <head>
        <title>Test PHP App</title>
    </head>
    <body>
        <p>
            Congrats this works very fine!<br><HR>Running PHP:5.6.36        </p>
    </body>
</html>
```

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
