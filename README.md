# dh

A helper to make you life easier with Docker.

## Install

The shortest way:

```
curl -sSL https://raw.githubusercontent.com/sullof/dh/master/install.sh | sudo sh
```

If you don't like it, here is the longest:

```
git clone https://github.com/sullof/dh.git
cd dh
chmod +x install.sh
sudo ./install.sh
```

## Usage

### Open a shell

This uses [nsenter](https://github.com/jpetazzo/nsenter). Read this [great essay by jpetazzo](https://jpetazzo.github.io/2014/06/23/docker-ssh-considered-evil/) to understand why you should not use ssh with containers.

```
dh [container_pid]
```

For example, if your `docker ps` gives:

```
CONTAINER ID  IMAGE               COMMAND               ...  NAMES
d43e5e3bdff9  static:latest       "node server.js"      ...  web
fb78738c2dcd  nginx-proxy:latest  "/app/docker-entrypo  ...  proxy
```

you could a access the `web` container with:

```
dh d43e5e3bdff9
```

or 

```
dh web
```

## History

July 12th, 2014 - I wrote dh 0.1 only w/ support for the _open a shell_ command.

January 30th, 2016 - I created this repo to make easier to install dh on new servers.

## Credits

dh is mantained by Francesco Sullo (<sullof@gmail.com>)

## License 

[MIT](https://opensource.org/licenses/MIT)


