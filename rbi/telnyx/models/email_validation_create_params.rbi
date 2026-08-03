# typed: strong

module Telnyx
  module Models
    class EmailValidationCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::EmailValidationCreateParams, Telnyx::Internal::AnyHash)
        end

      # Email address to validate. Any non-empty string is accepted; invalid syntax
      # returns valid=false rather than a request error.
      sig { returns(String) }
      attr_accessor :email

      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      sig do
        params(
          email: String,
          idempotency_key: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Email address to validate. Any non-empty string is accepted; invalid syntax
        # returns valid=false rather than a request error.
        email:,
        idempotency_key: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            email: String,
            idempotency_key: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
