# Panacea::Stats

## System Requirements

- Ruby 2.5.0
- Rails 5.2.1
- Postgres
- Yarn

## Dependencies

### Ruby

    bundle install

### Javascript

    yarn install

## Database Management

To setup database you either run:

    bundle exec rails db:setup

or:

    bundle exec rails db:create
    bundle exec rails db:migrate
    bundle exec rails db:seed

### Running migrations

To run migrations use the following command:

    bundle exec rails db:migrate

## Running the application

    bundle exec rails server

## Tests

You should run the tests with the following command:

    bundle exec rake

## Linting

You can lint the code running Rubocop:

    bundle exec rubocop

## Security

This project has included `brakeman` gem, which runs a series of security checks against the whole codebase, if you want
to make sure that your code meets the Brakeman Scanner policies, run:

    bundle exec brakeman

## Adding a new Graph

Currently there exist two types of graphs, the one that maps boolean answers and the one that maps open answers.

All you need to do is identify the type of questions, and update the `StatisticsInformation#initialize` method.

Add the new question key to the list of the `@boolean_charts` or `@open_answer_charts`.

Then, you need to create a method called `#{question_key}_chart_info`, you can take reference of existing methods to know what to do ;)

Next, you need to add the new question key to the permitted parameters on the `API::StatisticsController`.

Finally you need to add a translation on `config/locales/en.yml`, under `dashboard -> index` with the following name format: `#{question_key}_title`.

That's it, you have successfully added a new graph!

