namespace :user do
  desc "TODO"
  task update_all: :environment do
    users = User.all
    puts "Enqueuing update of #{users.size} users..."
    users.each do |user|
      FakeJob.perform_later(user)
    end
  end

end
