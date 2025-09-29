# typed: strong

module Telnyx
  # Specify HTTP behaviour to use for a specific request. These options supplement
  # or override those provided at the client level.
  #
  # When making a request, you can pass an actual {RequestOptions} instance, or
  # simply pass a Hash with symbol keys matching the attributes on this class.
  class RequestOptions < Telnyx::Internal::Type::BaseModel
    OrHash =
      T.type_alias { T.any(Telnyx::RequestOptions, Telnyx::Internal::AnyHash) }

    # @api private
    sig { params(opts: Telnyx::RequestOptions::OrHash).void }
    def self.validate!(opts)
    end

    # Idempotency key to send with request and all associated retries. Will only be
    # sent for write requests.
    sig { returns(T.nilable(String)) }
    attr_accessor :idempotency_key

    # Extra query params to send with the request. These are `.merge`’d into any
    # `query` given at the client level.
    sig do
      returns(
        T.nilable(T::Hash[String, T.nilable(T.any(T::Array[String], String))])
      )
    end
    attr_accessor :extra_query

    # Extra headers to send with the request. These are `.merged`’d into any
    # `extra_headers` given at the client level.
    sig { returns(T.nilable(T::Hash[String, T.nilable(String)])) }
    attr_accessor :extra_headers

    # Extra data to send with the request. These are deep merged into any data
    # generated as part of the normal request.
    sig { returns(T.nilable(T.anything)) }
    attr_accessor :extra_body

    # Maximum number of retries to attempt after a failed initial request.
    sig { returns(T.nilable(Integer)) }
    attr_accessor :max_retries

    # Request timeout in seconds.
    sig { returns(T.nilable(Float)) }
    attr_accessor :timeout

    # Returns a new instance of RequestOptions.
    sig { params(values: Telnyx::Internal::AnyHash).returns(T.attached_class) }
    def self.new(values = {})
    end
  end
end
