# School Donations api
Users can donate to the school via the API

## Technologies
* Ruby 3.2.2
* Rails 7.0.8
* TestSuite Rspec
* Faker
* PostgreSQL
* Devise (For Authentication)

## Development Setup
1. Clone the project repo
        $ git clone https://github.com/safi-96/school-donations.git

2. Get into the project directory
        cd school-donations

3. Install gems and their dependencies
        $ bundle install

4. Run this command to create and populate DB
        $ rails db:create db:migrate db:seed

## For starting the development server
        $ bundle exec rails s

* Development server by default start on the port 3000

## For running Test cases
Run following command to run the test cases
    $ rails rspec
