# Concrete Company

The `Management Engine` project is an open source and MIT licensed porgram to create systems for management.

## Summary

* [Technological stack](https://github.com/FullstackLine/ManagementEngine?tab=readme-ov-file#technological-stack)
* [How to use](https://github.com/FullstackLine/ManagementEngine?tab=readme-ov-file#how-to-use)
* [How to contribute](https://github.com/FullstackLine/ManagementEngine?tab=readme-ov-file#how-to-contribute)
* [Semmantic commits](https://github.com/FullstackLine/ManagementEngine?tab=readme-ov-file#semmantic-commits)
* [Semmantic comments](https://github.com/FullstackLine/ManagementEngine?tab=readme-ov-file#semmantic-comments)
* [.env](https://github.com/FullstackLine/ManagementEngine?tab=readme-ov-file#env)
* [Features](https://github.com/FullstackLine/ManagementEngine?tab=readme-ov-file#features)

## Technological stack

- TypeScript with NodeJS
- [NestJS](https://github.com/nestjs/nest) for backend
- [Angular](https://github.com/angular/angular) for frontend
- Postgres and MongoDB for database management
- Docker with `docker-compose` for environment management

## How to use

The project was developed usign Ubuntu as host operating system, and shipped with Docker as environment container. Then you can use the `docker-compose up` or `docker-compose up -d` to start the application in your environment. The file `docker-compose.yaml` contains all the envinroment configuration needed to run the project, and you can extend this file to improve or adapt for you needs.

## How to contribute

To contribute to the project please observe the rules listed below:
- TDD is **mandatory** for backend
- TDD is **mandatory** for frontend
- Semmantic commits is mandatory for any change in project
- Create a pull request

### Semmantic commits

Please follow the [Conventional Commits v1.0.0](https://www.conventionalcommits.org/en/v1.0.0/) syntax.

*Examples of Usage:*

`feat(root): send an email to the customer when a product is shipped`

`feat(server): send an email to the customer when a product is shipped`

`feat(webclient): send an email to the customer when a product is shipped`

### Semmantic comments

Please follow the [Conventional Comments](https://conventionalcomments.org/) syntax in `Issues`, `Code Review`, or whenever possible.

## .env

The required environment varibles are listed in `.env.example` file.

## Features

- **dev**: in development.
- **done**: implemented.
- **unstable**: implementation with **idenfied** bugs or unexpected behaviors.

| FEAT | STATUS |
| ---- | ------ |
| Super Admin Authentication | dev |
| Users Management | dev |