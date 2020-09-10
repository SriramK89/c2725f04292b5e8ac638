namespace :send_email do
  desc "TODO"
  task reminder: :environment do
    User.includes(:favorites).each do |user|
    end
  end

end
