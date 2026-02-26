# typed: strong

module Telnyx
  module Models
    class MessageSendWhatsappParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::MessageSendWhatsappParams, Telnyx::Internal::AnyHash)
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

      # Message type - must be set to "WHATSAPP"
      sig do
        returns(T.nilable(Telnyx::MessageSendWhatsappParams::Type::OrSymbol))
      end
      attr_reader :type

      sig do
        params(type: Telnyx::MessageSendWhatsappParams::Type::OrSymbol).void
      end
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
          type: Telnyx::MessageSendWhatsappParams::Type::OrSymbol,
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
            type: Telnyx::MessageSendWhatsappParams::Type::OrSymbol,
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
          T.type_alias do
            T.all(Symbol, Telnyx::MessageSendWhatsappParams::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WHATSAPP =
          T.let(
            :WHATSAPP,
            Telnyx::MessageSendWhatsappParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::MessageSendWhatsappParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
