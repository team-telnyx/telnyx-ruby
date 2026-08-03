# frozen_string_literal: true

module Telnyx
  module Models
    module EmailInboxes
      class EmailMessage < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute attachments
        #
        #   @return [Array<Telnyx::Models::EmailInboxes::EmailMessage::Attachment>]
        required :attachments,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::EmailInboxes::EmailMessage::Attachment] }

        # @!attribute bcc
        #
        #   @return [Array<Telnyx::Models::EmailInboxes::EmailAddress>]
        required :bcc, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::EmailInboxes::EmailAddress] }

        # @!attribute cc
        #
        #   @return [Array<Telnyx::Models::EmailInboxes::EmailAddress>]
        required :cc, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::EmailInboxes::EmailAddress] }

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute events
        #
        #   @return [Array<Telnyx::Models::MessageEvent>]
        required :events, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::MessageEvent] }

        # @!attribute from
        #
        #   @return [Telnyx::Models::EmailInboxes::EmailAddress]
        required :from, -> { Telnyx::EmailInboxes::EmailAddress }

        # @!attribute record_type
        #
        #   @return [Symbol, Telnyx::Models::EmailInboxes::EmailMessage::RecordType]
        required :record_type, enum: -> { Telnyx::EmailInboxes::EmailMessage::RecordType }

        # @!attribute reply_to
        #
        #   @return [String, nil]
        required :reply_to, String, nil?: true

        # @!attribute status
        #   Current status of an email message. Lifecycle statuses (queued, scheduled, etc.)
        #   are set on creation. Delivery statuses (delivered, bounced, etc.) are updated by
        #   delivery event consumers.
        #
        #   @return [Symbol, Telnyx::Models::EmailInboxes::EmailMessage::Status]
        required :status, enum: -> { Telnyx::EmailInboxes::EmailMessage::Status }

        # @!attribute subject
        #
        #   @return [String]
        required :subject, String

        # @!attribute template_id
        #
        #   @return [String, nil]
        required :template_id, String, nil?: true

        # @!attribute template_variables
        #
        #   @return [Hash{Symbol=>Object}]
        required :template_variables, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!attribute to
        #
        #   @return [Array<Telnyx::Models::EmailInboxes::EmailAddress>]
        required :to, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::EmailInboxes::EmailAddress] }

        # @!attribute inline_css
        #   Present when true in the immediate create response. Not persisted; absent on
        #   subsequent GET requests.
        #
        #   @return [Boolean, nil]
        optional :inline_css, Telnyx::Internal::Type::Boolean

        # @!attribute recipient_statuses
        #   Per-status recipient counts for the message. Present only for outbound messages
        #   with recipient rows. Keys are recipient statuses, values are counts. Example:
        #   `{"delivered": 998, "bounced": 2}`.
        #
        #   @return [Hash{Symbol=>Integer}, nil]
        optional :recipient_statuses, Telnyx::Internal::Type::HashOf[Integer]

        # @!attribute sandbox
        #   Present when sandbox mode was used.
        #
        #   @return [Boolean, nil]
        optional :sandbox, Telnyx::Internal::Type::Boolean

        # @!attribute scheduled_at
        #   Present when a scheduled_at value was stored. Persists even after the scheduled
        #   send has been processed or cancelled.
        #
        #   @return [Time, nil]
        optional :scheduled_at, Time

        # @!method initialize(id:, attachments:, bcc:, cc:, created_at:, events:, from:, record_type:, reply_to:, status:, subject:, template_id:, template_variables:, to:, inline_css: nil, recipient_statuses: nil, sandbox: nil, scheduled_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::EmailInboxes::EmailMessage} for more details.
        #
        #   @param id [String]
        #
        #   @param attachments [Array<Telnyx::Models::EmailInboxes::EmailMessage::Attachment>]
        #
        #   @param bcc [Array<Telnyx::Models::EmailInboxes::EmailAddress>]
        #
        #   @param cc [Array<Telnyx::Models::EmailInboxes::EmailAddress>]
        #
        #   @param created_at [Time]
        #
        #   @param events [Array<Telnyx::Models::MessageEvent>]
        #
        #   @param from [Telnyx::Models::EmailInboxes::EmailAddress]
        #
        #   @param record_type [Symbol, Telnyx::Models::EmailInboxes::EmailMessage::RecordType]
        #
        #   @param reply_to [String, nil]
        #
        #   @param status [Symbol, Telnyx::Models::EmailInboxes::EmailMessage::Status] Current status of an email message. Lifecycle statuses (queued, scheduled, etc.)
        #
        #   @param subject [String]
        #
        #   @param template_id [String, nil]
        #
        #   @param template_variables [Hash{Symbol=>Object}]
        #
        #   @param to [Array<Telnyx::Models::EmailInboxes::EmailAddress>]
        #
        #   @param inline_css [Boolean] Present when true in the immediate create response. Not persisted; absent on sub
        #
        #   @param recipient_statuses [Hash{Symbol=>Integer}] Per-status recipient counts for the message. Present only for outbound messages
        #
        #   @param sandbox [Boolean] Present when sandbox mode was used.
        #
        #   @param scheduled_at [Time] Present when a scheduled_at value was stored. Persists even after the scheduled

        class Attachment < Telnyx::Internal::Type::BaseModel
          # @!attribute content_id
          #   MIME Content-ID for inline references.
          #
          #   @return [String, nil]
          required :content_id, String, nil?: true

          # @!attribute content_type
          #
          #   @return [String]
          required :content_type, String

          # @!attribute disposition
          #   MIME disposition (e.g. `attachment` or `inline`). Runtime passes through the
          #   stored value without enforcing an enum.
          #
          #   @return [String]
          required :disposition, String

          # @!attribute filename
          #
          #   @return [String]
          required :filename, String

          # @!attribute sha256
          #   SHA-256 hex digest of the attachment content.
          #
          #   @return [String, nil]
          required :sha256, String, nil?: true

          # @!attribute size_bytes
          #   Attachment size in bytes.
          #
          #   @return [Integer, nil]
          required :size_bytes, Integer, nil?: true

          # @!attribute url
          #   Telnyx-hosted public URL for the attachment content.
          #
          #   @return [String, nil]
          required :url, String, nil?: true

          # @!method initialize(content_id:, content_type:, disposition:, filename:, sha256:, size_bytes:, url:)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::EmailInboxes::EmailMessage::Attachment} for more details.
          #
          #   EDR-aligned attachment metadata. The base64 `content` is never returned.
          #
          #   @param content_id [String, nil] MIME Content-ID for inline references.
          #
          #   @param content_type [String]
          #
          #   @param disposition [String] MIME disposition (e.g. `attachment` or `inline`). Runtime passes through the sto
          #
          #   @param filename [String]
          #
          #   @param sha256 [String, nil] SHA-256 hex digest of the attachment content.
          #
          #   @param size_bytes [Integer, nil] Attachment size in bytes.
          #
          #   @param url [String, nil] Telnyx-hosted public URL for the attachment content.
        end

        # @see Telnyx::Models::EmailInboxes::EmailMessage#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          EMAIL_MESSAGE = :email_message

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Current status of an email message. Lifecycle statuses (queued, scheduled, etc.)
        # are set on creation. Delivery statuses (delivered, bounced, etc.) are updated by
        # delivery event consumers.
        #
        # @see Telnyx::Models::EmailInboxes::EmailMessage#status
        module Status
          extend Telnyx::Internal::Type::Enum

          QUEUED = :queued
          SCHEDULED = :scheduled
          CANCELLED = :cancelled
          SANDBOX = :sandbox
          SENDING = :sending
          SENT = :sent
          FAILED = :failed
          DEFERRED = :deferred
          DELIVERED = :delivered
          BOUNCED = :bounced
          COMPLAINED = :complained
          REJECTED = :rejected
          OPENED = :opened
          CLICKED = :clicked
          UNSUBSCRIBED = :unsubscribed

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
