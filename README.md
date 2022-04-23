# Tea Subscription

Tea Subscription Service serves as the backend functionality of the application.

Ruby 2.7.5  
Rails 5.2.7

# Credits
- [Jackson Valdez](https://github.com/jacksonvaldez)
- Built with [Rails](https://rubyonrails.org/)

# Setup

1. Clone this repository to your machine by running `git clone git@github.com:jacksonvaldez/tea_subscription.git`
2. Change directory into the repository by running `cd tea_subscription`
3. Install dependencies by running `bundle install` (Bundler Required: https://bundler.io/)

# Test Suite
Our tests are ran using an RSpec gem. More information can be found here: https://github.com/rspec/rspec-rails

You can run the tests by running `rspec` from the command line

# Database Schema
![Imgur](https://i.imgur.com/TSoTo7G.png)

# Endpoints
You can also find a clear documentation of the endpoints using our actively maintained [postman collection](https://go.postman.co/workspace/tea_subscription~af922e87-9567-4da5-b732-7f592bab4fba/collection/19393847-10d9651a-9d12-46a0-9a42-8a6b555d74a0?action=share&creator=19393847)
### 1. Retrieve all active and cancelled subscriptions for a customer.  
`GET /customers/:customer_id/subscriptions`  
No params neccesary


### 2. Start a brand new subscription for a customer.  
`POST /customer_subscriptions`  

HTTP Params:
| Param | Acceptable Values | Data Type   | Required |
| ----------- | ----------- | ----------- | ----------- |
| customer_id | Any positive integer | Integer | yes |
| subscription_id | Any positive integer | Integer | yes |


### 3. Update a subscription for a customer (Cancel or continue a previous subscription).  
`PATCH /customer_subscriptions`  

HTTP Params:
| Param | Acceptable Values | Data Type   | Required |
| ----------- | ----------- | ----------- | ----------- |
| customer_id | Any positive integer | Integer | yes |
| subscription_id | Any positive integer | Integer | yes |
| status | 0, 1 | Integer | yes |
