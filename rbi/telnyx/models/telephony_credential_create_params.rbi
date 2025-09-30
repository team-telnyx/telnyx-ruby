# typed: strong

module Telnyx
  module Models
    class TelephonyCredentialCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::TelephonyCredentialCreateParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Identifies the Credential Connection this credential is associated with.
      sig { returns(String) }
      attr_accessor :connection_id

      # ISO-8601 formatted date indicating when the credential will expire.
      sig { returns(T.nilable(String)) }
      attr_reader :expires_at

      sig { params(expires_at: String).void }
      attr_writer :expires_at

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # Tags a credential. A single tag can hold at maximum 1000 credentials.
      sig { returns(T.nilable(String)) }
      attr_reader :tag

      sig { params(tag: String).void }
      attr_writer :tag

      sig do
        params(
          connection_id: String,
          expires_at: String,
          name: String,
          tag: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifies the Credential Connection this credential is associated with.
        connection_id:,
        # ISO-8601 formatted date indicating when the credential will expire.
        expires_at: nil,
        name: nil,
        # Tags a credential. A single tag can hold at maximum 1000 credentials.
        tag: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            connection_id: String,
            expires_at: String,
            name: String,
            tag: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
