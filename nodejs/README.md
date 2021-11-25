1. Create the Node.js app
2. directory create a package.json file that describes your app and its dependencies:

3. With your new package.json file, run npm install. If you are using npm version 5 or later, this will generate a package-lock.json file which will be copied to your Docker image


4. Then, create a server.js file that defines a web app using the Express.js framework:
5. Build Dockerfile
6. Create a .dockerignore file in the same directory as your Dockerfile with following content
7. build docker image  docker build . -t sai/node-web-app
8. Run docker container docker run -p 49160:8080 -d sai/node-web-app 
