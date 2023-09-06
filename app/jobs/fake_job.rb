class FakeJob < ApplicationJob
  queue_as :default

  def perform(user_id)
    user = User.find(user_id)
    # TODO: perform a time consuming task like Clearbit's Enrichment API.
    sleep 2
    puts "Done! Enriched #{user.id} with Clearbit"
  end

end
