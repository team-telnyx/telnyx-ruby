# frozen_string_literal: true

module Telnyx
  module Models
    class InboundMessage < Telnyx::Internal::Type::BaseModel
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
      #   @return [Array<Telnyx::Models::InboundMessage::Bcc>]
      required :bcc, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::InboundMessage::Bcc] }

      # @!attribute cc
      #
      #   @return [Array<Telnyx::Models::InboundMessage::Cc>]
      required :cc, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::InboundMessage::Cc] }

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute direction
      #
      #   @return [Symbol, Telnyx::Models::InboundMessage::Direction]
      required :direction, enum: -> { Telnyx::InboundMessage::Direction }

      # @!attribute from
      #
      #   @return [Telnyx::Models::InboundMessage::From]
      required :from, -> { Telnyx::InboundMessage::From }

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
      #   an inline HTML body may still exist but is not returned on list reads.
      #   `reply_text` and `has_quoted_text` are computed from the inline plain-text body
      #   when present.
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

      # @!attribute message_id
      #   RFC Message-ID header.
      #
      #   @return [String]
      required :message_id, String

      # @!attribute read_at
      #
      #   @return [Time, nil]
      required :read_at, Time, nil?: true

      # @!attribute received_at
      #
      #   @return [Time]
      required :received_at, Time

      # @!attribute record_type
      #
      #   @return [Symbol, Telnyx::Models::InboundMessage::RecordType]
      required :record_type, enum: -> { Telnyx::InboundMessage::RecordType }

      # @!attribute references
      #   Ordered RFC Message-ID values from the References header.
      #
      #   @return [Array<String>]
      required :references, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute reply_text
      #   Conservatively extracted new-reply content from the available plain-text body.
      #   Null means no plain-text body was available because it was absent or offloaded;
      #   HTML bodies are not parsed.
      #
      #   @return [String, nil]
      required :reply_text, String, nil?: true

      # @!attribute reply_to
      #
      #   @return [Array<Telnyx::Models::InboundMessage::ReplyTo>]
      required :reply_to, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::InboundMessage::ReplyTo] }

      # @!attribute status
      #
      #   @return [Symbol, Telnyx::Models::InboundMessage::Status]
      required :status, enum: -> { Telnyx::InboundMessage::Status }

      # @!attribute subject
      #
      #   @return [String, nil]
      required :subject, String, nil?: true

      # @!attribute text_body_url
      #   URL for an offloaded plain-text body. Null means the body is not offloaded to a
      #   URL; an inline plain-text body may still exist but is not returned on list
      #   reads. `reply_text` and `has_quoted_text` are computed from the inline
      #   plain-text body when present.
      #
      #   @return [String, nil]
      required :text_body_url, String, nil?: true

      # @!attribute thread_id
      #
      #   @return [String]
      required :thread_id, String

      # @!attribute to
      #
      #   @return [Array<Telnyx::Models::InboundMessage::To>]
      required :to, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::InboundMessage::To] }

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, attachments:, bcc:, cc:, created_at:, direction:, from:, has_quoted_text:, headers:, html_body_url:, in_reply_to:, inbox_id:, inline_files:, message_id:, read_at:, received_at:, record_type:, references:, reply_text:, reply_to:, status:, subject:, text_body_url:, thread_id:, to:, updated_at:)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::InboundMessage} for more details.
      #
      #   @param id [String]
      #
      #   @param attachments [Array<Hash{Symbol=>Object}>]
      #
      #   @param bcc [Array<Telnyx::Models::InboundMessage::Bcc>]
      #
      #   @param cc [Array<Telnyx::Models::InboundMessage::Cc>]
      #
      #   @param created_at [Time]
      #
      #   @param direction [Symbol, Telnyx::Models::InboundMessage::Direction]
      #
      #   @param from [Telnyx::Models::InboundMessage::From]
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
      #   @param message_id [String] RFC Message-ID header.
      #
      #   @param read_at [Time, nil]
      #
      #   @param received_at [Time]
      #
      #   @param record_type [Symbol, Telnyx::Models::InboundMessage::RecordType]
      #
      #   @param references [Array<String>] Ordered RFC Message-ID values from the References header.
      #
      #   @param reply_text [String, nil] Conservatively extracted new-reply content from the available plain-text body. N
      #
      #   @param reply_to [Array<Telnyx::Models::InboundMessage::ReplyTo>]
      #
      #   @param status [Symbol, Telnyx::Models::InboundMessage::Status]
      #
      #   @param subject [String, nil]
      #
      #   @param text_body_url [String, nil] URL for an offloaded plain-text body. Null means the body is not offloaded to a
      #
      #   @param thread_id [String]
      #
      #   @param to [Array<Telnyx::Models::InboundMessage::To>]
      #
      #   @param updated_at [Time]

      class Bcc < Telnyx::Internal::Type::BaseModel
        # @!attribute email
        #
        #   @return [String]
        required :email, String

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(email:, name: nil)
        #   @param email [String]
        #   @param name [String]
      end

      class Cc < Telnyx::Internal::Type::BaseModel
        # @!attribute email
        #
        #   @return [String]
        required :email, String

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(email:, name: nil)
        #   @param email [String]
        #   @param name [String]
      end

      # @see Telnyx::Models::InboundMessage#direction
      module Direction
        extend Telnyx::Internal::Type::Enum

        INBOUND = :inbound

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::InboundMessage#from
      class From < Telnyx::Internal::Type::BaseModel
        # @!attribute email
        #
        #   @return [String]
        required :email, String

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(email:, name: nil)
        #   @param email [String]
        #   @param name [String]
      end

      # @see Telnyx::Models::InboundMessage#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        EMAIL_MESSAGE = :email_message

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class ReplyTo < Telnyx::Internal::Type::BaseModel
        # @!attribute email
        #
        #   @return [String]
        required :email, String

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(email:, name: nil)
        #   @param email [String]
        #   @param name [String]
      end

      # @see Telnyx::Models::InboundMessage#status
      module Status
        extend Telnyx::Internal::Type::Enum

        RECEIVED = :received

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class To < Telnyx::Internal::Type::BaseModel
        # @!attribute email
        #
        #   @return [String]
        required :email, String

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(email:, name: nil)
        #   @param email [String]
        #   @param name [String]
      end
    end
  end
end
