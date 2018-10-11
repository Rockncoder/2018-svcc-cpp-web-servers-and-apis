#Step by Step

https://github.com/0xdead4ead/beast_http_server

##Docker
One of the most painful parts of working with C++ is getting your environment setup. To make this process as painless as possible, I
use Docker. With Docker, I create a container with all of my
favorite I C++ libraries and I can run in on whichever system I am using. .

##Visual Studio Code

##Creating a Docker file

docker build -t beastbox .
docker run -ti beastbox:latest bash

// Validate boost library installation

find /usr -name libboost*.*
exit

// get the current path
pwd
> /Users/troymiles/Desktop/cppweb/cppbox
// create a volume on the in the container
docker run -v /Users/troymiles/Desktop/cppweb:/usr/src/cppweb -ti beastbox:latest bash
touch MY_FILE.txt




docker run -ti beastbox:latest bash
git clone https://github.com/nlohmann/json.git
git clone https://github.com/nlohmann/fifo_map.git
mkdir /usr/include/nlohmann
cp (single_include) n
cp (src)
git clone https://github.com/0xdead4ead/beast_http_server.git
cd beast_http_server
mkdir build
cd build
cmake ..
# This will build the example files
make


docker build -t beastbox .
docker run -ti beastbox:latest bash