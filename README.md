# README

1. Clone this repository.
2. Change into the repository directory.
3. Run `bundle install`.
4. Run `bin/rails db:migrate` and `bin/rails db:seed`.
5. Open the provided test in your code editor that is located at `test/integration/unpaid_order_notification_test.rb`.
6. Run the test with the following command: `bin/rails test test/integration/unpaid_order_notification_test.rb:4`.
7. Work through the test failures. In order to do so you'll need to implement a number of items including:
    - Routes
    - HTML markup
    - A form that submits to the proper path
    - A controller action that does the following:
        1. Query for all orders with a status of unpaid
        2. Iterate over the array of unpaid orders, and return into a new array
           an instantiated UnpaidOrderNotificationJob for each order. Additionally, set a delay
           for each job that increases for each job.
        3. Enqueue the array of jobs (`enqueue_all`).
        4. Redirect to the index page of unpaid orders with a notice that the customers
           are being notified.
