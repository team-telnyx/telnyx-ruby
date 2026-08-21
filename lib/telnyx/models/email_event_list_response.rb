# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailEvents#list
    class EmailEventListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute email_id
      #
      #   @return [String]
      required :email_id, String

      # @!attribute occurred_at
      #
      #   @return [Time]
      required :occurred_at, Time

      # @!attribute record_type
      #
      #   @return [Symbol, Telnyx::Models::EmailEventListResponse::RecordType]
      required :record_type, enum: -> { Telnyx::Models::EmailEventListResponse::RecordType }

      # @!attribute type
      #
      #   @return [Symbol, Telnyx::Models::EmailEventType]
      required :type, enum: -> { Telnyx::EmailEventType }

      # @!attribute email
      #   Summary of the associated email message. Present when the email_message preload
      #   is available.
      #
      #   @return [Telnyx::Models::EmailEventListResponse::Email, nil]
      optional :email, -> { Telnyx::Models::EmailEventListResponse::Email }

      # @!attribute payload
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :payload, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

      # @!method initialize(id:, email_id:, occurred_at:, record_type:, type:, email: nil, payload: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::EmailEventListResponse} for more details.
      #
      #   @param id [String]
      #
      #   @param email_id [String]
      #
      #   @param occurred_at [Time]
      #
      #   @param record_type [Symbol, Telnyx::Models::EmailEventListResponse::RecordType]
      #
      #   @param type [Symbol, Telnyx::Models::EmailEventType]
      #
      #   @param email [Telnyx::Models::EmailEventListResponse::Email] Summary of the associated email message. Present when the email_message preload
      #
      #   @param payload [Hash{Symbol=>Object}]

      # @see Telnyx::Models::EmailEventListResponse#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        EMAIL_EVENT = :email_event

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::EmailEventListResponse#email
      class Email < Telnyx::Internal::Type::BaseModel
        # @!attribute cc
        #
        #   @return [Array<Telnyx::Models::EmailInboxes::EmailAddress>]
        required :cc, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::EmailInboxes::EmailAddress] }

        # @!attribute from
        #
        #   @return [Telnyx::Models::EmailInboxes::EmailAddress]
        required :from, -> { Telnyx::EmailInboxes::EmailAddress }

        # @!attribute subject
        #
        #   @return [String]
        required :subject, String

        # @!attribute to
        #
        #   @return [Array<Telnyx::Models::EmailInboxes::EmailAddress>]
        required :to, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::EmailInboxes::EmailAddress] }

        # @!method initialize(cc:, from:, subject:, to:)
        #   Summary of the associated email message. Present when the email_message preload
        #   is available.
        #
        #   @param cc [Array<Telnyx::Models::EmailInboxes::EmailAddress>]
        #   @param from [Telnyx::Models::EmailInboxes::EmailAddress]
        #   @param subject [String]
        #   @param to [Array<Telnyx::Models::EmailInboxes::EmailAddress>]
      end
    end
  end
end
