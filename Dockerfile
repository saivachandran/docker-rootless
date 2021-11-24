# base image of Dockerfile

FROM ubuntu

LABEL maintainer=chandransaiva@gmail.com

RUN  apt update -y && apt upgrade -y

RUN  apt install nginx -y
# expose nginx port

# Add the user UID:1000, GID:1000, home at /app
RUN groupadd -r app -g 1000 && useradd -u 1000 -r -g app -m -d /app -s /sbin/nologin -c "App user" app && \
    chmod 755 /app

# Set the working directory to app home directory
WORKDIR /app

# Specify the user to execute all commands below
USER app

EXPOSE 80

# start nginx default command

CMD ["nginx", "-g", "daemon off;"]	

# end of the file	
