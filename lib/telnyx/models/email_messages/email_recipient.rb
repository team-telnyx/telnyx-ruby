# frozen_string_literal: true

module Telnyx
  module Models
    module EmailMessages
      # @see Telnyx::Resources::EmailMessages::Recipients#list
      class EmailRecipient < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Recipient UUID.
        #
        #   @return [String]
        required :id, String

        # @!attribute address
        #   Recipient email address. Null for BCC recipients (redacted for privacy).
        #
        #   @return [String, nil]
        required :address, String, nil?: true

        # @!attribute billable
        #   Whether this recipient's delivery is billable (set on queue acceptance).
        #
        #   @return [Boolean]
        required :billable, Telnyx::Internal::Type::Boolean

        # @!attribute kind
        #
        #   @return [Symbol, Telnyx::Models::EmailMessages::EmailRecipient::Kind]
        required :kind, enum: -> { Telnyx::EmailMessages::EmailRecipient::Kind }

        # @!attribute message_id
        #   Parent email message UUID.
        #
        #   @return [String]
        required :message_id, String

        # @!attribute record_type
        #
        #   @return [Symbol, Telnyx::Models::EmailMessages::EmailRecipient::RecordType]
        required :record_type, enum: -> { Telnyx::EmailMessages::EmailRecipient::RecordType }

        # @!attribute status
        #   Current per-recipient delivery status.
        #
        #   @return [Symbol, Telnyx::Models::EmailMessages::EmailRecipient::Status]
        required :status, enum: -> { Telnyx::EmailMessages::EmailRecipient::Status }

        # @!attribute delivered_at
        #
        #   @return [Time, nil]
        optional :delivered_at, Time, nil?: true

        # @!attribute failed_at
        #
        #   @return [Time, nil]
        optional :failed_at, Time, nil?: true

        # @!attribute sent_at
        #
        #   @return [Time, nil]
        optional :sent_at, Time, nil?: true

        # @!attribute smtp_code
        #   SMTP response code when available (e.g. 550 for bounces).
        #
        #   @return [Integer, nil]
        optional :smtp_code, Integer, nil?: true

        # @!attribute smtp_response
        #   SMTP response message when available.
        #
        #   @return [String, nil]
        optional :smtp_response, String, nil?: true

        # @!method initialize(id:, address:, billable:, kind:, message_id:, record_type:, status:, delivered_at: nil, failed_at: nil, sent_at: nil, smtp_code: nil, smtp_response: nil)
        #   @param id [String] Recipient UUID.
        #
        #   @param address [String, nil] Recipient email address. Null for BCC recipients (redacted for privacy).
        #
        #   @param billable [Boolean] Whether this recipient's delivery is billable (set on queue acceptance).
        #
        #   @param kind [Symbol, Telnyx::Models::EmailMessages::EmailRecipient::Kind]
        #
        #   @param message_id [String] Parent email message UUID.
        #
        #   @param record_type [Symbol, Telnyx::Models::EmailMessages::EmailRecipient::RecordType]
        #
        #   @param status [Symbol, Telnyx::Models::EmailMessages::EmailRecipient::Status] Current per-recipient delivery status.
        #
        #   @param delivered_at [Time, nil]
        #
        #   @param failed_at [Time, nil]
        #
        #   @param sent_at [Time, nil]
        #
        #   @param smtp_code [Integer, nil] SMTP response code when available (e.g. 550 for bounces).
        #
        #   @param smtp_response [String, nil] SMTP response message when available.

        # @see Telnyx::Models::EmailMessages::EmailRecipient#kind
        module Kind
          extend Telnyx::Internal::Type::Enum

          TO = :to
          CC = :cc
          BCC = :bcc

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::EmailMessages::EmailRecipient#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          EMAIL_RECIPIENT = :email_recipient

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Current per-recipient delivery status.
        #
        # @see Telnyx::Models::EmailMessages::EmailRecipient#status
        module Status
          extend Telnyx::Internal::Type::Enum

          QUEUED = :queued
          SENDING = :sending
          SENT = :sent
          DEFERRED = :deferred
          DELIVERED = :delivered
          BOUNCED = :bounced
          FAILED = :failed
          GW_REJECT = :gw_reject
          CANCELLED = :cancelled

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
