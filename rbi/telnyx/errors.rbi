# typed: strong

module Telnyx
  module Errors
    class Error < StandardError
      sig { returns(T.nilable(StandardError)) }
      attr_accessor :cause
    end

    class ConversionError < Telnyx::Errors::Error
      sig { returns(T.nilable(StandardError)) }
      def cause
      end

      # @api private
      sig do
        params(
          on: T::Class[StandardError],
          method: Symbol,
          target: T.anything,
          value: T.anything,
          cause: T.nilable(StandardError)
        ).returns(T.attached_class)
      end
      def self.new(on:, method:, target:, value:, cause: nil)
      end
    end

    class APIError < Telnyx::Errors::Error
      sig { returns(URI::Generic) }
      attr_accessor :url

      sig { returns(T.nilable(Integer)) }
      attr_accessor :status

      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_accessor :headers

      sig { returns(T.nilable(T.anything)) }
      attr_accessor :body

      # @api private
      sig do
        params(
          url: URI::Generic,
          status: T.nilable(Integer),
          headers: T.nilable(T::Hash[String, String]),
          body: T.nilable(Object),
          request: NilClass,
          response: NilClass,
          message: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        url:,
        status: nil,
        headers: nil,
        body: nil,
        request: nil,
        response: nil,
        message: nil
      )
      end
    end

    class APIConnectionError < Telnyx::Errors::APIError
      sig { returns(NilClass) }
      attr_accessor :status

      sig { returns(NilClass) }
      attr_accessor :body

      # @api private
      sig do
        params(
          url: URI::Generic,
          status: NilClass,
          headers: T.nilable(T::Hash[String, String]),
          body: NilClass,
          request: NilClass,
          response: NilClass,
          message: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        url:,
        status: nil,
        headers: nil,
        body: nil,
        request: nil,
        response: nil,
        message: "Connection error."
      )
      end
    end

    class APITimeoutError < Telnyx::Errors::APIConnectionError
      # @api private
      sig do
        params(
          url: URI::Generic,
          status: NilClass,
          headers: T.nilable(T::Hash[String, String]),
          body: NilClass,
          request: NilClass,
          response: NilClass,
          message: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        url:,
        status: nil,
        headers: nil,
        body: nil,
        request: nil,
        response: nil,
        message: "Request timed out."
      )
      end
    end

    class APIStatusError < Telnyx::Errors::APIError
      # @api private
      sig do
        params(
          url: URI::Generic,
          status: Integer,
          headers: T.nilable(T::Hash[String, String]),
          body: T.nilable(Object),
          request: NilClass,
          response: NilClass,
          message: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.for(
        url:,
        status:,
        headers:,
        body:,
        request:,
        response:,
        message: nil
      )
      end

      sig { returns(Integer) }
      attr_accessor :status

      # @api private
      sig do
        params(
          url: URI::Generic,
          status: Integer,
          headers: T.nilable(T::Hash[String, String]),
          body: T.nilable(Object),
          request: NilClass,
          response: NilClass,
          message: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        url:,
        status:,
        headers:,
        body:,
        request:,
        response:,
        message: nil
      )
      end
    end

    class BadRequestError < Telnyx::Errors::APIStatusError
      HTTP_STATUS = 400
    end

    class AuthenticationError < Telnyx::Errors::APIStatusError
      HTTP_STATUS = 401
    end

    class PermissionDeniedError < Telnyx::Errors::APIStatusError
      HTTP_STATUS = 403
    end

    class NotFoundError < Telnyx::Errors::APIStatusError
      HTTP_STATUS = 404
    end

    class ConflictError < Telnyx::Errors::APIStatusError
      HTTP_STATUS = 409
    end

    class UnprocessableEntityError < Telnyx::Errors::APIStatusError
      HTTP_STATUS = 422
    end

    class RateLimitError < Telnyx::Errors::APIStatusError
      HTTP_STATUS = 429
    end

    class InternalServerError < Telnyx::Errors::APIStatusError
      HTTP_STATUS = T.let((500..), T::Range[Integer])
    end
  end
end
