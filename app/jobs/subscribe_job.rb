class SubscribeJob < ApplicationJob
  queue_as :default

  def perform(params)
    subscription = Subscription.create(description: params["turma"]["nome"])
    puts "Subscription #{subscription.id} created!"
  end
end
