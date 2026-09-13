# frozen_string_literal: true

module Telnyx
  module Models
    class MessagingInboundMessagePayload < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Identifies the type of resource.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute body
      #   WhatsApp message body. For message edits and revocations, inspect `type` and the
      #   corresponding `edit` or `revoke` object.
      #
      #   @return [Telnyx::Models::MessagingInboundMessagePayload::Body, nil]
      optional :body, -> { Telnyx::MessagingInboundMessagePayload::Body }

      # @!attribute cc
      #
      #   @return [Array<Telnyx::Models::MessagingInboundMessagePayload::Cc>, nil]
      optional :cc, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::MessagingInboundMessagePayload::Cc] }

      # @!attribute completed_at
      #   Not used for inbound messages.
      #
      #   @return [Time, nil]
      optional :completed_at, Time, nil?: true

      # @!attribute cost
      #
      #   @return [Telnyx::Models::MessagingInboundMessagePayload::Cost, nil]
      optional :cost, -> { Telnyx::MessagingInboundMessagePayload::Cost }, nil?: true

      # @!attribute cost_breakdown
      #   Detailed breakdown of the message cost components.
      #
      #   @return [Telnyx::Models::MessagingInboundMessagePayload::CostBreakdown, nil]
      optional :cost_breakdown, -> { Telnyx::MessagingInboundMessagePayload::CostBreakdown }, nil?: true

      # @!attribute direction
      #   The direction of the message. Inbound messages are sent to you whereas outbound
      #   messages are sent from you.
      #
      #   @return [Symbol, Telnyx::Models::MessagingInboundMessagePayload::Direction, nil]
      optional :direction, enum: -> { Telnyx::MessagingInboundMessagePayload::Direction }

      # @!attribute encoding
      #   Encoding scheme used for the message body.
      #
      #   @return [String, nil]
      optional :encoding, String

      # @!attribute errors
      #   These errors may point at addressees when referring to unsuccessful/unconfirmed
      #   delivery statuses.
      #
      #   @return [Array<Telnyx::Models::MessagingError0b38e7044b>, nil]
      optional :errors, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::MessagingError0b38e7044b] }

      # @!attribute from
      #
      #   @return [Telnyx::Models::MessagingInboundMessagePayload::From, nil]
      optional :from, -> { Telnyx::MessagingInboundMessagePayload::From }

      # @!attribute media
      #
      #   @return [Array<Telnyx::Models::MessagingInboundMessagePayload::Media>, nil]
      optional :media, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::MessagingInboundMessagePayload::Media] }

      # @!attribute messaging_profile_id
      #   Unique identifier for a messaging profile.
      #
      #   @return [String, nil]
      optional :messaging_profile_id, String

      # @!attribute num_chars
      #   The number of characters in the message text
      #
      #   @return [Integer, nil]
      optional :num_chars, Integer

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
      #   @return [Symbol, Telnyx::Models::MessagingInboundMessagePayload::RecordType, nil]
      optional :record_type, enum: -> { Telnyx::MessagingInboundMessagePayload::RecordType }

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
      #   Receiving address. SMS and MMS webhooks use an array of recipients. WhatsApp
      #   webhooks use one E.164 phone number.
      #
      #   @return [Array<Telnyx::Models::MessagingInboundMessagePayload::To::UnionMember0>, String, nil]
      optional :to, union: -> { Telnyx::MessagingInboundMessagePayload::To }

      # @!attribute type
      #   The messaging channel used for the message.
      #
      #   @return [Symbol, Telnyx::Models::MessagingInboundMessagePayload::Type, nil]
      optional :type, enum: -> { Telnyx::MessagingInboundMessagePayload::Type }

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

      # @!method initialize(id: nil, body: nil, cc: nil, completed_at: nil, cost: nil, cost_breakdown: nil, direction: nil, encoding: nil, errors: nil, from: nil, media: nil, messaging_profile_id: nil, num_chars: nil, organization_id: nil, parts: nil, received_at: nil, record_type: nil, sent_at: nil, subject: nil, tags: nil, tcr_campaign_billable: nil, tcr_campaign_id: nil, tcr_campaign_registered: nil, text: nil, to: nil, type: nil, valid_until: nil, webhook_failover_url: nil, webhook_url: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::MessagingInboundMessagePayload} for more details.
      #
      #   @param id [String] Identifies the type of resource.
      #
      #   @param body [Telnyx::Models::MessagingInboundMessagePayload::Body] WhatsApp message body. For message edits and revocations, inspect `type` and the
      #
      #   @param cc [Array<Telnyx::Models::MessagingInboundMessagePayload::Cc>]
      #
      #   @param completed_at [Time, nil] Not used for inbound messages.
      #
      #   @param cost [Telnyx::Models::MessagingInboundMessagePayload::Cost, nil]
      #
      #   @param cost_breakdown [Telnyx::Models::MessagingInboundMessagePayload::CostBreakdown, nil] Detailed breakdown of the message cost components.
      #
      #   @param direction [Symbol, Telnyx::Models::MessagingInboundMessagePayload::Direction] The direction of the message. Inbound messages are sent to you whereas outbound
      #
      #   @param encoding [String] Encoding scheme used for the message body.
      #
      #   @param errors [Array<Telnyx::Models::MessagingError0b38e7044b>] These errors may point at addressees when referring to unsuccessful/unconfirmed
      #
      #   @param from [Telnyx::Models::MessagingInboundMessagePayload::From]
      #
      #   @param media [Array<Telnyx::Models::MessagingInboundMessagePayload::Media>]
      #
      #   @param messaging_profile_id [String] Unique identifier for a messaging profile.
      #
      #   @param num_chars [Integer] The number of characters in the message text
      #
      #   @param organization_id [String] Unique identifier for a messaging profile.
      #
      #   @param parts [Integer] Number of parts into which the message's body must be split.
      #
      #   @param received_at [Time] ISO 8601 formatted date indicating when the message request was received.
      #
      #   @param record_type [Symbol, Telnyx::Models::MessagingInboundMessagePayload::RecordType] Identifies the type of the resource.
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
      #   @param to [Array<Telnyx::Models::MessagingInboundMessagePayload::To::UnionMember0>, String] Receiving address. SMS and MMS webhooks use an array of recipients. WhatsApp web
      #
      #   @param type [Symbol, Telnyx::Models::MessagingInboundMessagePayload::Type] The messaging channel used for the message.
      #
      #   @param valid_until [Time, nil] Not used for inbound messages.
      #
      #   @param webhook_failover_url [String, nil] The failover URL where webhooks related to this message will be sent if sending
      #
      #   @param webhook_url [String, nil] The URL where webhooks related to this message will be sent.

      # @see Telnyx::Models::MessagingInboundMessagePayload#body
      class Body < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Telnyx identifier for this webhook message.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute edit
        #   Details for an edited WhatsApp message.
        #
        #   @return [Telnyx::Models::MessagingInboundMessagePayload::Body::Edit, nil]
        optional :edit, -> { Telnyx::MessagingInboundMessagePayload::Body::Edit }

        # @!attribute foreign_id
        #   Meta WhatsApp message identifier for this webhook event.
        #
        #   @return [String, nil]
        optional :foreign_id, String

        # @!attribute from
        #   WhatsApp sender in E.164 format.
        #
        #   @return [String, nil]
        optional :from, String

        # @!attribute revoke
        #   Details for a revoked WhatsApp message.
        #
        #   @return [Telnyx::Models::MessagingInboundMessagePayload::Body::Revoke, nil]
        optional :revoke, -> { Telnyx::MessagingInboundMessagePayload::Body::Revoke }

        # @!attribute timestamp
        #   Unix timestamp supplied by Meta.
        #
        #   @return [String, nil]
        optional :timestamp, String

        # @!attribute type
        #   WhatsApp message body type. Edit and revoke events use `edit` and `revoke`,
        #   respectively.
        #
        #   @return [String, nil]
        optional :type, String

        # @!method initialize(id: nil, edit: nil, foreign_id: nil, from: nil, revoke: nil, timestamp: nil, type: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::MessagingInboundMessagePayload::Body} for more details.
        #
        #   WhatsApp message body. For message edits and revocations, inspect `type` and the
        #   corresponding `edit` or `revoke` object.
        #
        #   @param id [String] Telnyx identifier for this webhook message.
        #
        #   @param edit [Telnyx::Models::MessagingInboundMessagePayload::Body::Edit] Details for an edited WhatsApp message.
        #
        #   @param foreign_id [String] Meta WhatsApp message identifier for this webhook event.
        #
        #   @param from [String] WhatsApp sender in E.164 format.
        #
        #   @param revoke [Telnyx::Models::MessagingInboundMessagePayload::Body::Revoke] Details for a revoked WhatsApp message.
        #
        #   @param timestamp [String] Unix timestamp supplied by Meta.
        #
        #   @param type [String] WhatsApp message body type. Edit and revoke events use `edit` and `revoke`, resp

        # @see Telnyx::Models::MessagingInboundMessagePayload::Body#edit
        class Edit < Telnyx::Internal::Type::BaseModel
          # @!attribute message
          #   Replacement WhatsApp message content. Its shape depends on the message type.
          #
          #   @return [Hash{Symbol=>Object}]
          required :message, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

          # @!attribute original_message_id
          #   Telnyx message ID when a mapping exists, otherwise the original Meta WhatsApp
          #   message ID. Treat this value as opaque.
          #
          #   @return [String]
          required :original_message_id, String

          # @!method initialize(message:, original_message_id:)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::MessagingInboundMessagePayload::Body::Edit} for more details.
          #
          #   Details for an edited WhatsApp message.
          #
          #   @param message [Hash{Symbol=>Object}] Replacement WhatsApp message content. Its shape depends on the message type.
          #
          #   @param original_message_id [String] Telnyx message ID when a mapping exists, otherwise the original Meta WhatsApp me
        end

        # @see Telnyx::Models::MessagingInboundMessagePayload::Body#revoke
        class Revoke < Telnyx::Internal::Type::BaseModel
          # @!attribute original_message_id
          #   Telnyx message ID when a mapping exists, otherwise the original Meta WhatsApp
          #   message ID. Treat this value as opaque.
          #
          #   @return [String]
          required :original_message_id, String

          # @!method initialize(original_message_id:)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::MessagingInboundMessagePayload::Body::Revoke} for more details.
          #
          #   Details for a revoked WhatsApp message.
          #
          #   @param original_message_id [String] Telnyx message ID when a mapping exists, otherwise the original Meta WhatsApp me
        end
      end

      class Cc < Telnyx::Internal::Type::BaseModel
        # @!attribute carrier
        #   The carrier of the receiver.
        #
        #   @return [String, nil]
        optional :carrier, String

        # @!attribute line_type
        #   The line-type of the receiver.
        #
        #   @return [Symbol, Telnyx::Models::MessagingInboundMessagePayload::Cc::LineType, nil]
        optional :line_type, enum: -> { Telnyx::MessagingInboundMessagePayload::Cc::LineType }

        # @!attribute phone_number
        #   Receiving address (+E.164 formatted phone number or short code).
        #
        #   @return [String, nil]
        optional :phone_number, String

        # @!attribute status
        #
        #   @return [Symbol, Telnyx::Models::MessagingInboundMessagePayload::Cc::Status, nil]
        optional :status, enum: -> { Telnyx::MessagingInboundMessagePayload::Cc::Status }

        # @!method initialize(carrier: nil, line_type: nil, phone_number: nil, status: nil)
        #   @param carrier [String] The carrier of the receiver.
        #
        #   @param line_type [Symbol, Telnyx::Models::MessagingInboundMessagePayload::Cc::LineType] The line-type of the receiver.
        #
        #   @param phone_number [String] Receiving address (+E.164 formatted phone number or short code).
        #
        #   @param status [Symbol, Telnyx::Models::MessagingInboundMessagePayload::Cc::Status]

        # The line-type of the receiver.
        #
        # @see Telnyx::Models::MessagingInboundMessagePayload::Cc#line_type
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

        # @see Telnyx::Models::MessagingInboundMessagePayload::Cc#status
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

      # @see Telnyx::Models::MessagingInboundMessagePayload#cost
      class Cost < Telnyx::Internal::Type::BaseModel
        # @!attribute amount
        #   The amount deducted from your account.
        #
        #   @return [String, nil]
        optional :amount, String, nil?: true

        # @!attribute currency
        #   The ISO 4217 currency identifier.
        #
        #   @return [String, nil]
        optional :currency, String, nil?: true

        # @!method initialize(amount: nil, currency: nil)
        #   @param amount [String, nil] The amount deducted from your account.
        #
        #   @param currency [String, nil] The ISO 4217 currency identifier.
      end

      # @see Telnyx::Models::MessagingInboundMessagePayload#cost_breakdown
      class CostBreakdown < Telnyx::Internal::Type::BaseModel
        # @!attribute carrier_fee
        #
        #   @return [Telnyx::Models::MessagingInboundMessagePayload::CostBreakdown::CarrierFee, nil]
        optional :carrier_fee, -> { Telnyx::MessagingInboundMessagePayload::CostBreakdown::CarrierFee }

        # @!attribute rate
        #
        #   @return [Telnyx::Models::MessagingInboundMessagePayload::CostBreakdown::Rate, nil]
        optional :rate, -> { Telnyx::MessagingInboundMessagePayload::CostBreakdown::Rate }

        # @!method initialize(carrier_fee: nil, rate: nil)
        #   Detailed breakdown of the message cost components.
        #
        #   @param carrier_fee [Telnyx::Models::MessagingInboundMessagePayload::CostBreakdown::CarrierFee]
        #   @param rate [Telnyx::Models::MessagingInboundMessagePayload::CostBreakdown::Rate]

        # @see Telnyx::Models::MessagingInboundMessagePayload::CostBreakdown#carrier_fee
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

        # @see Telnyx::Models::MessagingInboundMessagePayload::CostBreakdown#rate
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
      # @see Telnyx::Models::MessagingInboundMessagePayload#direction
      module Direction
        extend Telnyx::Internal::Type::Enum

        INBOUND = :inbound

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::MessagingInboundMessagePayload#from
      class From < Telnyx::Internal::Type::BaseModel
        # @!attribute carrier
        #   The carrier of the sender.
        #
        #   @return [String, nil]
        optional :carrier, String

        # @!attribute line_type
        #   The line-type of the sender.
        #
        #   @return [Symbol, Telnyx::Models::MessagingInboundMessagePayload::From::LineType, nil]
        optional :line_type, enum: -> { Telnyx::MessagingInboundMessagePayload::From::LineType }

        # @!attribute phone_number
        #   Sending address (+E.164 formatted phone number, alphanumeric sender ID, or short
        #   code).
        #
        #   @return [String, nil]
        optional :phone_number, String

        # @!attribute status
        #
        #   @return [Symbol, Telnyx::Models::MessagingInboundMessagePayload::From::Status, nil]
        optional :status, enum: -> { Telnyx::MessagingInboundMessagePayload::From::Status }

        # @!method initialize(carrier: nil, line_type: nil, phone_number: nil, status: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::MessagingInboundMessagePayload::From} for more details.
        #
        #   @param carrier [String] The carrier of the sender.
        #
        #   @param line_type [Symbol, Telnyx::Models::MessagingInboundMessagePayload::From::LineType] The line-type of the sender.
        #
        #   @param phone_number [String] Sending address (+E.164 formatted phone number, alphanumeric sender ID, or short
        #
        #   @param status [Symbol, Telnyx::Models::MessagingInboundMessagePayload::From::Status]

        # The line-type of the sender.
        #
        # @see Telnyx::Models::MessagingInboundMessagePayload::From#line_type
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

        # @see Telnyx::Models::MessagingInboundMessagePayload::From#status
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
      # @see Telnyx::Models::MessagingInboundMessagePayload#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        MESSAGE = :message

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Receiving address. SMS and MMS webhooks use an array of recipients. WhatsApp
      # webhooks use one E.164 phone number.
      #
      # @see Telnyx::Models::MessagingInboundMessagePayload#to
      module To
        extend Telnyx::Internal::Type::Union

        variant -> { Telnyx::Models::MessagingInboundMessagePayload::To::UnionMember0Array }

        # WhatsApp receiving address in E.164 format.
        variant String

        class UnionMember0 < Telnyx::Internal::Type::BaseModel
          # @!attribute carrier
          #   The carrier of the receiver.
          #
          #   @return [String, nil]
          optional :carrier, String

          # @!attribute line_type
          #   The line-type of the receiver.
          #
          #   @return [Symbol, Telnyx::Models::MessagingInboundMessagePayload::To::UnionMember0::LineType, nil]
          optional :line_type, enum: -> { Telnyx::MessagingInboundMessagePayload::To::UnionMember0::LineType }

          # @!attribute phone_number
          #   Receiving address (+E.164 formatted phone number or short code).
          #
          #   @return [String, nil]
          optional :phone_number, String

          # @!attribute status
          #
          #   @return [Symbol, Telnyx::Models::MessagingInboundMessagePayload::To::UnionMember0::Status, nil]
          optional :status, enum: -> { Telnyx::MessagingInboundMessagePayload::To::UnionMember0::Status }

          # @!method initialize(carrier: nil, line_type: nil, phone_number: nil, status: nil)
          #   @param carrier [String] The carrier of the receiver.
          #
          #   @param line_type [Symbol, Telnyx::Models::MessagingInboundMessagePayload::To::UnionMember0::LineType] The line-type of the receiver.
          #
          #   @param phone_number [String] Receiving address (+E.164 formatted phone number or short code).
          #
          #   @param status [Symbol, Telnyx::Models::MessagingInboundMessagePayload::To::UnionMember0::Status]

          # The line-type of the receiver.
          #
          # @see Telnyx::Models::MessagingInboundMessagePayload::To::UnionMember0#line_type
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

          # @see Telnyx::Models::MessagingInboundMessagePayload::To::UnionMember0#status
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

        # @!method self.variants
        #   @return [Array(Array<Telnyx::Models::MessagingInboundMessagePayload::To::UnionMember0>, String)]

        # @type [Telnyx::Internal::Type::Converter]
        UnionMember0Array =
          Telnyx::Internal::Type::ArrayOf[-> { Telnyx::MessagingInboundMessagePayload::To::UnionMember0 }]
      end

      # The messaging channel used for the message.
      #
      # @see Telnyx::Models::MessagingInboundMessagePayload#type
      module Type
        extend Telnyx::Internal::Type::Enum

        SMS = :SMS
        MMS = :MMS
        WHATSAPP = :WHATSAPP

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
