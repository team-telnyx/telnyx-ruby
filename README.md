# Telnyx Ruby API library

The Telnyx Ruby library provides convenient access to the Telnyx REST API from any Ruby 3.2.0+ application. It ships with comprehensive types & docstrings in Yard, RBS, and RBI – [see below](https://github.com/team-telnyx/telnyx-ruby#Sorbet) for usage with Sorbet. The standard library's `net/http` is used as the HTTP transport, with connection pooling via the `connection_pool` gem.

It is generated with [Stainless](https://www.stainless.com/).

## MCP Server

Use the Telnyx MCP Server to enable AI assistants to interact with this API, allowing them to explore endpoints, make test requests, and use documentation to help integrate this SDK into your application.

[![Add to Cursor](https://cursor.com/deeplink/mcp-install-dark.svg)](https://cursor.com/en-US/install-mcp?name=telnyx-mcp&config=eyJjb21tYW5kIjoibnB4IiwiYXJncyI6WyIteSIsInRlbG55eC1tY3AiXSwiZW52Ijp7IlRFTE5ZWF9BUElfS0VZIjoiTXkgQVBJIEtleSIsIlRFTE5ZWF9QVUJMSUNfS0VZIjoiTXkgUHVibGljIEtleSIsIlRFTE5ZWF9DTElFTlRfSUQiOiJNeSBDbGllbnQgSUQiLCJURUxOWVhfQ0xJRU5UX1NFQ1JFVCI6Ik15IENsaWVudCBTZWNyZXQifX0)
[![Install in VS Code](https://img.shields.io/badge/_-Add_to_VS_Code-blue?style=for-the-badge&logo=data:image/svg%2bxml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGZpbGw9Im5vbmUiIHZpZXdCb3g9IjAgMCA0MCA0MCI+PHBhdGggZmlsbD0iI0VFRSIgZmlsbC1ydWxlPSJldmVub2RkIiBkPSJNMzAuMjM1IDM5Ljg4NGEyLjQ5MSAyLjQ5MSAwIDAgMS0xLjc4MS0uNzNMMTIuNyAyNC43OGwtMy40NiAyLjYyNC0zLjQwNiAyLjU4MmExLjY2NSAxLjY2NSAwIDAgMS0xLjA4Mi4zMzggMS42NjQgMS42NjQgMCAwIDEtMS4wNDYtLjQzMWwtMi4yLTJhMS42NjYgMS42NjYgMCAwIDEgMC0yLjQ2M0w3LjQ1OCAyMCA0LjY3IDE3LjQ1MyAxLjUwNyAxNC41N2ExLjY2NSAxLjY2NSAwIDAgMSAwLTIuNDYzbDIuMi0yYTEuNjY1IDEuNjY1IDAgMCAxIDIuMTMtLjA5N2w2Ljg2MyA1LjIwOUwyOC40NTIuODQ0YTIuNDg4IDIuNDg4IDAgMCAxIDEuODQxLS43MjljLjM1MS4wMDkuNjk5LjA5MSAxLjAxOS4yNDVsOC4yMzYgMy45NjFhMi41IDIuNSAwIDAgMSAxLjQxNSAyLjI1M3YuMDk5LS4wNDVWMzMuMzd2LS4wNDUuMDk1YTIuNTAxIDIuNTAxIDAgMCAxLTEuNDE2IDIuMjU3bC04LjIzNSAzLjk2MWEyLjQ5MiAyLjQ5MiAwIDAgMS0xLjA3Ny4yNDZabS43MTYtMjguOTQ3LTExLjk0OCA5LjA2MiAxMS45NTIgOS4wNjUtLjAwNC0xOC4xMjdaIi8+PC9zdmc+)](https://vscode.stainless.com/mcp/%7B%22name%22%3A%22telnyx-mcp%22%2C%22command%22%3A%22npx%22%2C%22args%22%3A%5B%22-y%22%2C%22telnyx-mcp%22%5D%2C%22env%22%3A%7B%22TELNYX_API_KEY%22%3A%22My%20API%20Key%22%2C%22TELNYX_PUBLIC_KEY%22%3A%22My%20Public%20Key%22%2C%22TELNYX_CLIENT_ID%22%3A%22My%20Client%20ID%22%2C%22TELNYX_CLIENT_SECRET%22%3A%22My%20Client%20Secret%22%7D%7D)

> Note: You may need to set environment variables in your MCP client.

## Documentation

Documentation for releases of this gem can be found [on RubyDoc](https://gemdocs.org/gems/telnyx).

## Installation

To use this gem, install via Bundler by adding the following to your application's `Gemfile`:

<!-- x-release-please-start-version -->

```ruby
gem "telnyx", "~> 5.31.0"
```

<!-- x-release-please-end -->

## Usage

```ruby
require "bundler/setup"
require "telnyx"

telnyx = Telnyx::Client.new(
  api_key: ENV["TELNYX_API_KEY"] # This is the default and can be omitted
)

response = telnyx.calls.dial(
  connection_id: "conn12345",
  from: "+15557654321",
  to: "+15551234567",
  webhook_url: "https://your-webhook.url/events"
)

puts(response.data)
```

### Pagination

List methods in the Telnyx API are paginated.

This library provides auto-paginating iterators with each list response, so you do not have to request successive pages manually:

```ruby
page = telnyx.access_ip_address.list(page_number: 1, page_size: 50)

# Fetch single item from page.
access_ip_address = page.data[0]
puts(access_ip_address.id)

# Automatically fetches more pages as needed.
page.auto_paging_each do |access_ip_address|
  puts(access_ip_address.id)
end
```

Alternatively, you can use the `#next_page?` and `#next_page` methods for more granular control working with pages.

```ruby
if page.next_page?
  new_page = page.next_page
  puts(new_page.data[0].id)
end
```

### File uploads

Request parameters that correspond to file uploads can be passed as raw contents, a [`Pathname`](https://rubyapi.org/3.2/o/pathname) instance, [`StringIO`](https://rubyapi.org/3.2/o/stringio), or more.

```ruby
require "pathname"

# Use `Pathname` to send the filename and/or avoid paging a large file into memory:
response = telnyx.ai.audio.transcribe(file: Pathname("/path/to/file"))

# Alternatively, pass file contents or a `StringIO` directly:
response = telnyx.ai.audio.transcribe(file: File.read("/path/to/file"))

# Or, to control the filename and/or content type:
file = Telnyx::FilePart.new(File.read("/path/to/file"), filename: "/path/to/file", content_type: "…")
response = telnyx.ai.audio.transcribe(file: file)

puts(response.text)
```

Note that you can also pass a raw `IO` descriptor, but this disables retries, as the library can't be sure if the descriptor is a file or pipe (which cannot be rewound).

### Handling errors

When the library is unable to connect to the API, or if the API returns a non-success status code (i.e., 4xx or 5xx response), a subclass of `Telnyx::Errors::APIError` will be thrown:

```ruby
begin
  number_order = telnyx.number_orders.create(phone_numbers: [{phone_number: "+15558675309"}])
rescue Telnyx::Errors::APIConnectionError => e
  puts("The server could not be reached")
  puts(e.cause)  # an underlying Exception, likely raised within `net/http`
rescue Telnyx::Errors::RateLimitError => e
  puts("A 429 status code was received; we should back off a bit.")
rescue Telnyx::Errors::APIStatusError => e
  puts("Another non-200-range status code was received")
  puts(e.status)
end
```

Error codes are as follows:

| Cause            | Error Type                 |
| ---------------- | -------------------------- |
| HTTP 400         | `BadRequestError`          |
| HTTP 401         | `AuthenticationError`      |
| HTTP 403         | `PermissionDeniedError`    |
| HTTP 404         | `NotFoundError`            |
| HTTP 409         | `ConflictError`            |
| HTTP 422         | `UnprocessableEntityError` |
| HTTP 429         | `RateLimitError`           |
| HTTP >= 500      | `InternalServerError`      |
| Other HTTP error | `APIStatusError`           |
| Timeout          | `APITimeoutError`          |
| Network error    | `APIConnectionError`       |

### Retries

Certain errors will be automatically retried 2 times by default, with a short exponential backoff.

Connection errors (for example, due to a network connectivity problem), 408 Request Timeout, 409 Conflict, 429 Rate Limit, >=500 Internal errors, and timeouts will all be retried by default.

You can use the `max_retries` option to configure or disable this:

```ruby
# Configure the default for all requests:
telnyx = Telnyx::Client.new(
  max_retries: 0 # default is 2
)

# Or, configure per-request:
telnyx.number_orders.create(
  phone_numbers: [{phone_number: "+15558675309"}],
  request_options: {max_retries: 5}
)
```

### Timeouts

By default, requests will time out after 60 seconds. You can use the timeout option to configure or disable this:

```ruby
# Configure the default for all requests:
telnyx = Telnyx::Client.new(
  timeout: nil # default is 60
)

# Or, configure per-request:
telnyx.number_orders.create(
  phone_numbers: [{phone_number: "+15558675309"}],
  request_options: {timeout: 5}
)
```

On timeout, `Telnyx::Errors::APITimeoutError` is raised.

Note that requests that time out are retried by default.

## Advanced concepts

### BaseModel

All parameter and response objects inherit from `Telnyx::Internal::Type::BaseModel`, which provides several conveniences, including:

1. All fields, including unknown ones, are accessible with `obj[:prop]` syntax, and can be destructured with `obj => {prop: prop}` or pattern-matching syntax.

2. Structural equivalence for equality; if two API calls return the same values, comparing the responses with == will return true.

3. Both instances and the classes themselves can be pretty-printed.

4. Helpers such as `#to_h`, `#deep_to_h`, `#to_json`, and `#to_yaml`.

### Making custom or undocumented requests

#### Undocumented properties

You can send undocumented parameters to any endpoint, and read undocumented response properties, like so:

Note: the `extra_` parameters of the same name overrides the documented parameters.

```ruby
number_order =
  telnyx.number_orders.create(
    phone_numbers: [{phone_number: "+15558675309"}],
    request_options: {
      extra_query: {my_query_parameter: value},
      extra_body: {my_body_parameter: value},
      extra_headers: {"my-header": value}
    }
  )

puts(number_order[:my_undocumented_property])
```

#### Undocumented request params

If you want to explicitly send an extra param, you can do so with the `extra_query`, `extra_body`, and `extra_headers` under the `request_options:` parameter when making a request, as seen in the examples above.

#### Undocumented endpoints

To make requests to undocumented endpoints while retaining the benefit of auth, retries, and so on, you can make requests using `client.request`, like so:

```ruby
response = client.request(
  method: :post,
  path: '/undocumented/endpoint',
  query: {"dog": "woof"},
  headers: {"useful-header": "interesting-value"},
  body: {"hello": "world"}
)
```

### Concurrency & connection pooling

The `Telnyx::Client` instances are threadsafe, but are only are fork-safe when there are no in-flight HTTP requests.

Each instance of `Telnyx::Client` has its own HTTP connection pool with a default size of 99. As such, we recommend instantiating the client once per application in most settings.

When all available connections from the pool are checked out, requests wait for a new connection to become available, with queue time counting towards the request timeout.

Unless otherwise specified, other classes in the SDK do not have locks protecting their underlying data structure.

## Sorbet

This library provides comprehensive [RBI](https://sorbet.org/docs/rbi) definitions, and has no dependency on sorbet-runtime.

You can provide typesafe request parameters like so:

```ruby
telnyx.calls.dial(
  connection_id: "conn12345",
  from: "+15557654321",
  to: "+15551234567",
  webhook_url: "https://your-webhook.url/events"
)
```

Or, equivalently:

```ruby
# Hashes work, but are not typesafe:
telnyx.calls.dial(
  connection_id: "conn12345",
  from: "+15557654321",
  to: "+15551234567",
  webhook_url: "https://your-webhook.url/events"
)

# You can also splat a full Params class:
params = Telnyx::CallDialParams.new(
  connection_id: "conn12345",
  from: "+15557654321",
  to: "+15551234567",
  webhook_url: "https://your-webhook.url/events"
)
telnyx.calls.dial(**params)
```

### Enums

Since this library does not depend on `sorbet-runtime`, it cannot provide [`T::Enum`](https://sorbet.org/docs/tenum) instances. Instead, we provide "tagged symbols" instead, which is always a primitive at runtime:

```ruby
# :ALL
puts(Telnyx::Legacy::Reporting::UsageReports::NumberLookupCreateParams::AggregationType::ALL)

# Revealed type: `T.all(Telnyx::Legacy::Reporting::UsageReports::NumberLookupCreateParams::AggregationType, Symbol)`
T.reveal_type(Telnyx::Legacy::Reporting::UsageReports::NumberLookupCreateParams::AggregationType::ALL)
```

Enum parameters have a "relaxed" type, so you can either pass in enum constants or their literal value:

```ruby
# Using the enum constants preserves the tagged type information:
telnyx.legacy.reporting.usage_reports.number_lookup.create(
  aggregation_type: Telnyx::Legacy::Reporting::UsageReports::NumberLookupCreateParams::AggregationType::ALL,
  # …
)

# Literal values are also permissible:
telnyx.legacy.reporting.usage_reports.number_lookup.create(
  aggregation_type: :ALL,
  # …
)
```

## Versioning

This package follows [SemVer](https://semver.org/spec/v2.0.0.html) conventions. As the library is in initial development and has a major version of `0`, APIs may change at any time.

This package considers improvements to the (non-runtime) `*.rbi` and `*.rbs` type definitions to be non-breaking changes.

## Requirements

Ruby 3.2.0 or higher.

## Contributing

See [the contributing documentation](https://github.com/team-telnyx/telnyx-ruby/tree/master/CONTRIBUTING.md).
