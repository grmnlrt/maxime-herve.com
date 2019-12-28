namespace :db do
  desc "Dump production database and restore it locally."
  task dump: :environment do
    puts "[1/2] Cleaning database"
    `rails db:drop DISABLE_DATABASE_ENVIRONMENT_CHECK=1`
    puts "[2/2] Dump production database"
    `heroku pg:pull DATABASE_URL maxime-herve_com_development`
    puts "Done."
  end
end
