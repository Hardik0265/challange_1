# Challenge 1

## Getting started

### Ruby version

Install the ruby version specified in the Gemfile.  It is recommended to use a ruby version manager
so you can switch version when needed.

    brew install rbenv ruby-build rbenv-default-gems rbenv-gemset

To install ruby 2.7.2

    rbenv install 2.7.2

### System dependencies

#### PostgreSql

To install PostgreSql

    brew install postgresql

### Database creation

To create your development database run:

    rails db:create ENV=development

### Database initialization

To migrate your development database run:

    rails db:migrate ENV=development
