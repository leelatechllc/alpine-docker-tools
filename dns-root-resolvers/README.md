
# 🌐 DNS Root Resolvers

This repository contains the necessary files to build a Docker image that installs Unbound, a validating, recursive, and caching DNS resolver. The setup is designed to quickly deploy a DNS server that resolves queries against the root DNS servers.

 

## 🎉 Features
  

- **Easy Setup**: 🛠️ Build and run a Docker container with Unbound pre-installed in just a few simple steps.

- **Customizable Configuration**: ✏️ Modify the DNS resolver settings by editing the configuration file located in `config-files/unbound.conf`

- **Root Resolver Support**: 🌍 Quickly establishes a DNS server that interacts with the root DNS servers for reliable query resolution.

  

## 🚀 Getting Started

  

To build and run the Docker image, follow these steps:

  

### 📋 Prerequisites

  

- Ensure you have Docker installed on your machine. You can download Docker from [here](https://www.docker.com/get-started).

  

### 🏗️ Build the Docker Image

  

1. Clone this repository to your local machine:

```bash

git clone https://github.com/leelatechllc/alpine-docker-tools.git

cd dns-root-resolvers

```

2. Build the image

```bash
docker buildx build -t dns-root-resolvers:latest .
```

3. Run the container

```bash
docker run -d --name dns-root-resolvers -p53:53/udp dns-root-resolvers:latest
```
  
## 🛡️ Using the container as DNS server

Ensure your container is accessible on port **53/udp** from your network (local and/or internet). 🌐

Since this configuration is standard, it allows traffic coming from everywhere (IPv4 and IPv6), which is why you'll need to customize it as needed. 🔧

## 🎯 Configuration Customization

To adapt the server to your specific requirements, simply edit the `config-files/unbound.conf` file. Here you can adjust parameters such as:

-   **Access Controls**: Define which IP addresses can access the DNS server.
-   **Logging Options**: Change the verbosity level to log more or less information.
-   **Cache Configurations**: Optimize how and when DNS queries are stored.