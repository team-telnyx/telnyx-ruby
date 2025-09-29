# typed: strong

module Telnyx
  module Models
    class MessageSendGroupMmsParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::MessageSendGroupMmsParams, Telnyx::Internal::AnyHash)
        end

      # Phone number, in +E.164 format, used to send the message.
      sig { returns(String) }
      attr_accessor :from

      # A list of destinations. No more than 8 destinations are allowed.
      sig { returns(T::Array[String]) }
      attr_accessor :to

      # A list of media URLs. The total media size must be less than 1 MB.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :media_urls

      sig { params(media_urls: T::Array[String]).void }
      attr_writer :media_urls

      # Subject of multimedia message
      sig { returns(T.nilable(String)) }
      attr_reader :subject

      sig { params(subject: String).void }
      attr_writer :subject

      # Message body (i.e., content) as a non-empty string.
      sig { returns(T.nilable(String)) }
      attr_reader :text

      sig { params(text: String).void }
      attr_writer :text

      # If the profile this number is associated with has webhooks, use them for
      # delivery notifications. If webhooks are also specified on the message itself,
      # they will be attempted first, then those on the profile.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :use_profile_webhooks

      sig { params(use_profile_webhooks: T::Boolean).void }
      attr_writer :use_profile_webhooks

      # The failover URL where webhooks related to this message will be sent if sending
      # to the primary URL fails.
      sig { returns(T.nilable(String)) }
      attr_reader :webhook_failover_url

      sig { params(webhook_failover_url: String).void }
      attr_writer :webhook_failover_url

      # The URL where webhooks related to this message will be sent.
      sig { returns(T.nilable(String)) }
      attr_reader :webhook_url

      sig { params(webhook_url: String).void }
      attr_writer :webhook_url

      sig do
        params(
          from: String,
          to: T::Array[String],
          media_urls: T::Array[String],
          subject: String,
          text: String,
          use_profile_webhooks: T::Boolean,
          webhook_failover_url: String,
          webhook_url: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Phone number, in +E.164 format, used to send the message.
        from:,
        # A list of destinations. No more than 8 destinations are allowed.
        to:,
        # A list of media URLs. The total media size must be less than 1 MB.
        media_urls: nil,
        # Subject of multimedia message
        subject: nil,
        # Message body (i.e., content) as a non-empty string.
        text: nil,
        # If the profile this number is associated with has webhooks, use them for
        # delivery notifications. If webhooks are also specified on the message itself,
        # they will be attempted first, then those on the profile.
        use_profile_webhooks: nil,
        # The failover URL where webhooks related to this message will be sent if sending
        # to the primary URL fails.
        webhook_failover_url: nil,
        # The URL where webhooks related to this message will be sent.
        webhook_url: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            from: String,
            to: T::Array[String],
            media_urls: T::Array[String],
            subject: String,
            text: String,
            use_profile_webhooks: T::Boolean,
            webhook_failover_url: String,
            webhook_url: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
