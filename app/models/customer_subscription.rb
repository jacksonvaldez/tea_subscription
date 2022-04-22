class CustomerSubscription < ApplicationRecord
  belongs_to :customer
  belongs_to :subscription
  after_initialize :init

  def init
    self.status ||= 0 # default subscription status of active
  end
end
