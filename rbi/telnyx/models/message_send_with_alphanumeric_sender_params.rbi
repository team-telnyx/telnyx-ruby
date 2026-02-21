# typed: strong

module Telnyx
  module Models
    class MessageSendWithAlphanumericSenderParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::MessageSendWithAlphanumericSenderParams,
            Telnyx::Internal::AnyHash
          )
        end

      # A valid alphanumeric sender ID on the user's account.
      sig { returns(String) }
      attr_accessor :from

      # The messaging profile ID to use.
      sig { returns(String) }
      attr_accessor :messaging_profile_id

      # The message body.
      sig { returns(String) }
      attr_accessor :text

      # Receiving address (+E.164 formatted phone number).
      sig { returns(String) }
      attr_accessor :to

      # If true, use the messaging profile's webhook settings.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :use_profile_webhooks

      sig { params(use_profile_webhooks: T::Boolean).void }
      attr_writer :use_profile_webhooks

      # Failover callback URL for delivery status updates.
      sig { returns(T.nilable(String)) }
      attr_accessor :webhook_failover_url

      # Callback URL for delivery status updates.
      sig { returns(T.nilable(String)) }
      attr_accessor :webhook_url

      sig do
        params(
          from: String,
          messaging_profile_id: String,
          text: String,
          to: String,
          use_profile_webhooks: T::Boolean,
          webhook_failover_url: T.nilable(String),
          webhook_url: T.nilable(String),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A valid alphanumeric sender ID on the user's account.
        from:,
        # The messaging profile ID to use.
        messaging_profile_id:,
        # The message body.
        text:,
        # Receiving address (+E.164 formatted phone number).
        to:,
        # If true, use the messaging profile's webhook settings.
        use_profile_webhooks: nil,
        # Failover callback URL for delivery status updates.
        webhook_failover_url: nil,
        # Callback URL for delivery status updates.
        webhook_url: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            from: String,
            messaging_profile_id: String,
            text: String,
            to: String,
            use_profile_webhooks: T::Boolean,
            webhook_failover_url: T.nilable(String),
            webhook_url: T.nilable(String),
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
