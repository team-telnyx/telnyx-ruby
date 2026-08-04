# typed: strong

module Telnyx
  module Models
    class EmailInboxCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::EmailInboxCreateParams, Telnyx::Internal::AnyHash)
        end

      # Account-owned, inbound-enabled domain UUID. The account's shared inbound
      # subdomain is allocated when omitted.
      sig { returns(T.nilable(String)) }
      attr_reader :domain_id

      sig { params(domain_id: String).void }
      attr_writer :domain_id

      # Inbox local part. Trimmed and lowercased before validation; the normalized value
      # must be 1-64 characters, start and end with a letter or digit, and contain only
      # letters, digits, dots, hyphens, and underscores. Generated when omitted.
      sig { returns(T.nilable(String)) }
      attr_reader :username

      sig { params(username: String).void }
      attr_writer :username

      sig do
        params(
          domain_id: String,
          username: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Account-owned, inbound-enabled domain UUID. The account's shared inbound
        # subdomain is allocated when omitted.
        domain_id: nil,
        # Inbox local part. Trimmed and lowercased before validation; the normalized value
        # must be 1-64 characters, start and end with a letter or digit, and contain only
        # letters, digits, dots, hyphens, and underscores. Generated when omitted.
        username: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            domain_id: String,
            username: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
