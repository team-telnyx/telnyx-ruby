# frozen_string_literal: true

module Telnyx
  module Models
    module EmailInboxes
      # @see Telnyx::Resources::EmailInboxes::Threads#list
      class InboundThread < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute inbox_id
        #
        #   @return [String]
        required :inbox_id, String

        # @!attribute labels
        #   Mutable thread labels used for agent workflow state. Independent of the labels
        #   on the thread's messages, and distinct from the send-time `tags` on outbound
        #   messages.
        #
        #   @return [Array<String>]
        required :labels, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute last_message_at
        #
        #   @return [Time]
        required :last_message_at, Time

        # @!attribute last_message_id
        #
        #   @return [String]
        required :last_message_id, String

        # @!attribute message_count
        #   Total inbound and outbound messages in the thread.
        #
        #   @return [Integer]
        required :message_count, Integer

        # @!attribute preview
        #
        #   @return [String, nil]
        required :preview, String, nil?: true

        # @!attribute record_type
        #
        #   @return [Symbol, Telnyx::Models::EmailInboxes::InboundThread::RecordType]
        required :record_type, enum: -> { Telnyx::EmailInboxes::InboundThread::RecordType }

        # @!attribute subject
        #
        #   @return [String, nil]
        required :subject, String, nil?: true

        # @!attribute unread_count
        #   Unread inbound messages; outbound messages never increment this count.
        #
        #   @return [Integer]
        required :unread_count, Integer

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!method initialize(id:, created_at:, inbox_id:, labels:, last_message_at:, last_message_id:, message_count:, preview:, record_type:, subject:, unread_count:, updated_at:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::EmailInboxes::InboundThread} for more details.
        #
        #   @param id [String]
        #
        #   @param created_at [Time]
        #
        #   @param inbox_id [String]
        #
        #   @param labels [Array<String>] Mutable thread labels used for agent workflow state. Independent of the labels o
        #
        #   @param last_message_at [Time]
        #
        #   @param last_message_id [String]
        #
        #   @param message_count [Integer] Total inbound and outbound messages in the thread.
        #
        #   @param preview [String, nil]
        #
        #   @param record_type [Symbol, Telnyx::Models::EmailInboxes::InboundThread::RecordType]
        #
        #   @param subject [String, nil]
        #
        #   @param unread_count [Integer] Unread inbound messages; outbound messages never increment this count.
        #
        #   @param updated_at [Time]

        # @see Telnyx::Models::EmailInboxes::InboundThread#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          EMAIL_THREAD = :email_thread

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
