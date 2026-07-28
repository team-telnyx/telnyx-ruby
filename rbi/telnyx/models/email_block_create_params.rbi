# typed: strong

module Telnyx
  module Models
    class EmailBlockCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::EmailBlockCreateParams, Telnyx::Internal::AnyHash)
        end

      # Recipient address (normalized: trim + lower-case).
      sig { returns(String) }
      attr_accessor :to

      # `null` ⇒ account scope.
      sig { returns(T.nilable(String)) }
      attr_accessor :domain_id

      sig { returns(T.nilable(Time)) }
      attr_accessor :expires_at

      # Sender address (normalized). `null` ⇒ account/domain scope.
      sig { returns(T.nilable(String)) }
      attr_accessor :from

      sig do
        params(
          to: String,
          domain_id: T.nilable(String),
          expires_at: T.nilable(Time),
          from: T.nilable(String),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Recipient address (normalized: trim + lower-case).
        to:,
        # `null` ⇒ account scope.
        domain_id: nil,
        expires_at: nil,
        # Sender address (normalized). `null` ⇒ account/domain scope.
        from: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            to: String,
            domain_id: T.nilable(String),
            expires_at: T.nilable(Time),
            from: T.nilable(String),
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
