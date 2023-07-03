Template for running C with docker in a linux system. 
## VSCode plugins
**C/C++** - ms-vscode.cpptools

**CMake Tools** - ms-vscode.cmake-tools

**Dev Containers** - ms-vscode-remote.remote-containers

## Other installs
### Docker
This can be done when opening the Remote Explorer (after installing dev containers) and clicking on install docker. 

In case using an M1 or M2 Apple Silicon computer, make sure to follow specific guides to install it (https://docs.docker.com/desktop/install/mac-install/)

## Get Started

### <em>1. Build the container</em>

```docker build -t linux-cpp-dev .```

### <em>2. Check if the image is present</em>

```docker images```

You should see a repository with the name **linux-cpp-dev**

### <em>3. Run the image</em>

```docker run -it --rm -v `pwd`:/work linux-cpp-dev```

### <em>4. You should see a linux terminal</em>

Type ```ls``` to check the contents of the image, it should be the same as the files in this repo. 

It should be a two-wayed shared mounting, so every change should be synced onto the host machine. 

### <em>5. Attaching the remote explorer</em>

In the left pane of VSCode open up Remote Explorer and click on linux-cpp-dev container's + icon. 

This will open a new VSCode window. 

In the left bottom corner we can see that it is connected to the container.
Open up the projects directory, which is /work

### <em>6. Build the project</em>

Inside the VSCode newly opened window, click on ```Terminal->Run Build Task```

It should fail, as it requires to install the **C/C++** and **CMake Tools** again for that specific container. 

After installing the CMake Tools a prompt should pop up to configure the project. Click Yes, and select your compiler. In this case GCC.

Going back to the main.c file and going ```Terminal->Run Build Task```, it should successfully build and create a /work/build folder.

### <em>7. Debug</em>

All VSCode debugging features should work. In the config file of VSCode, it is selected that the program should break at the beginning of int main(). 




