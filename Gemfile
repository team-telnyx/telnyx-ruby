# frozen_string_literal: true

source "https://rubygems.org"

gemspec

group :development do
  gem "coveralls_reborn", require: false
  gem "faraday", "~> 2.5.0"
  gem "faraday-multipart"
  gem "faraday-net_http_persistent"
  gem "faraday-retry"
  gem "mocha", "~> 0.13.2"
  gem "rake"
  gem "shoulda-context"
  gem "test-unit"
  gem "timecop"
  gem "webmock"

  # Rubocop changes pretty quickly: new cops get added and old cops change
  # names or go into new namespaces. This is a library and we don't have
  # `Gemfile.lock` checked in, so to prevent good builds from suddenly going
  # bad, pin to a specific version number here. Try to keep this relatively
  # up-to-date, but it's not the end of the world if it's not.
  gem "guard"
  gem "guard-rake"
  gem "guard-rubocop"
  gem "rubocop", "~> 1.60.2"

  # debugging
  # gem 'httplog' # when included logs all http requests
  # gem 'awesome_print'

  # Rack 2.0+ requires Ruby >= 2.2.2 which is problematic for the test suite on
  # older Ruby versions. Check Ruby the version here and put a maximum
  # constraint on Rack if necessary.
  gem "rack", ">= 2.2.8.1"

  platforms :mri do
    # gem "byebug"
    # gem "pry"
    # gem "pry-byebug"
  end
end
