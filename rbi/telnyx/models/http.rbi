# typed: strong

module Telnyx
  module Models
    class HTTP < Telnyx::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Telnyx::HTTP, Telnyx::Internal::AnyHash) }

      # Request details.
      sig { returns(T.nilable(Telnyx::HTTP::Request)) }
      attr_reader :request

      sig { params(request: Telnyx::HTTP::Request::OrHash).void }
      attr_writer :request

      # Response details, optional.
      sig { returns(T.nilable(Telnyx::HTTP::Response)) }
      attr_reader :response

      sig { params(response: Telnyx::HTTP::Response::OrHash).void }
      attr_writer :response

      # HTTP request and response information.
      sig do
        params(
          request: Telnyx::HTTP::Request::OrHash,
          response: Telnyx::HTTP::Response::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Request details.
        request: nil,
        # Response details, optional.
        response: nil
      )
      end

      sig do
        override.returns(
          { request: Telnyx::HTTP::Request, response: Telnyx::HTTP::Response }
        )
      end
      def to_hash
      end

      class Request < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::HTTP::Request, Telnyx::Internal::AnyHash)
          end

        # List of headers, limited to 10kB.
        sig { returns(T.nilable(T::Array[T::Array[String]])) }
        attr_reader :headers

        sig { params(headers: T::Array[T::Array[String]]).void }
        attr_writer :headers

        sig { returns(T.nilable(String)) }
        attr_reader :url

        sig { params(url: String).void }
        attr_writer :url

        # Request details.
        sig do
          params(headers: T::Array[T::Array[String]], url: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # List of headers, limited to 10kB.
          headers: nil,
          url: nil
        )
        end

        sig do
          override.returns({ headers: T::Array[T::Array[String]], url: String })
        end
        def to_hash
        end
      end

      class Response < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::HTTP::Response, Telnyx::Internal::AnyHash)
          end

        # Raw response body, limited to 10kB.
        sig { returns(T.nilable(String)) }
        attr_reader :body

        sig { params(body: String).void }
        attr_writer :body

        # List of headers, limited to 10kB.
        sig { returns(T.nilable(T::Array[T::Array[String]])) }
        attr_reader :headers

        sig { params(headers: T::Array[T::Array[String]]).void }
        attr_writer :headers

        sig { returns(T.nilable(Integer)) }
        attr_reader :status

        sig { params(status: Integer).void }
        attr_writer :status

        # Response details, optional.
        sig do
          params(
            body: String,
            headers: T::Array[T::Array[String]],
            status: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Raw response body, limited to 10kB.
          body: nil,
          # List of headers, limited to 10kB.
          headers: nil,
          status: nil
        )
        end

        sig do
          override.returns(
            {
              body: String,
              headers: T::Array[T::Array[String]],
              status: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
