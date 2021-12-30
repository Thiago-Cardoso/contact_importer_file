
<p align="center">
  <a href="https://github.com/Thiago-Cardoso/contact_importer_file">
    <img alt="Current Version" src="https://img.shields.io/badge/version-1.0.0 -blue.svg">
  </a>
  <a href="https://ruby-doc.org/core-2.7.1/">
    <img alt="Ruby Version" src="https://img.shields.io/badge/Ruby-2.7.1 -green.svg" target="_blank">
  </a>
  <a href="https://guides.rubyonrails.org/6_0_release_notes.html">
    <img alt="" src="https://img.shields.io/badge/Rails-~> 6.0.3-blue.svg" target="_blank">
  </a>
</p>

The application will allow users to upload contact files in CSV format and process them in order
to generate a unified contact file. The contacts must be associated with the user who imported
them into the platform. When uploading the files, the application must validate that the fields
entered are correctly formatted. You must take into account that the files can have many
records.

The file contacts001.csv here in the root directory, has some data to test.

## Stack the Project

- **Ruby On Rails**
- **PostgreSQL**
- **Rspec(TDD)**
- **JavaScript**

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

You must have installed on your machine:

- Docker
- Docker Compose

### Installing

First step is to install the docker service:

```bash
#Linux: ubuntu,Mint
$ sudo apt-get update
$ sudo apt-get install docker-ce
$ sudo apt install docker-compose

# Fedora, centos
$ sudo dnf update -y
$ sudo dnf install docker-ce
$ sudo dnf -y install docker-compose
```

For test if the service was installed with succeed, you can run the command for to check de version of docker:

```bash
$ docker --version
#Must be have the docker version: Docker version 18.06.0-ce
$ docker-compose --version
#Must be have the docker-compose version: docker-compose version 1.22.0
```

## First steps

Follow the instructions to have a project present and able to run it locally.
After copying the repository to your machine, go to the project's root site and:

1.  Construct the container

```
docker-compose build
```

2.  Create of Database

```
docker-compose run --rm app bundle exec rails db:create db:migrate
```

3.  Run the project

```
docker-compose up - d
```

## Running the tests

To run the tests, you must run the docker container through the command:

```
docker-compose run --rm app bundle exec rspec

```

## Authors

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore -->
[<img src="https://avatars1.githubusercontent.com/u/1753070?s=460&v=4" width="100px;"/><br /><sub><b>Thiago Cardoso</b></sub>](https://github.com/Thiago-Cardoso)<br />

