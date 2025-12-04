# frozen_string_literal: true

module Telnyx
  module Models
    class InboundMessageWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::InboundMessageWebhookEvent::Data, nil]
      optional :data, -> { Telnyx::InboundMessageWebhookEvent::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::InboundMessageWebhookEvent::Data]

      # @see Telnyx::Models::InboundMessageWebhookEvent#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Identifies the type of resource.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute event_type
        #   The type of event being delivered.
        #
        #   @return [Symbol, Telnyx::Models::InboundMessageWebhookEvent::Data::EventType, nil]
        optional :event_type, enum: -> { Telnyx::InboundMessageWebhookEvent::Data::EventType }

        # @!attribute occurred_at
        #   ISO 8601 formatted date indicating when the resource was created.
        #
        #   @return [Time, nil]
        optional :occurred_at, Time

        # @!attribute payload
        #
        #   @return [Telnyx::Models::InboundMessageWebhookEvent::Data::Payload, nil]
        optional :payload, -> { Telnyx::InboundMessageWebhookEvent::Data::Payload }

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [Symbol, Telnyx::Models::InboundMessageWebhookEvent::Data::RecordType, nil]
        optional :record_type, enum: -> { Telnyx::InboundMessageWebhookEvent::Data::RecordType }

        # @!method initialize(id: nil, event_type: nil, occurred_at: nil, payload: nil, record_type: nil)
        #   @param id [String] Identifies the type of resource.
        #
        #   @param event_type [Symbol, Telnyx::Models::InboundMessageWebhookEvent::Data::EventType] The type of event being delivered.
        #
        #   @param occurred_at [Time] ISO 8601 formatted date indicating when the resource was created.
        #
        #   @param payload [Telnyx::Models::InboundMessageWebhookEvent::Data::Payload]
        #
        #   @param record_type [Symbol, Telnyx::Models::InboundMessageWebhookEvent::Data::RecordType] Identifies the type of the resource.

        # The type of event being delivered.
        #
        # @see Telnyx::Models::InboundMessageWebhookEvent::Data#event_type
        module EventType
          extend Telnyx::Internal::Type::Enum

          MESSAGE_RECEIVED = :"message.received"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::InboundMessageWebhookEvent::Data#payload
        class Payload < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   Identifies the type of resource.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute cc
          #
          #   @return [Array<Telnyx::Models::InboundMessageWebhookEvent::Data::Payload::Cc>, nil]
          optional :cc,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::InboundMessageWebhookEvent::Data::Payload::Cc] }

          # @!attribute completed_at
          #   Not used for inbound messages.
          #
          #   @return [Time, nil]
          optional :completed_at, Time, nil?: true

          # @!attribute cost
          #
          #   @return [Telnyx::Models::InboundMessageWebhookEvent::Data::Payload::Cost, nil]
          optional :cost, -> { Telnyx::InboundMessageWebhookEvent::Data::Payload::Cost }, nil?: true

          # @!attribute cost_breakdown
          #   Detailed breakdown of the message cost components.
          #
          #   @return [Telnyx::Models::InboundMessageWebhookEvent::Data::Payload::CostBreakdown, nil]
          optional :cost_breakdown,
                   -> { Telnyx::InboundMessageWebhookEvent::Data::Payload::CostBreakdown },
                   nil?: true

          # @!attribute direction
          #   The direction of the message. Inbound messages are sent to you whereas outbound
          #   messages are sent from you.
          #
          #   @return [Symbol, Telnyx::Models::InboundMessageWebhookEvent::Data::Payload::Direction, nil]
          optional :direction, enum: -> { Telnyx::InboundMessageWebhookEvent::Data::Payload::Direction }

          # @!attribute encoding
          #   Encoding scheme used for the message body.
          #
          #   @return [String, nil]
          optional :encoding, String

          # @!attribute errors
          #   These errors may point at addressees when referring to unsuccessful/unconfirmed
          #   delivery statuses.
          #
          #   @return [Array<Telnyx::Models::MessagingError>, nil]
          optional :errors, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::MessagingError] }

          # @!attribute from
          #
          #   @return [Telnyx::Models::InboundMessageWebhookEvent::Data::Payload::From, nil]
          optional :from, -> { Telnyx::InboundMessageWebhookEvent::Data::Payload::From }

          # @!attribute media
          #
          #   @return [Array<Telnyx::Models::InboundMessageWebhookEvent::Data::Payload::Media>, nil]
          optional :media,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::InboundMessageWebhookEvent::Data::Payload::Media] }

          # @!attribute messaging_profile_id
          #   Unique identifier for a messaging profile.
          #
          #   @return [String, nil]
          optional :messaging_profile_id, String

          # @!attribute organization_id
          #   Unique identifier for a messaging profile.
          #
          #   @return [String, nil]
          optional :organization_id, String

          # @!attribute parts
          #   Number of parts into which the message's body must be split.
          #
          #   @return [Integer, nil]
          optional :parts, Integer

          # @!attribute received_at
          #   ISO 8601 formatted date indicating when the message request was received.
          #
          #   @return [Time, nil]
          optional :received_at, Time

          # @!attribute record_type
          #   Identifies the type of the resource.
          #
          #   @return [Symbol, Telnyx::Models::InboundMessageWebhookEvent::Data::Payload::RecordType, nil]
          optional :record_type, enum: -> { Telnyx::InboundMessageWebhookEvent::Data::Payload::RecordType }

          # @!attribute sent_at
          #   Not used for inbound messages.
          #
          #   @return [Time, nil]
          optional :sent_at, Time, nil?: true

          # @!attribute subject
          #   Message subject.
          #
          #   @return [String, nil]
          optional :subject, String, nil?: true

          # @!attribute tags
          #   Tags associated with the resource.
          #
          #   @return [Array<String>, nil]
          optional :tags, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute tcr_campaign_billable
          #   Indicates whether the TCR campaign is billable.
          #
          #   @return [Boolean, nil]
          optional :tcr_campaign_billable, Telnyx::Internal::Type::Boolean

          # @!attribute tcr_campaign_id
          #   The Campaign Registry (TCR) campaign ID associated with the message.
          #
          #   @return [String, nil]
          optional :tcr_campaign_id, String, nil?: true

          # @!attribute tcr_campaign_registered
          #   The registration status of the TCR campaign.
          #
          #   @return [String, nil]
          optional :tcr_campaign_registered, String, nil?: true

          # @!attribute text
          #   Message body (i.e., content) as a non-empty string.
          #
          #   **Required for SMS**
          #
          #   @return [String, nil]
          optional :text, String

          # @!attribute to
          #
          #   @return [Array<Telnyx::Models::InboundMessageWebhookEvent::Data::Payload::To>, nil]
          optional :to,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::InboundMessageWebhookEvent::Data::Payload::To] }

          # @!attribute type
          #   The type of message. This value can be either 'sms' or 'mms'.
          #
          #   @return [Symbol, Telnyx::Models::InboundMessageWebhookEvent::Data::Payload::Type, nil]
          optional :type, enum: -> { Telnyx::InboundMessageWebhookEvent::Data::Payload::Type }

          # @!attribute valid_until
          #   Not used for inbound messages.
          #
          #   @return [Time, nil]
          optional :valid_until, Time, nil?: true

          # @!attribute webhook_failover_url
          #   The failover URL where webhooks related to this message will be sent if sending
          #   to the primary URL fails.
          #
          #   @return [String, nil]
          optional :webhook_failover_url, String, nil?: true

          # @!attribute webhook_url
          #   The URL where webhooks related to this message will be sent.
          #
          #   @return [String, nil]
          optional :webhook_url, String, nil?: true

          # @!method initialize(id: nil, cc: nil, completed_at: nil, cost: nil, cost_breakdown: nil, direction: nil, encoding: nil, errors: nil, from: nil, media: nil, messaging_profile_id: nil, organization_id: nil, parts: nil, received_at: nil, record_type: nil, sent_at: nil, subject: nil, tags: nil, tcr_campaign_billable: nil, tcr_campaign_id: nil, tcr_campaign_registered: nil, text: nil, to: nil, type: nil, valid_until: nil, webhook_failover_url: nil, webhook_url: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::InboundMessageWebhookEvent::Data::Payload} for more details.
          #
          #   @param id [String] Identifies the type of resource.
          #
          #   @param cc [Array<Telnyx::Models::InboundMessageWebhookEvent::Data::Payload::Cc>]
          #
          #   @param completed_at [Time, nil] Not used for inbound messages.
          #
          #   @param cost [Telnyx::Models::InboundMessageWebhookEvent::Data::Payload::Cost, nil]
          #
          #   @param cost_breakdown [Telnyx::Models::InboundMessageWebhookEvent::Data::Payload::CostBreakdown, nil] Detailed breakdown of the message cost components.
          #
          #   @param direction [Symbol, Telnyx::Models::InboundMessageWebhookEvent::Data::Payload::Direction] The direction of the message. Inbound messages are sent to you whereas outbound
          #
          #   @param encoding [String] Encoding scheme used for the message body.
          #
          #   @param errors [Array<Telnyx::Models::MessagingError>] These errors may point at addressees when referring to unsuccessful/unconfirmed
          #
          #   @param from [Telnyx::Models::InboundMessageWebhookEvent::Data::Payload::From]
          #
          #   @param media [Array<Telnyx::Models::InboundMessageWebhookEvent::Data::Payload::Media>]
          #
          #   @param messaging_profile_id [String] Unique identifier for a messaging profile.
          #
          #   @param organization_id [String] Unique identifier for a messaging profile.
          #
          #   @param parts [Integer] Number of parts into which the message's body must be split.
          #
          #   @param received_at [Time] ISO 8601 formatted date indicating when the message request was received.
          #
          #   @param record_type [Symbol, Telnyx::Models::InboundMessageWebhookEvent::Data::Payload::RecordType] Identifies the type of the resource.
          #
          #   @param sent_at [Time, nil] Not used for inbound messages.
          #
          #   @param subject [String, nil] Message subject.
          #
          #   @param tags [Array<String>] Tags associated with the resource.
          #
          #   @param tcr_campaign_billable [Boolean] Indicates whether the TCR campaign is billable.
          #
          #   @param tcr_campaign_id [String, nil] The Campaign Registry (TCR) campaign ID associated with the message.
          #
          #   @param tcr_campaign_registered [String, nil] The registration status of the TCR campaign.
          #
          #   @param text [String] Message body (i.e., content) as a non-empty string.
          #
          #   @param to [Array<Telnyx::Models::InboundMessageWebhookEvent::Data::Payload::To>]
          #
          #   @param type [Symbol, Telnyx::Models::InboundMessageWebhookEvent::Data::Payload::Type] The type of message. This value can be either 'sms' or 'mms'.
          #
          #   @param valid_until [Time, nil] Not used for inbound messages.
          #
          #   @param webhook_failover_url [String, nil] The failover URL where webhooks related to this message will be sent if sending
          #
          #   @param webhook_url [String, nil] The URL where webhooks related to this message will be sent.

          class Cc < Telnyx::Internal::Type::BaseModel
            # @!attribute carrier
            #   The carrier of the receiver.
            #
            #   @return [String, nil]
            optional :carrier, String

            # @!attribute line_type
            #   The line-type of the receiver.
            #
            #   @return [Symbol, Telnyx::Models::InboundMessageWebhookEvent::Data::Payload::Cc::LineType, nil]
            optional :line_type, enum: -> { Telnyx::InboundMessageWebhookEvent::Data::Payload::Cc::LineType }

            # @!attribute phone_number
            #   Receiving address (+E.164 formatted phone number or short code).
            #
            #   @return [String, nil]
            optional :phone_number, String

            # @!attribute status
            #
            #   @return [Symbol, Telnyx::Models::InboundMessageWebhookEvent::Data::Payload::Cc::Status, nil]
            optional :status, enum: -> { Telnyx::InboundMessageWebhookEvent::Data::Payload::Cc::Status }

            # @!method initialize(carrier: nil, line_type: nil, phone_number: nil, status: nil)
            #   @param carrier [String] The carrier of the receiver.
            #
            #   @param line_type [Symbol, Telnyx::Models::InboundMessageWebhookEvent::Data::Payload::Cc::LineType] The line-type of the receiver.
            #
            #   @param phone_number [String] Receiving address (+E.164 formatted phone number or short code).
            #
            #   @param status [Symbol, Telnyx::Models::InboundMessageWebhookEvent::Data::Payload::Cc::Status]

            # The line-type of the receiver.
            #
            # @see Telnyx::Models::InboundMessageWebhookEvent::Data::Payload::Cc#line_type
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

            # @see Telnyx::Models::InboundMessageWebhookEvent::Data::Payload::Cc#status
            module Status
              extend Telnyx::Internal::Type::Enum

              QUEUED = :queued
              SENDING = :sending
              SENT = :sent
              DELIVERED = :delivered
              SENDING_FAILED = :sending_failed
              DELIVERY_FAILED = :delivery_failed
              DELIVERY_UNCONFIRMED = :delivery_unconfirmed

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see Telnyx::Models::InboundMessageWebhookEvent::Data::Payload#cost
          class Cost < Telnyx::Internal::Type::BaseModel
            # @!attribute amount
            #   The amount deducted from your account.
            #
            #   @return [String, nil]
            optional :amount, String

            # @!attribute currency
            #   The ISO 4217 currency identifier.
            #
            #   @return [String, nil]
            optional :currency, String

            # @!method initialize(amount: nil, currency: nil)
            #   @param amount [String] The amount deducted from your account.
            #
            #   @param currency [String] The ISO 4217 currency identifier.
          end

          # @see Telnyx::Models::InboundMessageWebhookEvent::Data::Payload#cost_breakdown
          class CostBreakdown < Telnyx::Internal::Type::BaseModel
            # @!attribute carrier_fee
            #
            #   @return [Telnyx::Models::InboundMessageWebhookEvent::Data::Payload::CostBreakdown::CarrierFee, nil]
            optional :carrier_fee, -> { Telnyx::InboundMessageWebhookEvent::Data::Payload::CostBreakdown::CarrierFee }

            # @!attribute rate
            #
            #   @return [Telnyx::Models::InboundMessageWebhookEvent::Data::Payload::CostBreakdown::Rate, nil]
            optional :rate, -> { Telnyx::InboundMessageWebhookEvent::Data::Payload::CostBreakdown::Rate }

            # @!method initialize(carrier_fee: nil, rate: nil)
            #   Detailed breakdown of the message cost components.
            #
            #   @param carrier_fee [Telnyx::Models::InboundMessageWebhookEvent::Data::Payload::CostBreakdown::CarrierFee]
            #   @param rate [Telnyx::Models::InboundMessageWebhookEvent::Data::Payload::CostBreakdown::Rate]

            # @see Telnyx::Models::InboundMessageWebhookEvent::Data::Payload::CostBreakdown#carrier_fee
            class CarrierFee < Telnyx::Internal::Type::BaseModel
              # @!attribute amount
              #   The carrier fee amount.
              #
              #   @return [String, nil]
              optional :amount, String

              # @!attribute currency
              #   The ISO 4217 currency identifier.
              #
              #   @return [String, nil]
              optional :currency, String

              # @!method initialize(amount: nil, currency: nil)
              #   @param amount [String] The carrier fee amount.
              #
              #   @param currency [String] The ISO 4217 currency identifier.
            end

            # @see Telnyx::Models::InboundMessageWebhookEvent::Data::Payload::CostBreakdown#rate
            class Rate < Telnyx::Internal::Type::BaseModel
              # @!attribute amount
              #   The rate amount applied.
              #
              #   @return [String, nil]
              optional :amount, String

              # @!attribute currency
              #   The ISO 4217 currency identifier.
              #
              #   @return [String, nil]
              optional :currency, String

              # @!method initialize(amount: nil, currency: nil)
              #   @param amount [String] The rate amount applied.
              #
              #   @param currency [String] The ISO 4217 currency identifier.
            end
          end

          # The direction of the message. Inbound messages are sent to you whereas outbound
          # messages are sent from you.
          #
          # @see Telnyx::Models::InboundMessageWebhookEvent::Data::Payload#direction
          module Direction
            extend Telnyx::Internal::Type::Enum

            INBOUND = :inbound

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Telnyx::Models::InboundMessageWebhookEvent::Data::Payload#from
          class From < Telnyx::Internal::Type::BaseModel
            # @!attribute carrier
            #   The carrier of the sender.
            #
            #   @return [String, nil]
            optional :carrier, String

            # @!attribute line_type
            #   The line-type of the sender.
            #
            #   @return [Symbol, Telnyx::Models::InboundMessageWebhookEvent::Data::Payload::From::LineType, nil]
            optional :line_type, enum: -> { Telnyx::InboundMessageWebhookEvent::Data::Payload::From::LineType }

            # @!attribute phone_number
            #   Sending address (+E.164 formatted phone number, alphanumeric sender ID, or short
            #   code).
            #
            #   @return [String, nil]
            optional :phone_number, String

            # @!attribute status
            #
            #   @return [Symbol, Telnyx::Models::InboundMessageWebhookEvent::Data::Payload::From::Status, nil]
            optional :status, enum: -> { Telnyx::InboundMessageWebhookEvent::Data::Payload::From::Status }

            # @!method initialize(carrier: nil, line_type: nil, phone_number: nil, status: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::InboundMessageWebhookEvent::Data::Payload::From} for more
            #   details.
            #
            #   @param carrier [String] The carrier of the sender.
            #
            #   @param line_type [Symbol, Telnyx::Models::InboundMessageWebhookEvent::Data::Payload::From::LineType] The line-type of the sender.
            #
            #   @param phone_number [String] Sending address (+E.164 formatted phone number, alphanumeric sender ID, or short
            #
            #   @param status [Symbol, Telnyx::Models::InboundMessageWebhookEvent::Data::Payload::From::Status]

            # The line-type of the sender.
            #
            # @see Telnyx::Models::InboundMessageWebhookEvent::Data::Payload::From#line_type
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

            # @see Telnyx::Models::InboundMessageWebhookEvent::Data::Payload::From#status
            module Status
              extend Telnyx::Internal::Type::Enum

              RECEIVED = :received
              DELIVERED = :delivered

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class Media < Telnyx::Internal::Type::BaseModel
            # @!attribute content_type
            #   The MIME type of the requested media.
            #
            #   @return [String, nil]
            optional :content_type, String

            # @!attribute hash_sha256
            #   The SHA256 hash of the requested media.
            #
            #   @return [String, nil]
            optional :hash_sha256, String

            # @!attribute size
            #   The size of the requested media.
            #
            #   @return [Integer, nil]
            optional :size, Integer

            # @!attribute url
            #   The url of the media requested to be sent.
            #
            #   @return [String, nil]
            optional :url, String

            # @!method initialize(content_type: nil, hash_sha256: nil, size: nil, url: nil)
            #   @param content_type [String] The MIME type of the requested media.
            #
            #   @param hash_sha256 [String] The SHA256 hash of the requested media.
            #
            #   @param size [Integer] The size of the requested media.
            #
            #   @param url [String] The url of the media requested to be sent.
          end

          # Identifies the type of the resource.
          #
          # @see Telnyx::Models::InboundMessageWebhookEvent::Data::Payload#record_type
          module RecordType
            extend Telnyx::Internal::Type::Enum

            MESSAGE = :message

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          class To < Telnyx::Internal::Type::BaseModel
            # @!attribute carrier
            #   The carrier of the receiver.
            #
            #   @return [String, nil]
            optional :carrier, String

            # @!attribute line_type
            #   The line-type of the receiver.
            #
            #   @return [Symbol, Telnyx::Models::InboundMessageWebhookEvent::Data::Payload::To::LineType, nil]
            optional :line_type, enum: -> { Telnyx::InboundMessageWebhookEvent::Data::Payload::To::LineType }

            # @!attribute phone_number
            #   Receiving address (+E.164 formatted phone number or short code).
            #
            #   @return [String, nil]
            optional :phone_number, String

            # @!attribute status
            #
            #   @return [Symbol, Telnyx::Models::InboundMessageWebhookEvent::Data::Payload::To::Status, nil]
            optional :status, enum: -> { Telnyx::InboundMessageWebhookEvent::Data::Payload::To::Status }

            # @!method initialize(carrier: nil, line_type: nil, phone_number: nil, status: nil)
            #   @param carrier [String] The carrier of the receiver.
            #
            #   @param line_type [Symbol, Telnyx::Models::InboundMessageWebhookEvent::Data::Payload::To::LineType] The line-type of the receiver.
            #
            #   @param phone_number [String] Receiving address (+E.164 formatted phone number or short code).
            #
            #   @param status [Symbol, Telnyx::Models::InboundMessageWebhookEvent::Data::Payload::To::Status]

            # The line-type of the receiver.
            #
            # @see Telnyx::Models::InboundMessageWebhookEvent::Data::Payload::To#line_type
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

            # @see Telnyx::Models::InboundMessageWebhookEvent::Data::Payload::To#status
            module Status
              extend Telnyx::Internal::Type::Enum

              QUEUED = :queued
              SENDING = :sending
              SENT = :sent
              DELIVERED = :delivered
              SENDING_FAILED = :sending_failed
              DELIVERY_FAILED = :delivery_failed
              DELIVERY_UNCONFIRMED = :delivery_unconfirmed
              WEBHOOK_DELIVERED = :webhook_delivered

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # The type of message. This value can be either 'sms' or 'mms'.
          #
          # @see Telnyx::Models::InboundMessageWebhookEvent::Data::Payload#type
          module Type
            extend Telnyx::Internal::Type::Enum

            SMS = :SMS
            MMS = :MMS

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # Identifies the type of the resource.
        #
        # @see Telnyx::Models::InboundMessageWebhookEvent::Data#record_type
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
