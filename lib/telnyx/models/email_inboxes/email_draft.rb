# frozen_string_literal: true

module Telnyx
  module Models
    module EmailInboxes
      # @see Telnyx::Resources::EmailInboxes::Drafts#list
      class EmailDraft < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute inbox_id
        #
        #   @return [String]
        required :inbox_id, String

        # @!attribute record_type
        #
        #   @return [Symbol, Telnyx::Models::EmailInboxes::EmailDraft::RecordType]
        required :record_type, enum: -> { Telnyx::EmailInboxes::EmailDraft::RecordType }

        # @!attribute status
        #   `draft` until the draft is sent. A sent draft is retained for audit and becomes
        #   immutable.
        #
        #   @return [Symbol, Telnyx::Models::EmailInboxes::EmailDraft::Status]
        required :status, enum: -> { Telnyx::EmailInboxes::EmailDraft::Status }

        # @!attribute attachments
        #
        #   @return [Array<Hash{Symbol=>Object}>, nil]
        optional :attachments,
                 Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]]

        # @!attribute bcc
        #
        #   @return [Array<Telnyx::Models::EmailInboxes::EmailAddress>, nil]
        optional :bcc, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::EmailInboxes::EmailAddress] }

        # @!attribute cc
        #
        #   @return [Array<Telnyx::Models::EmailInboxes::EmailAddress>, nil]
        optional :cc, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::EmailInboxes::EmailAddress] }

        # @!attribute created_at
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute from
        #   Sender address. Defaults to the inbox address at send time when null.
        #
        #   @return [String, nil]
        optional :from, String, nil?: true

        # @!attribute from_name
        #
        #   @return [String, nil]
        optional :from_name, String, nil?: true

        # @!attribute headers
        #   Custom headers. Reply drafts carry `In-Reply-To` and `References`.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :headers, Telnyx::Internal::Type::HashOf[String]

        # @!attribute html_body
        #
        #   @return [String, nil]
        optional :html_body, String, nil?: true

        # @!attribute labels
        #   Mutable mailbox-state labels. Not propagated to Email Detail Records.
        #
        #   @return [Array<String>, nil]
        optional :labels, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute metadata
        #   Arbitrary customer-defined metadata.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :metadata, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!attribute reply_to
        #
        #   @return [String, nil]
        optional :reply_to, String, nil?: true

        # @!attribute reply_to_message_id
        #   Inbound message this draft replies to. Server-owned; set only on reply drafts.
        #
        #   @return [String, nil]
        optional :reply_to_message_id, String, nil?: true

        # @!attribute sent_at
        #
        #   @return [Time, nil]
        optional :sent_at, Time, nil?: true

        # @!attribute sent_message_id
        #   The email message created when this draft was sent.
        #
        #   @return [String, nil]
        optional :sent_message_id, String, nil?: true

        # @!attribute subject
        #
        #   @return [String, nil]
        optional :subject, String, nil?: true

        # @!attribute tags
        #   Transport/reporting attribution tags, propagated to Email Detail Records at send
        #   time.
        #
        #   @return [Array<String>, nil]
        optional :tags, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute text_body
        #
        #   @return [String, nil]
        optional :text_body, String, nil?: true

        # @!attribute thread_id
        #   Conversation thread inherited from the parent message.
        #
        #   @return [String, nil]
        optional :thread_id, String, nil?: true

        # @!attribute to
        #
        #   @return [Array<Telnyx::Models::EmailInboxes::EmailAddress>, nil]
        optional :to, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::EmailInboxes::EmailAddress] }

        # @!attribute updated_at
        #
        #   @return [Time, nil]
        optional :updated_at, Time

        # @!method initialize(id:, inbox_id:, record_type:, status:, attachments: nil, bcc: nil, cc: nil, created_at: nil, from: nil, from_name: nil, headers: nil, html_body: nil, labels: nil, metadata: nil, reply_to: nil, reply_to_message_id: nil, sent_at: nil, sent_message_id: nil, subject: nil, tags: nil, text_body: nil, thread_id: nil, to: nil, updated_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::EmailInboxes::EmailDraft} for more details.
        #
        #   An unsent, mutable draft message belonging to an inbox.
        #
        #   @param id [String]
        #
        #   @param inbox_id [String]
        #
        #   @param record_type [Symbol, Telnyx::Models::EmailInboxes::EmailDraft::RecordType]
        #
        #   @param status [Symbol, Telnyx::Models::EmailInboxes::EmailDraft::Status] `draft` until the draft is sent. A sent draft is retained for audit and
        #
        #   @param attachments [Array<Hash{Symbol=>Object}>]
        #
        #   @param bcc [Array<Telnyx::Models::EmailInboxes::EmailAddress>]
        #
        #   @param cc [Array<Telnyx::Models::EmailInboxes::EmailAddress>]
        #
        #   @param created_at [Time]
        #
        #   @param from [String, nil] Sender address. Defaults to the inbox address at send time when null.
        #
        #   @param from_name [String, nil]
        #
        #   @param headers [Hash{Symbol=>String}] Custom headers. Reply drafts carry `In-Reply-To` and `References`.
        #
        #   @param html_body [String, nil]
        #
        #   @param labels [Array<String>] Mutable mailbox-state labels. Not propagated to Email Detail Records.
        #
        #   @param metadata [Hash{Symbol=>Object}] Arbitrary customer-defined metadata.
        #
        #   @param reply_to [String, nil]
        #
        #   @param reply_to_message_id [String, nil] Inbound message this draft replies to. Server-owned; set only on reply drafts.
        #
        #   @param sent_at [Time, nil]
        #
        #   @param sent_message_id [String, nil] The email message created when this draft was sent.
        #
        #   @param subject [String, nil]
        #
        #   @param tags [Array<String>] Transport/reporting attribution tags, propagated to Email Detail Records at send
        #
        #   @param text_body [String, nil]
        #
        #   @param thread_id [String, nil] Conversation thread inherited from the parent message.
        #
        #   @param to [Array<Telnyx::Models::EmailInboxes::EmailAddress>]
        #
        #   @param updated_at [Time]

        # @see Telnyx::Models::EmailInboxes::EmailDraft#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          EMAIL_DRAFT = :email_draft

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # `draft` until the draft is sent. A sent draft is retained for audit and becomes
        # immutable.
        #
        # @see Telnyx::Models::EmailInboxes::EmailDraft#status
        module Status
          extend Telnyx::Internal::Type::Enum

          DRAFT = :draft
          SENDING = :sending
          SENT = :sent

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
