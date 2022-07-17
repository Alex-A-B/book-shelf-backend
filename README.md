# Book it - a reading library management app.

Front end - [here](https://github.com/Alex-A-B/book-shelf-frontend)
Back end - [here](https://github.com/Alex-A-B/book-shelf-backend)

The back end is a Rails API back end with rspec testing enabled.

You can run it via:

``` bundle install ```

The back end app will run on localhost:3000 in development mode 

You will need to ensure Postgres is installed within your local set up to run the database.

Once the postgresql service is running you can use rails commands to migrate the database.

``` rails db:migrate db:seed ```