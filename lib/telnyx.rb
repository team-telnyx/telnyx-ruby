# frozen_string_literal: true

# Telnyx Ruby bindings
# API spec at https://developers.telnyx.com
require "cgi"
require "faraday"
require "json"
require "logger"
require "openssl"
require "rbconfig"
require "securerandom"
require "set"
require "socket"
require "uri"

# Version
require "telnyx/version"

# API operations
require "telnyx/api_operations/create"
require "telnyx/api_operations/delete"
require "telnyx/api_operations/list"
require "telnyx/api_operations/nested_resource"
require "telnyx/api_operations/request"
require "telnyx/api_operations/save"
require "telnyx/api_operations/param_wrapper"

# API resource support classes
require "telnyx/errors"
require "telnyx/util"
require "telnyx/telnyx_client"
require "telnyx/telnyx_object"
require "telnyx/telnyx_response"
require "telnyx/list_object"
require "telnyx/api_resource"
require "telnyx/singleton_api_resource"
require "telnyx/webhook"

require "telnyx/alphanumeric_sender_id"
require "telnyx/available_phone_number"
require "telnyx/call"
require "telnyx/conferences"
require "telnyx/event"
require "telnyx/message"
require "telnyx/messaging_phone_number"
require "telnyx/messaging_profile"
# require "telnyx/messaging_short_code"
require "telnyx/number_order"
require "telnyx/number_reservation"
require "telnyx/public_key"

module Telnyx
  @app_info = nil

  @api_base = ENV.fetch("TELNYX_API_BASE", "https://api.telnyx.com")

  @log_level = nil
  @logger = nil

  @max_network_retries = 0
  @max_network_retry_delay = 2
  @initial_network_retry_delay = 0.5

  @verify_ssl_certs = true

  @open_timeout = 30
  @read_timeout = 80

  class << self
    attr_accessor :telnyx_account, :api_key, :api_base, :verify_ssl_certs, :api_version, :client_id,
                  :open_timeout, :read_timeout

    attr_reader :max_network_retry_delay, :initial_network_retry_delay
  end

  # Gets the application for a plugin that's identified some. See
  # #set_app_info.
  def self.app_info
    @app_info
  end

  def self.app_info=(info)
    @app_info = info
  end

  # map to the same values as the standard library's logger
  LEVEL_DEBUG = Logger::DEBUG
  LEVEL_ERROR = Logger::ERROR
  LEVEL_INFO = Logger::INFO

  # When set prompts the library to log some extra information to $stdout and
  # $stderr about what it's doing. For example, it'll produce information about
  # requests, responses, and errors that are received. Valid log levels are
  # `debug` and `info`, with `debug` being a little more verbose in places.
  #
  # Use of this configuration is only useful when `.logger` is _not_ set. When
  # it is, the decision what levels to print is entirely deferred to the logger.
  def self.log_level
    @log_level
  end

  def self.log_level=(val)
    # Backwards compatibility for values that we briefly allowed
    if val == "debug"
      val = LEVEL_DEBUG
    elsif val == "info"
      val = LEVEL_INFO
    end

    if !val.nil? && ![LEVEL_DEBUG, LEVEL_ERROR, LEVEL_INFO].include?(val)
      raise ArgumentError, "log_level should only be set to `nil`, `debug` or `info`"
    end
    @log_level = val
  end

  # Sets a logger to which logging output will be sent. The logger should
  # support the same interface as the `Logger` class that's part of Ruby's
  # standard library (hint, anything in `Rails.logger` will likely be
  # suitable).
  #
  # If `.logger` is set, the value of `.log_level` is ignored. The decision on
  # what levels to print is entirely deferred to the logger.
  def self.logger
    @logger
  end

  def self.logger=(val)
    @logger = val
  end

  def self.max_network_retries
    @max_network_retries
  end

  def self.max_network_retries=(val)
    @max_network_retries = val.to_i
  end

  # Sets some basic information about the running application that's sent along
  # with API requests. Useful for plugin authors to identify their plugin when
  # communicating with Telnyx.
  #
  # Takes a name and optional  partner program ID, plugin URL, and version.
  def self.set_app_info(name, partner_id: nil, url: nil, version: nil)
    @app_info = {
      name: name,
      partner_id: partner_id,
      url: url,
      version: version,
    }
  end
end

Telnyx.log_level = ENV["TELNYX_LOG_LEVEL"] unless ENV["TELNYX_LOG_LEVEL"].nil?
