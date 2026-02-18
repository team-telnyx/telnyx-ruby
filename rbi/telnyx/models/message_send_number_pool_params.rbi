# typed: strong

module Telnyx
  module Models
    class MessageSendNumberPoolParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::MessageSendNumberPoolParams, Telnyx::Internal::AnyHash)
        end

      # Unique identifier for a messaging profile.
      sig { returns(String) }
      attr_accessor :messaging_profile_id

      # Receiving address (+E.164 formatted phone number or short code).
      sig { returns(String) }
      attr_accessor :to

      # Automatically detect if an SMS message is unusually long and exceeds a
      # recommended limit of message parts.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :auto_detect

      sig { params(auto_detect: T::Boolean).void }
      attr_writer :auto_detect

      # Encoding to use for the message. `auto` (default) uses smart encoding to
      # automatically select the most efficient encoding. `gsm7` forces GSM-7 encoding
      # (returns 400 if message contains characters that cannot be encoded). `ucs2`
      # forces UCS-2 encoding and disables smart encoding. When set, this overrides the
      # messaging profile's `smart_encoding` setting.
      sig do
        returns(
          T.nilable(Telnyx::MessageSendNumberPoolParams::Encoding::OrSymbol)
        )
      end
      attr_reader :encoding

      sig do
        params(
          encoding: Telnyx::MessageSendNumberPoolParams::Encoding::OrSymbol
        ).void
      end
      attr_writer :encoding

      # A list of media URLs. The total media size must be less than 1 MB.
      #
      # **Required for MMS**
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
      #
      # **Required for SMS**
      sig { returns(T.nilable(String)) }
      attr_reader :text

      sig { params(text: String).void }
      attr_writer :text

      # The protocol for sending the message, either SMS or MMS.
      sig do
        returns(T.nilable(Telnyx::MessageSendNumberPoolParams::Type::OrSymbol))
      end
      attr_reader :type

      sig do
        params(type: Telnyx::MessageSendNumberPoolParams::Type::OrSymbol).void
      end
      attr_writer :type

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
          messaging_profile_id: String,
          to: String,
          auto_detect: T::Boolean,
          encoding: Telnyx::MessageSendNumberPoolParams::Encoding::OrSymbol,
          media_urls: T::Array[String],
          subject: String,
          text: String,
          type: Telnyx::MessageSendNumberPoolParams::Type::OrSymbol,
          use_profile_webhooks: T::Boolean,
          webhook_failover_url: String,
          webhook_url: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for a messaging profile.
        messaging_profile_id:,
        # Receiving address (+E.164 formatted phone number or short code).
        to:,
        # Automatically detect if an SMS message is unusually long and exceeds a
        # recommended limit of message parts.
        auto_detect: nil,
        # Encoding to use for the message. `auto` (default) uses smart encoding to
        # automatically select the most efficient encoding. `gsm7` forces GSM-7 encoding
        # (returns 400 if message contains characters that cannot be encoded). `ucs2`
        # forces UCS-2 encoding and disables smart encoding. When set, this overrides the
        # messaging profile's `smart_encoding` setting.
        encoding: nil,
        # A list of media URLs. The total media size must be less than 1 MB.
        #
        # **Required for MMS**
        media_urls: nil,
        # Subject of multimedia message
        subject: nil,
        # Message body (i.e., content) as a non-empty string.
        #
        # **Required for SMS**
        text: nil,
        # The protocol for sending the message, either SMS or MMS.
        type: nil,
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
            messaging_profile_id: String,
            to: String,
            auto_detect: T::Boolean,
            encoding: Telnyx::MessageSendNumberPoolParams::Encoding::OrSymbol,
            media_urls: T::Array[String],
            subject: String,
            text: String,
            type: Telnyx::MessageSendNumberPoolParams::Type::OrSymbol,
            use_profile_webhooks: T::Boolean,
            webhook_failover_url: String,
            webhook_url: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Encoding to use for the message. `auto` (default) uses smart encoding to
      # automatically select the most efficient encoding. `gsm7` forces GSM-7 encoding
      # (returns 400 if message contains characters that cannot be encoded). `ucs2`
      # forces UCS-2 encoding and disables smart encoding. When set, this overrides the
      # messaging profile's `smart_encoding` setting.
      module Encoding
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::MessageSendNumberPoolParams::Encoding)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AUTO =
          T.let(
            :auto,
            Telnyx::MessageSendNumberPoolParams::Encoding::TaggedSymbol
          )
        GSM7 =
          T.let(
            :gsm7,
            Telnyx::MessageSendNumberPoolParams::Encoding::TaggedSymbol
          )
        UCS2 =
          T.let(
            :ucs2,
            Telnyx::MessageSendNumberPoolParams::Encoding::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::MessageSendNumberPoolParams::Encoding::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The protocol for sending the message, either SMS or MMS.
      module Type
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::MessageSendNumberPoolParams::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SMS =
          T.let(:SMS, Telnyx::MessageSendNumberPoolParams::Type::TaggedSymbol)
        MMS =
          T.let(:MMS, Telnyx::MessageSendNumberPoolParams::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::MessageSendNumberPoolParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
