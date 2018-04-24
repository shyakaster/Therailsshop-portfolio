source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end
gem 'rails', '~> 5.0.1'
group :production do
  gem 'rails_12factor', '~> 0.0.3'
  gem 'pg', '~> 0.20'
end
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'figaro'

group :development, :test do
  # gem 'pg'
    gem 'sqlite3'
    gem 'pry-byebug'
end

group :development do
  gem 'web-console', '>= 3.3.0'
end
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'friendly_id', '~> 5.1.0'
gem 'devise', '~> 4.2', '>= 4.2.1'
gem 'bootstrap', '~> 4.0.0.alpha6'
gem 'petergate', '~> 1.7'
gem 'Therailsshop_view_tool', git: 'https://github.com/shyakaster/Therailsshop_view_tool'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.2'
gem "kaminari", github: 'amatsuda/kaminari'
gem 'jquery-ui-rails', '~> 6.0', '>= 6.0.1'
gem 'carrierwave', '~> 1.1'
gem 'mini_magick', '~> 4.7'
gem 'carrierwave-aws', '~> 1.1'
gem 'dotenv-rails', '~> 2.1', '>= 2.1.2'
gem 'cocoon', '~> 1.2', '>= 1.2.10'
gem 'gritter', '~> 1.2'
gem 'twitter', '~> 6.1'
gem 'redis', '~> 3.3', '>= 3.3.3'
gem 'coderay', '~> 1.1', '>= 1.1.1'
gem 'redcarpet', '~> 3.4'

