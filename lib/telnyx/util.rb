# frozen_string_literal: true

require "cgi"

module Telnyx
  module Util
    # Options that a user is allowed to specify.
    OPTS_USER_SPECIFIED = Set[
      :api_key,
    ].freeze

    # Options that should be copyable from one TelnyxObject to another
    # including options that may be internal.
    OPTS_COPYABLE = (
      OPTS_USER_SPECIFIED + Set[:api_base]
    ).freeze

    # Options that should be persisted between API requests. This includes
    # client, which is an object containing an HTTP client to reuse.
    OPTS_PERSISTABLE = (
      OPTS_USER_SPECIFIED + Set[:client]
    ).freeze

    def self.objects_to_ids(h)
      case h
      when APIResource
        h.id
      when Hash
        res = {}
        h.each { |k, v| res[k] = objects_to_ids(v) unless v.nil? }
        res
      when Array
        h.map { |v| objects_to_ids(v) }
      else
        h
      end
    end

    def self.object_classes
      @object_classes ||= {
        # business objects
        Address::OBJECT_NAME                          => Address,
        AlphanumericSenderId::OBJECT_NAME             => AlphanumericSenderId,
        AvailablePhoneNumber::OBJECT_NAME             => AvailablePhoneNumber,
        BillingGroup::OBJECT_NAME                     => BillingGroup,
        Call::OBJECT_NAME                             => Call,
        CallControlApplication::OBJECT_NAME           => CallControlApplication,
        Conferences::OBJECT_NAME                      => Conferences,
        Connection::OBJECT_NAME                       => Connection,
        CredentialConnection::OBJECT_NAME             => CredentialConnection,
        Fax::OBJECT_NAME                              => Fax,
        FaxApplication::OBJECT_NAME                   => FaxApplication,
        FQDN::OBJECT_NAME                             => FQDN,
        FQDNConnection::OBJECT_NAME                   => FQDNConnection,
        IP::OBJECT_NAME                               => IP,
        IPConnection::OBJECT_NAME                     => IPConnection,
        Message::OBJECT_NAME                          => Message,
        MessagingPhoneNumber::OBJECT_NAME             => MessagingPhoneNumber,
        "messaging_settings"                          => MessagingPhoneNumber,
        MessagingProfile::OBJECT_NAME                 => MessagingProfile,
        NumberLookup::OBJECT_NAME                     => NumberLookup,
        NumberOrder::OBJECT_NAME                      => NumberOrder,
        NumberOrderDocument::OBJECT_NAME              => NumberOrderDocument,
        NumberReservation::OBJECT_NAME                => NumberReservation,
        OutboundVoiceProfile::OBJECT_NAME             => OutboundVoiceProfile,
        PhoneNumber::OBJECT_NAME                      => PhoneNumber,
        "phone_number_reservation"                    => NumberReservation,
        PhoneNumberRegulatoryRequirement::OBJECT_NAME => PhoneNumberRegulatoryRequirement,
        "phone_number_regulatory_group"               => PhoneNumberRegulatoryRequirement,
        Portout::OBJECT_NAME                          => Portout,
        VerifyProfile::OBJECT_NAME                    => VerifyProfile,
        PublicKey::OBJECT_NAME                        => PublicKey,
        RegulatoryRequirement::OBJECT_NAME            => RegulatoryRequirement,
        SimCard::OBJECT_NAME                          => SimCard,
        Verification::OBJECT_NAME                     => Verification,
        "verification"                                => Verification::Response,
        WirelessDetailRecordsReport::OBJECT_NAME      => WirelessDetailRecordsReport,
      }
    end

    def self.push_object_class(key, klass)
      object_classes
      @object_classes[key] = klass
    end

    # Converts a hash of fields or an array of hashes into a +TelnyxObject+ or
    # array of +TelnyxObject+s. These new objects will be created as a concrete
    # type as dictated by their `record_type` field (e.g. a `record_type` value of
    # `messaging_profile` would create an instance of +MessagingProfile+), but if `record_type` is not
    # present or of an unknown type, the newly created instance will fall back
    # to being a +TelnyxObject+.
    #
    # ==== Attributes
    #
    # * +Data+ - Hash of fields and values to be converted into a TelnyxObject.
    # * +opts+ - Options for +TelnyxObject+ like an API key that will be reused
    #   on subsequent API calls.
    def self.convert_to_telnyx_object(data, opts = {})
      case data
      when Array
        data.map { |i| convert_to_telnyx_object(i, opts) }
      when Hash
        # Try converting to a known object class. If none available, fall back to generic TelnyxObject
        if data[:data].is_a?(Array)
          ListObject.construct_from(data, opts)
        elsif data[:data].is_a?(Hash) && data[:data][:record_type]
          object_classes.fetch(data[:data][:record_type], TelnyxObject).construct_from(data[:data], opts)
        elsif data[:record_type]
          object_classes.fetch(data[:record_type], TelnyxObject).construct_from(data, opts)
        else
          TelnyxObject.construct_from(data, opts)
        end
      else
        data
      end
    end

    def self.log_error(message, data = {})
      if !Telnyx.logger.nil? ||
         !Telnyx.log_level.nil? && Telnyx.log_level <= Telnyx::LEVEL_ERROR
        log_internal(message, data, color: :cyan,
                                    level: Telnyx::LEVEL_ERROR, logger: Telnyx.logger, out: $stderr)
      end
    end

    def self.log_info(message, data = {})
      if !Telnyx.logger.nil? ||
         !Telnyx.log_level.nil? && Telnyx.log_level <= Telnyx::LEVEL_INFO
        log_internal(message, data, color: :cyan,
                                    level: Telnyx::LEVEL_INFO, logger: Telnyx.logger, out: $stdout)
      end
    end

    def self.log_debug(message, data = {})
      if !Telnyx.logger.nil? ||
         !Telnyx.log_level.nil? && Telnyx.log_level <= Telnyx::LEVEL_DEBUG
        log_internal(message, data, color: :blue,
                                    level: Telnyx::LEVEL_DEBUG, logger: Telnyx.logger, out: $stdout)
      end
    end

    def self.symbolize_names(object)
      case object
      when Hash
        new_hash = {}
        object.each do |key, value|
          key = (begin
                   key.to_sym
                 rescue StandardError
                   key
                 end) || key
          new_hash[key] = symbolize_names(value)
        end
        new_hash
      when Array
        object.map { |value| symbolize_names(value) }
      else
        object
      end
    end

    # Encodes a hash of parameters in a way that's suitable for use as query
    # parameters in a URI or as form parameters in a request body. This mainly
    # involves escaping special characters from parameter keys and values (e.g.
    # `&`).
    def self.encode_parameters(params)
      Util.flatten_params(params)
          .map { |k, v| "#{url_encode(k)}=#{url_encode(v)}" }.join("&")
    end

    # Encodes a string in a way that makes it suitable for use in a set of
    # query parameters in a URI or in a set of form parameters in a request
    # body.
    def self.url_encode(key)
      CGI.escape(key.to_s).
        # Don't use strict form encoding by changing the square bracket control
        # characters back to their literals. This is fine by the server, and
        # makes these parameter strings easier to read.
        gsub("%5B", "[").gsub("%5D", "]")
    end

    def self.flatten_params(params, parent_key = nil)
      result = []

      # do not sort the final output because arrays (and arrays of hashes
      # especially) can be order sensitive, but do sort incoming parameters
      params.each do |key, value|
        calculated_key = parent_key ? "#{parent_key}[#{key}]" : key.to_s
        if value.is_a?(Hash)
          result += flatten_params(value, calculated_key)
        elsif value.is_a?(Array)
          result += flatten_params_array(value, calculated_key)
        else
          result << [calculated_key, value]
        end
      end

      result
    end

    def self.flatten_params_array(value, calculated_key)
      result = []
      value.each_with_index do |elem, i|
        if elem.is_a?(Hash)
          result += flatten_params(elem, "#{calculated_key}[#{i}]")
        elsif elem.is_a?(Array)
          result += flatten_params_array(elem, calculated_key)
        else
          result << ["#{calculated_key}[#{i}]", elem]
        end
      end
      result
    end

    def self.normalize_id(id)
      if id.is_a?(Hash) # overloaded id
        params_hash = id.dup
        id = params_hash.delete(:id)
      else
        params_hash = {}
      end
      [id, params_hash]
    end

    # The secondary opts argument can either be a string or hash
    # Turn this value into an api_key and a set of headers
    def self.normalize_opts(opts)
      case opts
      when String
        { api_key: opts }
      when Hash
        check_api_key!(opts.fetch(:api_key)) if opts.key?(:api_key)
        opts.clone
      else
        raise TypeError, "normalize_opts expects a string or a hash"
      end
    end

    def self.check_string_argument!(key)
      raise TypeError, "argument must be a string" unless key.is_a?(String)
      key
    end

    def self.check_api_key!(key)
      raise TypeError, "api_key must be a string" unless key.is_a?(String)
      key
    end

    # Normalizes header keys so that they're all lower case and each
    # hyphen-delimited section starts with a single capitalized letter. For
    # example, `request-id` becomes `Request-Id`. This is useful for extracting
    # certain key values when the user could have set them with a variety of
    # diffent naming schemes.
    def self.normalize_headers(headers)
      headers.each_with_object({}) do |(k, v), new_headers|
        k = k.to_s.tr("_", "-") if k.is_a?(Symbol)
        k = k.split("-").reject(&:empty?).map(&:capitalize).join("-")

        new_headers[k] = v
      end
    end

    # Constant time string comparison to prevent timing attacks
    # Code borrowed from ActiveSupport
    def self.secure_compare(a, b)
      return false unless a.bytesize == b.bytesize

      l = a.unpack "C#{a.bytesize}"

      res = 0
      b.each_byte { |byte| res |= byte ^ l.shift }
      res.zero?
    end

    #
    # private
    #

    COLOR_CODES = {
      black:   0, light_black:   60,
      red:     1, light_red:     61,
      green:   2, light_green:   62,
      yellow:  3, light_yellow:  63,
      blue:    4, light_blue:    64,
      magenta: 5, light_magenta: 65,
      cyan:    6, light_cyan:    66,
      white:   7, light_white:   67,
      default: 9,
    }.freeze
    private_constant :COLOR_CODES

    # Uses an ANSI escape code to colorize text if it's going to be sent to a
    # TTY.
    def self.colorize(val, color, isatty)
      return val unless isatty

      mode = 0 # default
      foreground = 30 + COLOR_CODES.fetch(color)
      background = 40 + COLOR_CODES.fetch(:default)

      "\033[#{mode};#{foreground};#{background}m#{val}\033[0m"
    end
    private_class_method :colorize

    # Turns an integer log level into a printable name.
    def self.level_name(level)
      case level
      when LEVEL_DEBUG then "debug"
      when LEVEL_ERROR then "error"
      when LEVEL_INFO  then "info"
      else level
      end
    end
    private_class_method :level_name

    # TODO: Make these named required arguments when we drop support for Ruby
    # 2.0.
    def self.log_internal(message, data = {}, color: nil, level: nil, logger: nil, out: nil)
      data_str = data.reject { |_k, v| v.nil? }
                     .map do |(k, v)|
        format("%s=%s", colorize(k, color, logger.nil? && !out.nil? && out.isatty), wrap_logfmt_value(v))
      end.join(" ")

      if !logger.nil?
        # the library's log levels are mapped to the same values as the
        # standard library's logger
        logger.log(level,
                   format("message=%s %s", wrap_logfmt_value(message), data_str))
      elsif out.isatty
        out.puts format("%s %s %s", colorize(level_name(level)[0, 4].upcase, color, out.isatty), message, data_str)
      else
        out.puts format("message=%s level=%s %s", wrap_logfmt_value(message), level_name(level), data_str)
      end
    end
    private_class_method :log_internal

    # Wraps a value in double quotes if it looks sufficiently complex so that
    # it can be read by logfmt parsers.
    def self.wrap_logfmt_value(val)
      # If value is any kind of number, just allow it to be formatted directly
      # to a string (this will handle integers or floats).
      return val if val.is_a?(Numeric)

      # Hopefully val is a string, but protect in case it's not.
      val = val.to_s

      if %r{[^\w\-/]} =~ val
        # If the string contains any special characters, escape any double
        # quotes it has, remove newlines, and wrap the whole thing in quotes.
        format(%("%s"), val.gsub('"', '\"').delete("\n"))
      else
        # Otherwise use the basic value if it looks like a standard set of
        # characters (and allow a few special characters like hyphens, and
        # slashes)
        val
      end
    end
    private_class_method :wrap_logfmt_value
  end
end
