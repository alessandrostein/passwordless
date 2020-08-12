# Passwordless

This project is a small experiment to test Passwordless and understand if is possible Passwordless and Devise working together.

## Requirements

- [Ruby](https://www.ruby-lang.org/en/documentation/installation/) - v2.6.3
- [Ruby on Rails](http://guides.rubyonrails.org/getting_started.html) - Rails v6.0.3
- [PostgreSQL](https://www.postgresql.org/download/) - 10 +
- [Yarn](https://yarnpkg.com/en/docs/install) - Yarn v1.21.1

## Setup

Follow these steps to set up Passwordless in your local environment:

First clone this repository to your project directory:

```sh
git clone git@github.com:alessandrostein/passwordless.git
```

Install all dependencies

```sh
bundle install
yarn install
```

Next, create database

```sh
rails db:create
```

Then, run the migrations

```sh
rails db:migrate
```

Finally, run the server

```sh
rails server
```

## Passwordless and Devise together?

Yes, it's possible. This repository has two releases, take a look at:

### [v1](https://github.com/alessandrostein/passwordless/tree/v1)

Using two models, one model for Devise (User) and another for Passwordless (Donor). Keep the controllers isolated for each one.

### [v2](https://github.com/alessandrostein/passwordless/tree/v1)

Using the same model User, keep your controller isolated for each one and when you create a new Donor (user without password), you must skip the password validation.