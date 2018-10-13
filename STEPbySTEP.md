# Step by Step

https://github.com/0xdead4ead/beast_http_server

* Background info 
    * Me
    * C++ Web Frameworks
    * Crow
    * Beast
* Docker
    * Dockerfile to create our build box
    * Volume to be able to edit on our host machine
    * Building the examples
        * _docker run -ti -v ~/Desktop/beast:/usr/beast -p 8080:80 beastbox:latest bash_
        * _cd beast_http_server_
        * _mkdir build_
        * _cd build_
        * _cmake .._
        * _make_
    * First attempt at running the examples
        * _examples/ex1_server/ex1_server_
        * ctrl-c to exit
    * Fixing the examples
        * Address must be 0.0.0.0
        * Port should be read from an environment variable
        * To rebuild, run make again
        * _export PORT=80_
        * _examples/ex1_server/ex1_server_
    * Exposing a port
    * Creating an Environment variable
* Heroku
    * Containerize it
        * Show running containers 
            * _docker ps_
        * Copy files from host to container
            * _docker cp . <id>:/usr/beastweb_
        * Persist changes to container
            * _docker commit <container id> hello_crow:latest_
    * _heroku login_
        * heroku: Enter your login credentials
        *   Email [rockncoder@gmail.com]:
        * Password: ***********
        * Two-factor code: ******
        * Logged in as rockncoder@gmail.com  
    * _heroku container:login_
        * Login Succeeded
    * _heroku create_
        * Creating app... done, ⬢ floating-headland-31085
        * https://floating-headland-31085.herokuapp.com/ |https://git.heroku.com/floating-headland-31085.git
    * _docker build -t hello_beast ._
        * Successfully tagged hello_beast:latest
    * _heroku container:push web -a floating-headland-31085_
        * Your image has been successfully pushed. You can now release it with the 'container:release' command.
    * _heroku container:release web -a floating-headland-31085_
        * Releasing images web to floating-headland-31085... done
    * Launch the app
        * _heroku open -a floating-headland-31085_
    * View our app's logs
        * _heroku logs -a floating-headland-31085_
     





## Random Notes:

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
