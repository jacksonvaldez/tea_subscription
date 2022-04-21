class SubscriptionSerializer

  def self.index(subscriptions)
    {
      data: subscriptions.map do |subscription|
        {
          id: subscription.id,
          title: subscription.title,
          price: subscription.price,
          frequency: subscription.frequency,
          tea_id: subscription.tea_id
        }
      end
    }
  end
end
