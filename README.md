# Jungle

This project was built in order to learn Rails, it is a mini e-commerce application built with Rails 4.2 and UI,model and feature testing with RSpec and Capybara. This was a week-long project that would simulate a real world experience where you inherit an existing code base in a language and framework that you are not familiar with. Functionality for certain features were implemented or bugs fixed including:

- Feature: Admin authentication
- Feature: Admin controls (add products and categories)
- Feature: Order products
- Feature: User registration and authentication
- Feature: Check out using Stripe
- Feature: Order confirmations and emails
- Feature: Product Rating

- Bug:  Missing Admin Security
- Bug: Checking out with Empty Cart

# Demo
### When Logged in in as User:
![](https://github.com/asmxali/Jungle/blob/master/Jungle.gif)
### When Logged in as Admin:
![](https://github.com/asmxali/Jungle/blob/master/Jungle2.gif)
## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
