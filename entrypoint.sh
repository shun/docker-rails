chown -R rails:rails /pjms
su rails
bundle exec unicorn -p 3000 -c /app/config/unicorn.rb
