# frozen_string_literal: true

module Telnyx
  module Models
    class WhatsappMessageEcho < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::WhatsappMessageEcho::Data]
      required :data, -> { Telnyx::WhatsappMessageEcho::Data }

      # @!method initialize(data:)
      #   @param data [Telnyx::Models::WhatsappMessageEcho::Data]

      # @see Telnyx::Models::WhatsappMessageEcho#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute event_type
        #
        #   @return [Symbol, Telnyx::Models::WhatsappMessageEcho::Data::EventType]
        required :event_type, enum: -> { Telnyx::WhatsappMessageEcho::Data::EventType }

        # @!attribute occurred_at
        #
        #   @return [Time]
        required :occurred_at, Time

        # @!attribute payload
        #
        #   @return [Telnyx::Models::WhatsappMessageEcho::Data::Payload]
        required :payload, -> { Telnyx::WhatsappMessageEcho::Data::Payload }

        # @!attribute record_type
        #
        #   @return [Symbol, Telnyx::Models::WhatsappMessageEcho::Data::RecordType]
        required :record_type, enum: -> { Telnyx::WhatsappMessageEcho::Data::RecordType }

        # @!method initialize(id:, event_type:, occurred_at:, payload:, record_type:)
        #   @param id [String]
        #   @param event_type [Symbol, Telnyx::Models::WhatsappMessageEcho::Data::EventType]
        #   @param occurred_at [Time]
        #   @param payload [Telnyx::Models::WhatsappMessageEcho::Data::Payload]
        #   @param record_type [Symbol, Telnyx::Models::WhatsappMessageEcho::Data::RecordType]

        # @see Telnyx::Models::WhatsappMessageEcho::Data#event_type
        module EventType
          extend Telnyx::Internal::Type::Enum

          MESSAGE_ECHO = :"message.echo"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::WhatsappMessageEcho::Data#payload
        class Payload < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   Telnyx identifier for the mirrored message.
          #
          #   @return [String]
          required :id, String

          # @!attribute body
          #   Mirrored WhatsApp message content. The content property matches the value of
          #   `type`.
          #
          #   @return [Telnyx::Models::WhatsappMessageEcho::Data::Payload::Body]
          required :body, -> { Telnyx::WhatsappMessageEcho::Data::Payload::Body }

          # @!attribute cost
          #   No charge is created for a Business app message echo.
          #
          #   @return [Telnyx::Models::WhatsappMessageEcho::Data::Payload::Cost]
          required :cost, -> { Telnyx::WhatsappMessageEcho::Data::Payload::Cost }

          # @!attribute direction
          #   Indicates that the business sent the message to the WhatsApp user.
          #
          #   @return [Symbol, Telnyx::Models::WhatsappMessageEcho::Data::Payload::Direction]
          required :direction, enum: -> { Telnyx::WhatsappMessageEcho::Data::Payload::Direction }

          # @!attribute errors
          #
          #   @return [Array<Telnyx::Models::MessagingError0b38e7044b>]
          required :errors, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::MessagingError0b38e7044b] }

          # @!attribute from
          #
          #   @return [Telnyx::Models::WhatsappMessageEcho::Data::Payload::From]
          required :from, -> { Telnyx::WhatsappMessageEcho::Data::Payload::From }

          # @!attribute messaging_profile_id
          #
          #   @return [String]
          required :messaging_profile_id, String

          # @!attribute organization_id
          #
          #   @return [String]
          required :organization_id, String

          # @!attribute origin
          #   Identifies the WhatsApp Business app as the source of the message.
          #
          #   @return [Symbol, Telnyx::Models::WhatsappMessageEcho::Data::Payload::Origin]
          required :origin, enum: -> { Telnyx::WhatsappMessageEcho::Data::Payload::Origin }

          # @!attribute record_type
          #
          #   @return [Symbol, Telnyx::Models::WhatsappMessageEcho::Data::Payload::RecordType]
          required :record_type, enum: -> { Telnyx::WhatsappMessageEcho::Data::Payload::RecordType }

          # @!attribute to
          #   WhatsApp user who received the Business app message.
          #
          #   @return [String]
          required :to, String

          # @!attribute type
          #
          #   @return [Symbol, Telnyx::Models::WhatsappMessageEcho::Data::Payload::Type]
          required :type, enum: -> { Telnyx::WhatsappMessageEcho::Data::Payload::Type }

          # @!attribute received_at
          #
          #   @return [Time, nil]
          optional :received_at, Time

          # @!attribute tags
          #
          #   @return [Array<String>, nil]
          optional :tags, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute webhook_failover_url
          #
          #   @return [String, nil]
          optional :webhook_failover_url, String, nil?: true

          # @!attribute webhook_url
          #
          #   @return [String, nil]
          optional :webhook_url, String, nil?: true

          # @!method initialize(id:, body:, cost:, direction:, errors:, from:, messaging_profile_id:, organization_id:, origin:, record_type:, to:, type:, received_at: nil, tags: nil, webhook_failover_url: nil, webhook_url: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::WhatsappMessageEcho::Data::Payload} for more details.
          #
          #   @param id [String] Telnyx identifier for the mirrored message.
          #
          #   @param body [Telnyx::Models::WhatsappMessageEcho::Data::Payload::Body] Mirrored WhatsApp message content. The content property matches the value of `ty
          #
          #   @param cost [Telnyx::Models::WhatsappMessageEcho::Data::Payload::Cost] No charge is created for a Business app message echo.
          #
          #   @param direction [Symbol, Telnyx::Models::WhatsappMessageEcho::Data::Payload::Direction] Indicates that the business sent the message to the WhatsApp user.
          #
          #   @param errors [Array<Telnyx::Models::MessagingError0b38e7044b>]
          #
          #   @param from [Telnyx::Models::WhatsappMessageEcho::Data::Payload::From]
          #
          #   @param messaging_profile_id [String]
          #
          #   @param organization_id [String]
          #
          #   @param origin [Symbol, Telnyx::Models::WhatsappMessageEcho::Data::Payload::Origin] Identifies the WhatsApp Business app as the source of the message.
          #
          #   @param record_type [Symbol, Telnyx::Models::WhatsappMessageEcho::Data::Payload::RecordType]
          #
          #   @param to [String] WhatsApp user who received the Business app message.
          #
          #   @param type [Symbol, Telnyx::Models::WhatsappMessageEcho::Data::Payload::Type]
          #
          #   @param received_at [Time]
          #
          #   @param tags [Array<String>]
          #
          #   @param webhook_failover_url [String, nil]
          #
          #   @param webhook_url [String, nil]

          # @see Telnyx::Models::WhatsappMessageEcho::Data::Payload#body
          class Body < Telnyx::Internal::Type::BaseModel
            # @!attribute id
            #   Telnyx identifier for the mirrored message.
            #
            #   @return [String]
            required :id, String

            # @!attribute foreign_id
            #   Meta WhatsApp message identifier, also known as a wamid.
            #
            #   @return [String]
            required :foreign_id, String

            # @!attribute timestamp
            #   Unix timestamp supplied by Meta.
            #
            #   @return [String]
            required :timestamp, String

            # @!attribute type
            #   WhatsApp message content type.
            #
            #   @return [String]
            required :type, String

            # @!attribute from
            #   WhatsApp user who received the message.
            #
            #   @return [String, nil]
            optional :from, String

            # @!attribute from_user_id
            #   Opaque recipient identifier when Meta does not supply a phone number.
            #
            #   @return [String, nil]
            optional :from_user_id, String

            # @!method initialize(id:, foreign_id:, timestamp:, type:, from: nil, from_user_id: nil)
            #   Mirrored WhatsApp message content. The content property matches the value of
            #   `type`.
            #
            #   @param id [String] Telnyx identifier for the mirrored message.
            #
            #   @param foreign_id [String] Meta WhatsApp message identifier, also known as a wamid.
            #
            #   @param timestamp [String] Unix timestamp supplied by Meta.
            #
            #   @param type [String] WhatsApp message content type.
            #
            #   @param from [String] WhatsApp user who received the message.
            #
            #   @param from_user_id [String] Opaque recipient identifier when Meta does not supply a phone number.
          end

          # @see Telnyx::Models::WhatsappMessageEcho::Data::Payload#cost
          class Cost < Telnyx::Internal::Type::BaseModel
            # @!attribute amount
            #
            #   @return [String, nil]
            optional :amount, String, nil?: true

            # @!attribute currency
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!method initialize(amount: nil, currency: nil)
            #   No charge is created for a Business app message echo.
            #
            #   @param amount [String, nil]
            #   @param currency [String, nil]
          end

          # Indicates that the business sent the message to the WhatsApp user.
          #
          # @see Telnyx::Models::WhatsappMessageEcho::Data::Payload#direction
          module Direction
            extend Telnyx::Internal::Type::Enum

            OUTBOUND = :outbound

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Telnyx::Models::WhatsappMessageEcho::Data::Payload#from
          class From < Telnyx::Internal::Type::BaseModel
            # @!attribute phone_number
            #   Coexistence-enabled business phone number in E.164 format.
            #
            #   @return [String]
            required :phone_number, String

            # @!attribute carrier
            #
            #   @return [String, nil]
            optional :carrier, String

            # @!attribute line_type
            #
            #   @return [String, nil]
            optional :line_type, String

            # @!method initialize(phone_number:, carrier: nil, line_type: nil)
            #   @param phone_number [String] Coexistence-enabled business phone number in E.164 format.
            #
            #   @param carrier [String]
            #
            #   @param line_type [String]
          end

          # Identifies the WhatsApp Business app as the source of the message.
          #
          # @see Telnyx::Models::WhatsappMessageEcho::Data::Payload#origin
          module Origin
            extend Telnyx::Internal::Type::Enum

            WHATSAPP_BUSINESS_APP = :whatsapp_business_app

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Telnyx::Models::WhatsappMessageEcho::Data::Payload#record_type
          module RecordType
            extend Telnyx::Internal::Type::Enum

            MESSAGE = :message

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Telnyx::Models::WhatsappMessageEcho::Data::Payload#type
          module Type
            extend Telnyx::Internal::Type::Enum

            WHATSAPP = :WHATSAPP

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Telnyx::Models::WhatsappMessageEcho::Data#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          EVENT = :event

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
