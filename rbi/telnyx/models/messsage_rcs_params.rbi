# typed: strong

module Telnyx
  module Models
    class MesssageRcsParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::MesssageRcsParams, Telnyx::Internal::AnyHash)
        end

      # RCS Agent ID
      sig { returns(String) }
      attr_accessor :agent_id

      sig { returns(Telnyx::RcsAgentMessage) }
      attr_reader :agent_message

      sig { params(agent_message: Telnyx::RcsAgentMessage::OrHash).void }
      attr_writer :agent_message

      # A valid messaging profile ID
      sig { returns(String) }
      attr_accessor :messaging_profile_id

      # Phone number in +E.164 format
      sig { returns(String) }
      attr_accessor :to

      sig { returns(T.nilable(Telnyx::MesssageRcsParams::MmsFallback)) }
      attr_reader :mms_fallback

      sig do
        params(
          mms_fallback: Telnyx::MesssageRcsParams::MmsFallback::OrHash
        ).void
      end
      attr_writer :mms_fallback

      sig { returns(T.nilable(Telnyx::MesssageRcsParams::SMSFallback)) }
      attr_reader :sms_fallback

      sig do
        params(
          sms_fallback: Telnyx::MesssageRcsParams::SMSFallback::OrHash
        ).void
      end
      attr_writer :sms_fallback

      # Message type - must be set to "RCS"
      sig { returns(T.nilable(Telnyx::MesssageRcsParams::Type::OrSymbol)) }
      attr_reader :type

      sig { params(type: Telnyx::MesssageRcsParams::Type::OrSymbol).void }
      attr_writer :type

      # The URL where webhooks related to this message will be sent.
      sig { returns(T.nilable(String)) }
      attr_reader :webhook_url

      sig { params(webhook_url: String).void }
      attr_writer :webhook_url

      sig do
        params(
          agent_id: String,
          agent_message: Telnyx::RcsAgentMessage::OrHash,
          messaging_profile_id: String,
          to: String,
          mms_fallback: Telnyx::MesssageRcsParams::MmsFallback::OrHash,
          sms_fallback: Telnyx::MesssageRcsParams::SMSFallback::OrHash,
          type: Telnyx::MesssageRcsParams::Type::OrSymbol,
          webhook_url: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # RCS Agent ID
        agent_id:,
        agent_message:,
        # A valid messaging profile ID
        messaging_profile_id:,
        # Phone number in +E.164 format
        to:,
        mms_fallback: nil,
        sms_fallback: nil,
        # Message type - must be set to "RCS"
        type: nil,
        # The URL where webhooks related to this message will be sent.
        webhook_url: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            agent_id: String,
            agent_message: Telnyx::RcsAgentMessage,
            messaging_profile_id: String,
            to: String,
            mms_fallback: Telnyx::MesssageRcsParams::MmsFallback,
            sms_fallback: Telnyx::MesssageRcsParams::SMSFallback,
            type: Telnyx::MesssageRcsParams::Type::OrSymbol,
            webhook_url: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class MmsFallback < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::MesssageRcsParams::MmsFallback,
              Telnyx::Internal::AnyHash
            )
          end

        # Phone number in +E.164 format
        sig { returns(T.nilable(String)) }
        attr_reader :from

        sig { params(from: String).void }
        attr_writer :from

        # List of media URLs
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :media_urls

        sig { params(media_urls: T::Array[String]).void }
        attr_writer :media_urls

        # Subject of the message
        sig { returns(T.nilable(String)) }
        attr_reader :subject

        sig { params(subject: String).void }
        attr_writer :subject

        # Text
        sig { returns(T.nilable(String)) }
        attr_reader :text

        sig { params(text: String).void }
        attr_writer :text

        sig do
          params(
            from: String,
            media_urls: T::Array[String],
            subject: String,
            text: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Phone number in +E.164 format
          from: nil,
          # List of media URLs
          media_urls: nil,
          # Subject of the message
          subject: nil,
          # Text
          text: nil
        )
        end

        sig do
          override.returns(
            {
              from: String,
              media_urls: T::Array[String],
              subject: String,
              text: String
            }
          )
        end
        def to_hash
        end
      end

      class SMSFallback < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::MesssageRcsParams::SMSFallback,
              Telnyx::Internal::AnyHash
            )
          end

        # Phone number in +E.164 format
        sig { returns(T.nilable(String)) }
        attr_reader :from

        sig { params(from: String).void }
        attr_writer :from

        # Text (maximum 3072 characters)
        sig { returns(T.nilable(String)) }
        attr_reader :text

        sig { params(text: String).void }
        attr_writer :text

        sig { params(from: String, text: String).returns(T.attached_class) }
        def self.new(
          # Phone number in +E.164 format
          from: nil,
          # Text (maximum 3072 characters)
          text: nil
        )
        end

        sig { override.returns({ from: String, text: String }) }
        def to_hash
        end
      end

      # Message type - must be set to "RCS"
      module Type
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::MesssageRcsParams::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RCS = T.let(:RCS, Telnyx::MesssageRcsParams::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::MesssageRcsParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
