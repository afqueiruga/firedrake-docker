# Firedrake-docker

This is the docker build script for a Firedrake docker image.

The command build.sh runs the docker create command to make the image. It'll just be in your docker cache at that point. We need to spit it out or push it to docker.

The firedrake-run.sh script will load the image with the current working directory mounted in a interactive shell.

## TODO
1. Spit out the docker image.
2. Push it to docker, with original authors' permission.
3. Write a yank-from-docker script for people to use.
4. Test shit.

## License

Exactly what firedrake's is. 
