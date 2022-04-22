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
### 1. Retrieve all active and cancelled subscriptions for a customer.  
`GET /customers/:customer_id/subscriptions`  


### 2. Start a brand new subscription for a customer.  
`POST /customer_subscriptions`  

Required Params
| Param | Acceptable Values | Data Type   | Required |
| ----------- | ----------- | ----------- | ----------- |
| customer_id | Any positive integer | Integer | yes |
| subscription_id | Any positive integer | Integer | yes |

### 3. Update a subscription for a customer.(Cancel or continue a previous subscription).  
`PATCH /customer_subscriptions`  

Required params:
- customer_id
- subscription_id
