# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Messages#cancel_scheduled
    class MessageCancelScheduledResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Identifies the type of resource.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute cc
      #
      #   @return [Array<Telnyx::Models::MessageCancelScheduledResponse::Cc>, nil]
      optional :cc, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::MessageCancelScheduledResponse::Cc] }

      # @!attribute completed_at
      #   ISO 8601 formatted date indicating when the message was finalized.
      #
      #   @return [Time, nil]
      optional :completed_at, Time, nil?: true

      # @!attribute cost
      #
      #   @return [Telnyx::Models::MessageCancelScheduledResponse::Cost, nil]
      optional :cost, -> { Telnyx::Models::MessageCancelScheduledResponse::Cost }, nil?: true

      # @!attribute cost_breakdown
      #   Detailed breakdown of the message cost components.
      #
      #   @return [Telnyx::Models::MessageCancelScheduledResponse::CostBreakdown, nil]
      optional :cost_breakdown, -> { Telnyx::Models::MessageCancelScheduledResponse::CostBreakdown }, nil?: true

      # @!attribute direction
      #   The direction of the message. Inbound messages are sent to you whereas outbound
      #   messages are sent from you.
      #
      #   @return [Symbol, Telnyx::Models::MessageCancelScheduledResponse::Direction, nil]
      optional :direction, enum: -> { Telnyx::Models::MessageCancelScheduledResponse::Direction }

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
      #   @return [Telnyx::Models::MessageCancelScheduledResponse::From, nil]
      optional :from, -> { Telnyx::Models::MessageCancelScheduledResponse::From }

      # @!attribute media
      #
      #   @return [Array<Telnyx::Models::MessageCancelScheduledResponse::Media>, nil]
      optional :media,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::MessageCancelScheduledResponse::Media] }

      # @!attribute messaging_profile_id
      #   Unique identifier for a messaging profile.
      #
      #   @return [String, nil]
      optional :messaging_profile_id, String

      # @!attribute organization_id
      #   The id of the organization the messaging profile belongs to.
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
      #   @return [Symbol, Telnyx::Models::MessageCancelScheduledResponse::RecordType, nil]
      optional :record_type, enum: -> { Telnyx::Models::MessageCancelScheduledResponse::RecordType }

      # @!attribute sent_at
      #   ISO 8601 formatted date indicating when the message was sent.
      #
      #   @return [Time, nil]
      optional :sent_at, Time, nil?: true

      # @!attribute smart_encoding_applied
      #   Indicates whether smart encoding was applied to this message. When `true`, one
      #   or more Unicode characters were automatically replaced with GSM-7 equivalents to
      #   reduce segment count and cost. The original message text is preserved in
      #   webhooks.
      #
      #   @return [Boolean, nil]
      optional :smart_encoding_applied, Telnyx::Internal::Type::Boolean

      # @!attribute subject
      #   Subject of multimedia message
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
      #   @return [Array<Telnyx::Models::MessageCancelScheduledResponse::To>, nil]
      optional :to, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::MessageCancelScheduledResponse::To] }

      # @!attribute type
      #   The type of message.
      #
      #   @return [Symbol, Telnyx::Models::MessageCancelScheduledResponse::Type, nil]
      optional :type, enum: -> { Telnyx::Models::MessageCancelScheduledResponse::Type }

      # @!attribute valid_until
      #   Message must be out of the queue by this time or else it will be discarded and
      #   marked as 'sending_failed'. Once the message moves out of the queue, this field
      #   will be nulled
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

      # @!method initialize(id: nil, cc: nil, completed_at: nil, cost: nil, cost_breakdown: nil, direction: nil, encoding: nil, errors: nil, from: nil, media: nil, messaging_profile_id: nil, organization_id: nil, parts: nil, received_at: nil, record_type: nil, sent_at: nil, smart_encoding_applied: nil, subject: nil, tags: nil, tcr_campaign_billable: nil, tcr_campaign_id: nil, tcr_campaign_registered: nil, text: nil, to: nil, type: nil, valid_until: nil, webhook_failover_url: nil, webhook_url: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::MessageCancelScheduledResponse} for more details.
      #
      #   @param id [String] Identifies the type of resource.
      #
      #   @param cc [Array<Telnyx::Models::MessageCancelScheduledResponse::Cc>]
      #
      #   @param completed_at [Time, nil] ISO 8601 formatted date indicating when the message was finalized.
      #
      #   @param cost [Telnyx::Models::MessageCancelScheduledResponse::Cost, nil]
      #
      #   @param cost_breakdown [Telnyx::Models::MessageCancelScheduledResponse::CostBreakdown, nil] Detailed breakdown of the message cost components.
      #
      #   @param direction [Symbol, Telnyx::Models::MessageCancelScheduledResponse::Direction] The direction of the message. Inbound messages are sent to you whereas outbound
      #
      #   @param encoding [String] Encoding scheme used for the message body.
      #
      #   @param errors [Array<Telnyx::Models::MessagingError>] These errors may point at addressees when referring to unsuccessful/unconfirmed
      #
      #   @param from [Telnyx::Models::MessageCancelScheduledResponse::From]
      #
      #   @param media [Array<Telnyx::Models::MessageCancelScheduledResponse::Media>]
      #
      #   @param messaging_profile_id [String] Unique identifier for a messaging profile.
      #
      #   @param organization_id [String] The id of the organization the messaging profile belongs to.
      #
      #   @param parts [Integer] Number of parts into which the message's body must be split.
      #
      #   @param received_at [Time] ISO 8601 formatted date indicating when the message request was received.
      #
      #   @param record_type [Symbol, Telnyx::Models::MessageCancelScheduledResponse::RecordType] Identifies the type of the resource.
      #
      #   @param sent_at [Time, nil] ISO 8601 formatted date indicating when the message was sent.
      #
      #   @param smart_encoding_applied [Boolean] Indicates whether smart encoding was applied to this message. When `true`, one o
      #
      #   @param subject [String, nil] Subject of multimedia message
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
      #   @param to [Array<Telnyx::Models::MessageCancelScheduledResponse::To>]
      #
      #   @param type [Symbol, Telnyx::Models::MessageCancelScheduledResponse::Type] The type of message.
      #
      #   @param valid_until [Time, nil] Message must be out of the queue by this time or else it will be discarded and m
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
        #   @return [Symbol, Telnyx::Models::MessageCancelScheduledResponse::Cc::LineType, nil]
        optional :line_type, enum: -> { Telnyx::Models::MessageCancelScheduledResponse::Cc::LineType }

        # @!attribute phone_number
        #   Receiving address (+E.164 formatted phone number or short code).
        #
        #   @return [String, nil]
        optional :phone_number, String

        # @!attribute status
        #   The delivery status of the message.
        #
        #   @return [Symbol, Telnyx::Models::MessageCancelScheduledResponse::Cc::Status, nil]
        optional :status, enum: -> { Telnyx::Models::MessageCancelScheduledResponse::Cc::Status }

        # @!method initialize(carrier: nil, line_type: nil, phone_number: nil, status: nil)
        #   @param carrier [String] The carrier of the receiver.
        #
        #   @param line_type [Symbol, Telnyx::Models::MessageCancelScheduledResponse::Cc::LineType] The line-type of the receiver.
        #
        #   @param phone_number [String] Receiving address (+E.164 formatted phone number or short code).
        #
        #   @param status [Symbol, Telnyx::Models::MessageCancelScheduledResponse::Cc::Status] The delivery status of the message.

        # The line-type of the receiver.
        #
        # @see Telnyx::Models::MessageCancelScheduledResponse::Cc#line_type
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

        # The delivery status of the message.
        #
        # @see Telnyx::Models::MessageCancelScheduledResponse::Cc#status
        module Status
          extend Telnyx::Internal::Type::Enum

          SCHEDULED = :scheduled
          QUEUED = :queued
          SENDING = :sending
          SENT = :sent
          CANCELLED = :cancelled
          EXPIRED = :expired
          SENDING_FAILED = :sending_failed
          DELIVERY_UNCONFIRMED = :delivery_unconfirmed
          DELIVERED = :delivered
          DELIVERY_FAILED = :delivery_failed

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see Telnyx::Models::MessageCancelScheduledResponse#cost
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

      # @see Telnyx::Models::MessageCancelScheduledResponse#cost_breakdown
      class CostBreakdown < Telnyx::Internal::Type::BaseModel
        # @!attribute carrier_fee
        #
        #   @return [Telnyx::Models::MessageCancelScheduledResponse::CostBreakdown::CarrierFee, nil]
        optional :carrier_fee, -> { Telnyx::Models::MessageCancelScheduledResponse::CostBreakdown::CarrierFee }

        # @!attribute rate
        #
        #   @return [Telnyx::Models::MessageCancelScheduledResponse::CostBreakdown::Rate, nil]
        optional :rate, -> { Telnyx::Models::MessageCancelScheduledResponse::CostBreakdown::Rate }

        # @!method initialize(carrier_fee: nil, rate: nil)
        #   Detailed breakdown of the message cost components.
        #
        #   @param carrier_fee [Telnyx::Models::MessageCancelScheduledResponse::CostBreakdown::CarrierFee]
        #   @param rate [Telnyx::Models::MessageCancelScheduledResponse::CostBreakdown::Rate]

        # @see Telnyx::Models::MessageCancelScheduledResponse::CostBreakdown#carrier_fee
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

        # @see Telnyx::Models::MessageCancelScheduledResponse::CostBreakdown#rate
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
      # @see Telnyx::Models::MessageCancelScheduledResponse#direction
      module Direction
        extend Telnyx::Internal::Type::Enum

        OUTBOUND = :outbound

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::MessageCancelScheduledResponse#from
      class From < Telnyx::Internal::Type::BaseModel
        # @!attribute carrier
        #   The carrier of the receiver.
        #
        #   @return [String, nil]
        optional :carrier, String

        # @!attribute line_type
        #   The line-type of the receiver.
        #
        #   @return [Symbol, Telnyx::Models::MessageCancelScheduledResponse::From::LineType, nil]
        optional :line_type, enum: -> { Telnyx::Models::MessageCancelScheduledResponse::From::LineType }

        # @!attribute phone_number
        #   Sending address (+E.164 formatted phone number, alphanumeric sender ID, or short
        #   code).
        #
        #   @return [String, nil]
        optional :phone_number, String

        # @!method initialize(carrier: nil, line_type: nil, phone_number: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::MessageCancelScheduledResponse::From} for more details.
        #
        #   @param carrier [String] The carrier of the receiver.
        #
        #   @param line_type [Symbol, Telnyx::Models::MessageCancelScheduledResponse::From::LineType] The line-type of the receiver.
        #
        #   @param phone_number [String] Sending address (+E.164 formatted phone number, alphanumeric sender ID, or short

        # The line-type of the receiver.
        #
        # @see Telnyx::Models::MessageCancelScheduledResponse::From#line_type
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
      end

      class Media < Telnyx::Internal::Type::BaseModel
        # @!attribute content_type
        #   The MIME type of the requested media.
        #
        #   @return [String, nil]
        optional :content_type, String, nil?: true

        # @!attribute sha256
        #   The SHA256 hash of the requested media.
        #
        #   @return [String, nil]
        optional :sha256, String, nil?: true

        # @!attribute size
        #   The size of the requested media.
        #
        #   @return [Integer, nil]
        optional :size, Integer, nil?: true

        # @!attribute url
        #   The url of the media requested to be sent.
        #
        #   @return [String, nil]
        optional :url, String

        # @!method initialize(content_type: nil, sha256: nil, size: nil, url: nil)
        #   @param content_type [String, nil] The MIME type of the requested media.
        #
        #   @param sha256 [String, nil] The SHA256 hash of the requested media.
        #
        #   @param size [Integer, nil] The size of the requested media.
        #
        #   @param url [String] The url of the media requested to be sent.
      end

      # Identifies the type of the resource.
      #
      # @see Telnyx::Models::MessageCancelScheduledResponse#record_type
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
        #   @return [Symbol, Telnyx::Models::MessageCancelScheduledResponse::To::LineType, nil]
        optional :line_type, enum: -> { Telnyx::Models::MessageCancelScheduledResponse::To::LineType }

        # @!attribute phone_number
        #   Receiving address (+E.164 formatted phone number or short code).
        #
        #   @return [String, nil]
        optional :phone_number, String

        # @!attribute status
        #   The delivery status of the message.
        #
        #   @return [Symbol, Telnyx::Models::MessageCancelScheduledResponse::To::Status, nil]
        optional :status, enum: -> { Telnyx::Models::MessageCancelScheduledResponse::To::Status }

        # @!method initialize(carrier: nil, line_type: nil, phone_number: nil, status: nil)
        #   @param carrier [String] The carrier of the receiver.
        #
        #   @param line_type [Symbol, Telnyx::Models::MessageCancelScheduledResponse::To::LineType] The line-type of the receiver.
        #
        #   @param phone_number [String] Receiving address (+E.164 formatted phone number or short code).
        #
        #   @param status [Symbol, Telnyx::Models::MessageCancelScheduledResponse::To::Status] The delivery status of the message.

        # The line-type of the receiver.
        #
        # @see Telnyx::Models::MessageCancelScheduledResponse::To#line_type
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

        # The delivery status of the message.
        #
        # @see Telnyx::Models::MessageCancelScheduledResponse::To#status
        module Status
          extend Telnyx::Internal::Type::Enum

          SCHEDULED = :scheduled
          QUEUED = :queued
          SENDING = :sending
          SENT = :sent
          CANCELLED = :cancelled
          EXPIRED = :expired
          SENDING_FAILED = :sending_failed
          DELIVERY_UNCONFIRMED = :delivery_unconfirmed
          DELIVERED = :delivered
          DELIVERY_FAILED = :delivery_failed

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # The type of message.
      #
      # @see Telnyx::Models::MessageCancelScheduledResponse#type
      module Type
        extend Telnyx::Internal::Type::Enum

        SMS = :SMS
        MMS = :MMS

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
