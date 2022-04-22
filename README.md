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
![alt text](https://lh3.googleusercontent.com/u36y_xCvbXE9Qb4wFZBUsQAJSQ_yUZqcVs-pMz6P04deXwAklVYheqLBEYdBZspFoTzIw--8BvNYvstqa4khg8JqhRTudsIOvyvaFHqL4KGGo66dhBTiECGK3E14TSzHsDzHlfHMIY4xuaIBtnpkXnrrL4yRBkYWWi2mbpNzRr-lT2Ph_HU1095LUpdT0dR1IeGJoAm-v7-oAE167Nh0RIFmHN8cLkelSBQAgwUnwYLzmgZgV8cjIVBB9k-JEb7fTsy6Jcq4NIgaIdOW4CPHd2un6IC5qL1-SpJ6j8Occax2Tz0OW2tSt8bYyVzGVGqFhBulUrqeqMXTVynAdnA9ef7LmY0shfPil5UrDU50SVsC7SH_E7YjlVBAJ1FWRUtPwyUPXa70FEGUBVVhK9YKYev2NADqU5GMB7S4rTQ0wmZqPLfCMEIGAXv_GYKpSjKg7N3SlxvdvxQrnftrkOwMcwn5RCXQK4mvWLNW__KjnN33Cx9Gybxn9XnnDWLktbtMzU1Cgkhqu5F9dZmVprhKgXTuO8ERdJQRGQi8TpPVp-30WvGPlSIjBalBwpSacRmDDiLeDUKUuTe7REFs8TLl0lUdi0n_ukwHQKEhPMhOuVy4WGhVoTGTh7VzTehxD8pS7cHDEkCdjD3exzFCUNoRY81dDioqaC9yza5FUs-7XiD53xo4kXa-WBau1gcqt3Sn-MKqqlYHTkQWIirqo35_2Emi5WCOwxvwsfhIjploqA9vzwL_OVtzY9rFqaT25V1apuVR1g-9WEn45K-cpNA-tNu9LXfyZEVI=w1940-h972-no?authuser=0)

# Endpoints
Retrieve all active and cancelled subscriptions for a customer
`GET /customers/:customer_id/subscriptions`  

Start a brand new subscription for a customer.
`POST /customer_subscriptions`  

Required params:
- customer_id
- subscription_id

Update a subscription for a customer.(Cancel or continue a previous subscription)
`PATCH /customer_subscriptions`  

Required params:
- customer_id
- subscription_id
