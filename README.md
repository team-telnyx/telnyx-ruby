# Telnyx Ruby Library

![Build Status](https://github.com/team-telnyx/telnyx-ruby/workflows/Ruby/badge.svg)
[![Coverage Status](https://coveralls.io/repos/github/team-telnyx/telnyx-ruby/badge.svg?branch=master)](https://coveralls.io/github/team-telnyx/telnyx-ruby?branch=master)
[![Join Slack](https://img.shields.io/badge/join-slack-infomational)](https://joinslack.telnyx.com/)

The Telnyx Ruby library provides convenient access to the Telnyx API from
applications written in the Ruby language. It includes a pre-defined set of
classes for API resources that initialize themselves dynamically from API
responses.

The library also provides other features. For example:

* Easy configuration path for fast setup and use.
* Helpers for pagination.
* Tracking of "fresh" values in API resources so that partial updates can be
  executed.
* Built-in mechanisms for the serialization of parameters according to the
  expectations of Telnyx's API.

## Documentation

See the [API docs](https://developers.telnyx.com/docs/api/v2/overview).

## Installation

You don't need this source code unless you want to modify the gem. If you just
want to use the package, just run:

    gem install telnyx

If you want to build the gem from source:

    gem build telnyx.gemspec

### Requirements

* Ruby 3.0.0+

### Bundler

If you are installing via bundler, you should be sure to use the https rubygems
source in your Gemfile, as any gems fetched over http could potentially be
compromised in transit and alter the code of gems fetched securely over https:

``` ruby
source 'https://rubygems.org'

gem 'telnyx'
```

## Usage

The library needs to be configured with your account's secret key which is
available in your [Telnyx Portal][api-keys]. Set `Telnyx.api_key` to its
value:

``` ruby
require "telnyx"
Telnyx.api_key = "YOUR_API_KEY"

# list messaging profiles
Telnyx::MessagingProfile.list()

# retrieve single messaging profile
Telnyx::MessagingProfile.retrieve("123")
```


### Iterating over a resource

API resources are paginated and the library comes with a handful of methods to
ease dealing with them seemlessly.

```ruby
# list messaging profiles
first_page = Telnyx::MessagingProfile.list()

# check whether there are more pages to go through
if first_page.more?
  puts("There are still more pages to go.")
else
  puts("This is the last page.")
end

# get current page's size and number
first_page.page_size
first_page.page_number

# fetch the next and previous pages
second_page = first_page.next_page
first_page = second_page.previous_page

# iterate over the results of a *single page*
second_page.each do |messaging_profile|
  puts(messaging_profile.id)
end

# iterate over *all of the messaging profiles* starting at `first_page`
# similar to `each`, but requests subsequent pages as needed
first_page.auto_paging_each do |messaging_profile|
  puts(messaging_profile.id)
end
```


### Configuring a Client

While a default HTTP client is used by default, it's also possible to have the
library use any client supported by [Faraday][faraday] by initializing a
`Telnyx::TelnyxClient` object and giving it a connection:

``` ruby
conn = Faraday.new
client = Telnyx::TelnyxClient.new(conn)
connection, resp = client.request do
  Telnyx::MessagingProfile.retrieve(
    "123",
  )
end
puts resp.request_id
```

### Configuring Automatic Retries

The library can be configured to automatically retry requests that fail due to
an intermittent network problem:

    Telnyx.max_network_retries = 2

### Configuring Timeouts

Open and read timeouts are configurable:

```ruby
Telnyx.open_timeout = 30 # in seconds
Telnyx.read_timeout = 80
```

Please take care to set conservative read timeouts. Some API requests can take
some time, and a short timeout increases the likelihood of a problem within our
servers.

### Logging

The library can be configured to emit logging that will give you better insight
into what it's doing. The `info` logging level is usually most appropriate for
production use, but `debug` is also available for more verbosity.

There are a few options for enabling it:

1. Set the environment variable `TELNYX_LOG_LEVEL` to the value `debug` or `info`:
   ```
   $ export TELNYX_LOG_LEVEL=info
   ```

2. Set `Telnyx.log_level`:
   ``` ruby
   Telnyx.log_level = Telnyx::LEVEL_INFO
   ```

## Development

The test suite depends on [telnyx-mock], so make sure to fetch and run it from a
background terminal ([telnyx-mock's README][telnyx-mock] also contains
instructions for installing via Homebrew and other methods):

    go get -u github.com/telnyx/telnyx-mock
    telnyx-mock

Run all tests:

    bundle exec rake test

Run a single test suite:

    bundle exec ruby -Ilib/ test/telnyx/util_test.rb

Run a single test:

    bundle exec ruby -Ilib/ test/telnyx/util_test.rb -n /should.convert.names.to.symbols/

Run the linter:

    bundle exec rake rubocop

Run guard:

    bundle exec guard

Update the bundled [telnyx-mock] by editing the version number found in
`.travis.yml`.

### Adding a new resource

To add a new resource:

1. Add the class for the resource under `lib/telnyx/`.
2. Require the new class in `lib/telnyx.rb`.
3. Add the association between `OBJECT_NAME` and class name in the `object_classes` hash in `lib/telnyx/util.rb`.
4. Add tests to validate the behaviour of the new class.

## Acknowledgements

The contributors and maintainers of Telnyx Ruby would like to extend their deep gratitude to the
authors of [Stripe Ruby](https://github.com/stripe/stripe-ruby), upon which
this project is based. Thank you for developing such elegant, usable, extensible code
and for sharing it with the community.

[api-keys]: https://portal.telnyx.com/#/app/auth/v2
[faraday]: https://github.com/lostisland/faraday
[telnyx-mock]: https://github.com/telnyx/telnyx-mock
