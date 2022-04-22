# Tea Subscription

Tea Subscription Service serves as the backend functionality of the application.

Ruby 2.7.5  
Rails 5.2.7

Application built by [Jackson Valdez](https://github.com/jacksonvaldez)

# Setup

1. Clone this repository to your machine by running `git clone git@github.com:jacksonvaldez/tea_subscription.git`
2. Change directory into the repository by running `cd tea_subscription`
3. Install dependencies by running `bundle install` (Bundler Required: https://bundler.io/)

# Test Suite
Our tests are ran using an RSpec gem. More information can be found here: https://github.com/rspec/rspec-rails

You can run the tests by running `rspec` from the command line

# Database Schema
![alt text](https://lh3.googleusercontent.com/gjpQbeevqdkn-eFwTdmrFd1znU8s_--RG-MzMUNzLfHA-h1ttqRi7fuP4L1mza2EKZWqnUhEtuemw1ShdwdqCC2BYb70vODyXaz5ng5fClrXm-GIKOIvlwXZo5zUeDX3biZRCpzIGjjAwop6zxbSK8sK0PN1Zxg4wDpCbY12bKMR_79A6LJ4Ygz-8NMkjYMFzyIVJQjaoBRGFkHVXy9Ubg5M60yllnRgskZ0OvOgegQ2Qz7zcYUNxmnghihEesIMwbDIbQnKLJiVZnTkM1fllsb2sASJ7QDWtYnG64xF2TySugNJpSscdodgooCvGW4_cv9rRxL-JLz7Pd23TfazcwPx6SIt_rWURvBn3VYyl5NVTHoz-b-DhOL7Cr8Pm9fQD61fzssI-D9w6PuHn6qifYl7GkN4LGDvdvEGySKJggLBvgkCYhAmmiSxlE9cIDsS9lpLdPwPFqKI91qoClx4fbxuLbZRByXwPsA3H4hEAAjqbH6u2-injnIAgQLpmTRI59W75_28s-QgYBVyEVXb8JfmyRL0eTmn55KoHvY5WnLKbF_nxYg5HgEP3H_iSV_KXInWIwZHqCnLG4Fo4kT5tt1Yol6LNZlZ0I6I7Z-C_fPd_CzN_DvvBhYXyqVQA5nZQNFprYC9qQFP9L7JCte4CTg_jWWnU1uQ36wha-mX8dIE6y7HyhZRHuYaYEOPEk-QVmHUMXama17kkaI7JlgLT0jPCDqVAAdKOEwbaqqdFgSj5vD1ybAqbJf_te_qcm7JlLrrI_fRQB3-akCI33vmob3rzThCHAUr=w1940-h972-no?authuser=0)

# Endpoints
`GET /customers/:customer_id/subscriptions`  
Retrieves all active and cancelled subscriptions for a customer.

`POST /customer_subscriptions`  
Creates an association between a customer and subscription (start a subscription)

Required params:
- customer_id
- subscription_id

`PATCH /customer_subscriptions`  
Updates an association between a customer and subscription (cancel or continue a previous subscription)

Required params:
- customer_id
- subscription_id
