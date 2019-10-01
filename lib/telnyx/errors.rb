# frozen_string_literal: true

module Telnyx
  # TelnyxError is the base error from which all other more specific Telnyx
  # errors derive.
  class TelnyxError < StandardError
    # Full details for all errors returned in response
    attr_reader :errors

    # Response contains a TelnyxResponse object that has some basic information
    # about the response that conveyed the error.
    attr_accessor :response

    attr_reader :http_body
    attr_reader :http_headers
    attr_reader :http_status
    attr_reader :json_body # equivalent to #data
    attr_reader :request_id

    # Initializes a TelnyxError.
    def initialize(errors = nil, http_status: nil, http_body: nil, json_body: nil, http_headers: nil)
      @http_status = http_status
      @http_body = http_body
      @http_headers = http_headers || {}
      @json_body = json_body
      @request_id = @http_headers[:request_id]
      @errors = stringify_errors(errors)
    end

    def to_s
      status_string = @http_status.nil? ? "" : "(Status #{@http_status}) "
      id_string = @request_id.nil? ? "" : "(Request #{@request_id}) "
      instruction = "Full details: #{@errors}"
      "#{status_string}#{id_string}#{message}#{other_errors_message}#{instruction}"
    end

    def other_errors_message
      count = error_count
      if count > 2
        "plus #{count} other errors. "
      elsif count == 2
        "plus 1 other error. "
      end
    end

    def message
      case @errors
      when Array
        "#{@errors[0]['title']} "
      else
        @errors
      end
    end

    def error_count
      case @errors
      when Array
        @errors.count
      else
        1
      end
    end

    def stringify_hash(h)
      str_hash = {}
      h.each_key do |k|
        str_hash[k.to_s] = h[k]
      end
      str_hash
    end

    def stringify_errors(errors)
      if errors.is_a? Array
        errors.map { |h| stringify_hash(h) }
      elsif errors.is_a? Hash
        stringify_hash errors
      else
        errors
      end
    end
  end

  # InvalidRequestError is raised when a request cannot be parsed by Telnyx
  class InvalidRequestError < TelnyxError
    STATUS_CODE = 400
  end

  # AuthenticationError is raised when invalid credentials are used to connect
  # to Telnyx's servers.
  class AuthenticationError < TelnyxError
    STATUS_CODE = 401
  end

  # PermissionError is raised in cases where access was attempted on a resource
  # that wasn't allowed.
  class PermissionError < TelnyxError
    STATUS_CODE = 403
  end

  # ResourceNotFoundError is raised when a resource or path does not exist.
  # that wasn't allowed.
  class ResourceNotFoundError < TelnyxError
    STATUS_CODE = 404
  end

  # MethodNotSupportedError is raised a request is made using a method that
  # is not supported by the endpoint.
  class MethodNotSupportedError < TelnyxError
    STATUS_CODE = 405
  end

  # TimeoutError is raised when the request times out while being processed by
  # Telnyx's servers.
  class TimeoutError < TelnyxError
    STATUS_CODE = 408
  end

  # UnsupportedMediaTypeError is raised when the media type of the request is
  # not supported.
  class UnsupportedMediaTypeError < TelnyxError
    STATUS_CODE = 415
  end

  # InvalidParametersError is raised when a request is made with invaid parameters
  class InvalidParametersError < TelnyxError
    STATUS_CODE = 422
  end

  # RateLimitError is raised in cases where an account is putting too much load
  # on Telnyx's API servers (usually by performing too many requests). Please
  # back off on request rate.
  class RateLimitError < TelnyxError
    STATUS_CODE = 429
  end

  # APIError is a generic error that may be raised in cases where none of the
  # other named errors cover the problem. It could also be raised in the case
  # that a new error has been introduced in the API, but this version of the
  # Ruby SDK doesn't know how to handle it.
  class APIError < TelnyxError
    STATUS_CODE = 500
  end

  # Service unavailable error is raise when a request receives a response status
  # code of 503 Service Unavailable.
  class ServiceUnavailableError < TelnyxError
    STATUS_CODE = 503
  end

  # APIConnectionError is raised in the event that the SDK can't connect to
  # Telnyx's servers. That can be for a variety of different reasons from a
  # downed network to a bad TLS certificate.
  class APIConnectionError < TelnyxError
  end

  # SignatureVerificationError is raised when the signature verification for a
  # webhook fails
  class SignatureVerificationError < TelnyxError
    attr_accessor :sig_header

    def initialize(message, sig_header, http_body: nil)
      super(message, http_body: http_body)
      @sig_header = sig_header
    end
  end
end
