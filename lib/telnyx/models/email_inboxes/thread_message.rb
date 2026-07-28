# frozen_string_literal: true

module Telnyx
  module Models
    module EmailInboxes
      class ThreadMessage < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute attachments
        #
        #   @return [Array<Hash{Symbol=>Object}>]
        required :attachments,
                 Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]]

        # @!attribute bcc
        #
        #   @return [Array<Telnyx::Models::EmailInboxes::InboundEmailAddress>]
        required :bcc, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::EmailInboxes::InboundEmailAddress] }

        # @!attribute cc
        #
        #   @return [Array<Telnyx::Models::EmailInboxes::InboundEmailAddress>]
        required :cc, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::EmailInboxes::InboundEmailAddress] }

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute direction
        #
        #   @return [Symbol, Telnyx::Models::EmailInboxes::ThreadMessage::Direction]
        required :direction, enum: -> { Telnyx::EmailInboxes::ThreadMessage::Direction }

        # @!attribute from
        #
        #   @return [Telnyx::Models::EmailInboxes::InboundEmailAddress]
        required :from, -> { Telnyx::EmailInboxes::InboundEmailAddress }

        # @!attribute has_quoted_text
        #   Whether conservative plain-text extraction detected a quoted tail. False does
        #   not prove that the source contains no quoted content.
        #
        #   @return [Boolean]
        required :has_quoted_text, Telnyx::Internal::Type::Boolean

        # @!attribute headers
        #
        #   @return [Hash{Symbol=>Object}]
        required :headers, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!attribute html_body_url
        #   URL for an offloaded HTML body. Null means the body is not offloaded to a URL;
        #   an inline HTML body may still exist but is not returned on list reads. Reply
        #   extraction uses only the plain-text body during ingest.
        #
        #   @return [String, nil]
        required :html_body_url, String, nil?: true

        # @!attribute in_reply_to
        #
        #   @return [String, nil]
        required :in_reply_to, String, nil?: true

        # @!attribute inbox_id
        #
        #   @return [String]
        required :inbox_id, String

        # @!attribute inline_files
        #
        #   @return [Array<Hash{Symbol=>Object}>]
        required :inline_files,
                 Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]]

        # @!attribute labels
        #   Mutable message labels used for agent workflow state (for example `spam`,
        #   `needs_review`, `processed`). Distinct from the immutable send-time `tags` on
        #   outbound messages: labels are never propagated to Email Detail Records or
        #   Mission Control reporting. Always empty for outbound messages. Labels on a
        #   message are independent of the labels on its thread.
        #
        #   @return [Array<String>]
        required :labels, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute message_id
        #   RFC Message-ID header. Null is possible for legacy outbound messages.
        #
        #   @return [String, nil]
        required :message_id, String, nil?: true

        # @!attribute read_at
        #   Time the inbound message was marked read. Null means unread.
        #
        #   @return [Time, nil]
        required :read_at, Time, nil?: true

        # @!attribute received_at
        #   Receipt time for inbound messages; null for outbound messages.
        #
        #   @return [Time, nil]
        required :received_at, Time, nil?: true

        # @!attribute record_type
        #
        #   @return [Symbol, Telnyx::Models::EmailInboxes::ThreadMessage::RecordType]
        required :record_type, enum: -> { Telnyx::EmailInboxes::ThreadMessage::RecordType }

        # @!attribute references
        #   Ordered RFC Message-ID values from the References header.
        #
        #   @return [Array<String>]
        required :references, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute reply_text
        #   Conservatively extracted new-reply content persisted from the plain-text body
        #   during ingest. Null means no plain-text extraction input was available or
        #   extraction was skipped or failed; HTML bodies are not parsed.
        #
        #   @return [String, nil]
        required :reply_text, String, nil?: true

        # @!attribute reply_to
        #
        #   @return [Array<Telnyx::Models::EmailInboxes::InboundEmailAddress>]
        required :reply_to, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::EmailInboxes::InboundEmailAddress] }

        # @!attribute sent_at
        #   Creation/send-acceptance time for outbound messages; null for inbound messages.
        #
        #   @return [Time, nil]
        required :sent_at, Time, nil?: true

        # @!attribute status
        #   Received for inbound messages; the current send status for outbound messages.
        #
        #   @return [String]
        required :status, String

        # @!attribute subject
        #
        #   @return [String, nil]
        required :subject, String, nil?: true

        # @!attribute text_body_url
        #   URL for an offloaded plain-text body. Null means the body is not offloaded to a
        #   URL; an inline plain-text body may still exist but is not returned on list
        #   reads. `reply_text` and `has_quoted_text` are persisted during ingest before any
        #   body offload.
        #
        #   @return [String, nil]
        required :text_body_url, String, nil?: true

        # @!attribute thread_id
        #
        #   @return [String]
        required :thread_id, String

        # @!attribute to
        #
        #   @return [Array<Telnyx::Models::EmailInboxes::InboundEmailAddress>]
        required :to, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::EmailInboxes::InboundEmailAddress] }

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!method initialize(id:, attachments:, bcc:, cc:, created_at:, direction:, from:, has_quoted_text:, headers:, html_body_url:, in_reply_to:, inbox_id:, inline_files:, labels:, message_id:, read_at:, received_at:, record_type:, references:, reply_text:, reply_to:, sent_at:, status:, subject:, text_body_url:, thread_id:, to:, updated_at:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::EmailInboxes::ThreadMessage} for more details.
        #
        #   @param id [String]
        #
        #   @param attachments [Array<Hash{Symbol=>Object}>]
        #
        #   @param bcc [Array<Telnyx::Models::EmailInboxes::InboundEmailAddress>]
        #
        #   @param cc [Array<Telnyx::Models::EmailInboxes::InboundEmailAddress>]
        #
        #   @param created_at [Time]
        #
        #   @param direction [Symbol, Telnyx::Models::EmailInboxes::ThreadMessage::Direction]
        #
        #   @param from [Telnyx::Models::EmailInboxes::InboundEmailAddress]
        #
        #   @param has_quoted_text [Boolean] Whether conservative plain-text extraction detected a quoted tail. False does no
        #
        #   @param headers [Hash{Symbol=>Object}]
        #
        #   @param html_body_url [String, nil] URL for an offloaded HTML body. Null means the body is not offloaded to a URL; a
        #
        #   @param in_reply_to [String, nil]
        #
        #   @param inbox_id [String]
        #
        #   @param inline_files [Array<Hash{Symbol=>Object}>]
        #
        #   @param labels [Array<String>] Mutable message labels used for agent workflow state (for example `spam`, `needs
        #
        #   @param message_id [String, nil] RFC Message-ID header. Null is possible for legacy outbound messages.
        #
        #   @param read_at [Time, nil] Time the inbound message was marked read. Null means unread.
        #
        #   @param received_at [Time, nil] Receipt time for inbound messages; null for outbound messages.
        #
        #   @param record_type [Symbol, Telnyx::Models::EmailInboxes::ThreadMessage::RecordType]
        #
        #   @param references [Array<String>] Ordered RFC Message-ID values from the References header.
        #
        #   @param reply_text [String, nil] Conservatively extracted new-reply content persisted from the plain-text body du
        #
        #   @param reply_to [Array<Telnyx::Models::EmailInboxes::InboundEmailAddress>]
        #
        #   @param sent_at [Time, nil] Creation/send-acceptance time for outbound messages; null for inbound messages.
        #
        #   @param status [String] Received for inbound messages; the current send status for outbound messages.
        #
        #   @param subject [String, nil]
        #
        #   @param text_body_url [String, nil] URL for an offloaded plain-text body. Null means the body is not offloaded to a
        #
        #   @param thread_id [String]
        #
        #   @param to [Array<Telnyx::Models::EmailInboxes::InboundEmailAddress>]
        #
        #   @param updated_at [Time]

        # @see Telnyx::Models::EmailInboxes::ThreadMessage#direction
        module Direction
          extend Telnyx::Internal::Type::Enum

          INBOUND = :inbound
          OUTBOUND = :outbound

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::EmailInboxes::ThreadMessage#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          EMAIL_MESSAGE = :email_message

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
