# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Messages#send_whatsapp
    class MessageSendWhatsappParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute from
      #   Phone number in +E.164 format associated with Whatsapp account
      #
      #   @return [String]
      required :from, String

      # @!attribute to
      #   Phone number in +E.164 format
      #
      #   @return [String]
      required :to, String

      # @!attribute whatsapp_message
      #
      #   @return [Telnyx::Models::WhatsappMessageContent]
      required :whatsapp_message, -> { Telnyx::WhatsappMessageContent }

      # @!attribute messaging_profile_id
      #   Messaging profile ID - required if the 'from' number is not SMS-enabled
      #
      #   @return [String, nil]
      optional :messaging_profile_id, String

      # @!attribute type
      #   Message type - must be set to "WHATSAPP"
      #
      #   @return [Symbol, Telnyx::Models::MessageSendWhatsappParams::Type, nil]
      optional :type, enum: -> { Telnyx::MessageSendWhatsappParams::Type }

      # @!attribute webhook_url
      #   The URL where webhooks related to this message will be sent.
      #
      #   @return [String, nil]
      optional :webhook_url, String

      # @!method initialize(from:, to:, whatsapp_message:, messaging_profile_id: nil, type: nil, webhook_url: nil, request_options: {})
      #   @param from [String] Phone number in +E.164 format associated with Whatsapp account
      #
      #   @param to [String] Phone number in +E.164 format
      #
      #   @param whatsapp_message [Telnyx::Models::WhatsappMessageContent]
      #
      #   @param messaging_profile_id [String] Messaging profile ID - required if the 'from' number is not SMS-enabled
      #
      #   @param type [Symbol, Telnyx::Models::MessageSendWhatsappParams::Type] Message type - must be set to "WHATSAPP"
      #
      #   @param webhook_url [String] The URL where webhooks related to this message will be sent.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Message type - must be set to "WHATSAPP"
      module Type
        extend Telnyx::Internal::Type::Enum

        WHATSAPP = :WHATSAPP

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
