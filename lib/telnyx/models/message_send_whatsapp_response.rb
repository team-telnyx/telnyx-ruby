# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Messages#send_whatsapp
    class MessageSendWhatsappResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::MessageSendWhatsappResponse::Data, nil]
      optional :data, -> { Telnyx::Models::MessageSendWhatsappResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::MessageSendWhatsappResponse::Data]

      # @see Telnyx::Models::MessageSendWhatsappResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   message ID
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute body
        #
        #   @return [Telnyx::Models::WhatsappMessageContent, nil]
        optional :body, -> { Telnyx::WhatsappMessageContent }

        # @!attribute direction
        #
        #   @return [String, nil]
        optional :direction, String

        # @!attribute encoding
        #
        #   @return [String, nil]
        optional :encoding, String

        # @!attribute from
        #
        #   @return [Telnyx::Models::MessageSendWhatsappResponse::Data::From, nil]
        optional :from, -> { Telnyx::Models::MessageSendWhatsappResponse::Data::From }

        # @!attribute messaging_profile_id
        #
        #   @return [String, nil]
        optional :messaging_profile_id, String

        # @!attribute organization_id
        #
        #   @return [String, nil]
        optional :organization_id, String

        # @!attribute received_at
        #
        #   @return [Time, nil]
        optional :received_at, Time

        # @!attribute record_type
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute to
        #
        #   @return [Array<Telnyx::Models::RcsToItem>, nil]
        optional :to, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::RcsToItem] }

        # @!attribute type
        #
        #   @return [String, nil]
        optional :type, String

        # @!method initialize(id: nil, body: nil, direction: nil, encoding: nil, from: nil, messaging_profile_id: nil, organization_id: nil, received_at: nil, record_type: nil, to: nil, type: nil)
        #   @param id [String] message ID
        #
        #   @param body [Telnyx::Models::WhatsappMessageContent]
        #
        #   @param direction [String]
        #
        #   @param encoding [String]
        #
        #   @param from [Telnyx::Models::MessageSendWhatsappResponse::Data::From]
        #
        #   @param messaging_profile_id [String]
        #
        #   @param organization_id [String]
        #
        #   @param received_at [Time]
        #
        #   @param record_type [String]
        #
        #   @param to [Array<Telnyx::Models::RcsToItem>]
        #
        #   @param type [String]

        # @see Telnyx::Models::MessageSendWhatsappResponse::Data#from
        class From < Telnyx::Internal::Type::BaseModel
          # @!attribute carrier
          #   The carrier of the sender.
          #
          #   @return [String, nil]
          optional :carrier, String

          # @!attribute line_type
          #   The line-type of the sender.
          #
          #   @return [Symbol, Telnyx::Models::MessageSendWhatsappResponse::Data::From::LineType, nil]
          optional :line_type, enum: -> { Telnyx::Models::MessageSendWhatsappResponse::Data::From::LineType }

          # @!attribute phone_number
          #   Sending address (+E.164 formatted phone number, alphanumeric sender ID, or short
          #   code).
          #
          #   @return [String, nil]
          optional :phone_number, String

          # @!attribute status
          #
          #   @return [Symbol, Telnyx::Models::MessageSendWhatsappResponse::Data::From::Status, nil]
          optional :status, enum: -> { Telnyx::Models::MessageSendWhatsappResponse::Data::From::Status }

          # @!method initialize(carrier: nil, line_type: nil, phone_number: nil, status: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::MessageSendWhatsappResponse::Data::From} for more details.
          #
          #   @param carrier [String] The carrier of the sender.
          #
          #   @param line_type [Symbol, Telnyx::Models::MessageSendWhatsappResponse::Data::From::LineType] The line-type of the sender.
          #
          #   @param phone_number [String] Sending address (+E.164 formatted phone number, alphanumeric sender ID, or short
          #
          #   @param status [Symbol, Telnyx::Models::MessageSendWhatsappResponse::Data::From::Status]

          # The line-type of the sender.
          #
          # @see Telnyx::Models::MessageSendWhatsappResponse::Data::From#line_type
          module LineType
            extend Telnyx::Internal::Type::Enum

            WIRELINE = :Wireline
            WIRELESS = :Wireless
            VO_WI_FI = :VoWiFi
            VO_IP = :VoIP
            PRE_PAID_WIRELESS = :"Pre-Paid Wireless"
            EMPTY = :""

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Telnyx::Models::MessageSendWhatsappResponse::Data::From#status
          module Status
            extend Telnyx::Internal::Type::Enum

            RECEIVED = :received
            DELIVERED = :delivered

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
