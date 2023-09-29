# README

1. Clone this repository.
2. Run `bin/rails db:migrate` and `bin/rails db:seed`.
3. Run the provided test located at `test/integration/unpaid_order_notification_test.rb` with
   the following command: `bin/rails test test/integration/unpaid_order_notification_test:4`
4. Work through the test failures. In order to do so you'll need to implement a number of items including:
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
