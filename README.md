Rails web application for CNI Timer.

## Dependencies

* Ruby 2.3.1
* Rails 4.2.6
* PostgreSQL 9.4+

## Gems
Run bundle install

## Database Setup
* Add your own `config/database.yml` (Use `config/database.yml.sample` as reference)
* Add a valid postgresql user/password if needed
* Create the database by running `rake db:create`
* Crate the tables by running `rake db:migrate`
* Run seeds by running `rake db:seed`
* Run the server with `rails s`

## Stripe
Feel free to change the keys in secret.yml

## Emails
You can see the emails of environment development in http://localhost:3000/letter_opener

## Running the test suite
Just run `bundle exec rspec` command from root application folder.

## Deployment instructions
Configure development server connection with Heroku
