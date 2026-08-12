# typed: strong

module Telnyx
  module Models
    class MessageWhatsappParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::MessageWhatsappParams, Telnyx::Internal::AnyHash)
        end

      # Phone number in +E.164 format associated with Whatsapp account
      sig { returns(String) }
      attr_accessor :from

      # Phone number in +E.164 format
      sig { returns(String) }
      attr_accessor :to

      sig { returns(Telnyx::WhatsappMessageContent) }
      attr_reader :whatsapp_message

      sig do
        params(whatsapp_message: Telnyx::WhatsappMessageContent::OrHash).void
      end
      attr_writer :whatsapp_message

      # Messaging profile ID - required if the 'from' number is not SMS-enabled
      sig { returns(T.nilable(String)) }
      attr_reader :messaging_profile_id

      sig { params(messaging_profile_id: String).void }
      attr_writer :messaging_profile_id

      # Message type - must be set to "WHATSAPP"
      sig { returns(T.nilable(Telnyx::MessageWhatsappParams::Type::OrSymbol)) }
      attr_reader :type

      sig { params(type: Telnyx::MessageWhatsappParams::Type::OrSymbol).void }
      attr_writer :type

      # The URL where webhooks related to this message will be sent.
      sig { returns(T.nilable(String)) }
      attr_reader :webhook_url

      sig { params(webhook_url: String).void }
      attr_writer :webhook_url

      sig do
        params(
          from: String,
          to: String,
          whatsapp_message: Telnyx::WhatsappMessageContent::OrHash,
          messaging_profile_id: String,
          type: Telnyx::MessageWhatsappParams::Type::OrSymbol,
          webhook_url: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Phone number in +E.164 format associated with Whatsapp account
        from:,
        # Phone number in +E.164 format
        to:,
        whatsapp_message:,
        # Messaging profile ID - required if the 'from' number is not SMS-enabled
        messaging_profile_id: nil,
        # Message type - must be set to "WHATSAPP"
        type: nil,
        # The URL where webhooks related to this message will be sent.
        webhook_url: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            from: String,
            to: String,
            whatsapp_message: Telnyx::WhatsappMessageContent,
            messaging_profile_id: String,
            type: Telnyx::MessageWhatsappParams::Type::OrSymbol,
            webhook_url: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Message type - must be set to "WHATSAPP"
      module Type
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::MessageWhatsappParams::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WHATSAPP =
          T.let(:WHATSAPP, Telnyx::MessageWhatsappParams::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::MessageWhatsappParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
