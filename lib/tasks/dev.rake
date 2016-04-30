if Rails.env.development? || Rails.env.test?
  require 'factory_girl'

  namespace :dev do
    desc 'Sample data for local development environment'
    task prime: 'db:setup' do
      include FactoryGirl::Syntax::Methods
      User.create!(balance: 0)
    end
  end
end
