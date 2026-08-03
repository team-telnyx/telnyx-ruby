# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailEvents#list
    class EmailEventListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::EmailEventListResponse::Data>]
      required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::EmailEventListResponse::Data] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::EmailEventListResponse::Meta]
      required :meta, -> { Telnyx::Models::EmailEventListResponse::Meta }

      # @!method initialize(data:, meta:)
      #   @param data [Array<Telnyx::Models::EmailEventListResponse::Data>]
      #   @param meta [Telnyx::Models::EmailEventListResponse::Meta]

      class Data < Telnyx::Internal::Type::BaseModel
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
        #   @return [Symbol, Telnyx::Models::EmailEventListResponse::Data::RecordType]
        required :record_type, enum: -> { Telnyx::Models::EmailEventListResponse::Data::RecordType }

        # @!attribute type
        #
        #   @return [Symbol, Telnyx::Models::EmailEventType]
        required :type, enum: -> { Telnyx::EmailEventType }

        # @!attribute email
        #   Summary of the associated email message. Present when the email_message preload
        #   is available.
        #
        #   @return [Telnyx::Models::EmailEventListResponse::Data::Email, nil]
        optional :email, -> { Telnyx::Models::EmailEventListResponse::Data::Email }

        # @!attribute payload
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :payload, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!method initialize(id:, email_id:, occurred_at:, record_type:, type:, email: nil, payload: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::EmailEventListResponse::Data} for more details.
        #
        #   @param id [String]
        #
        #   @param email_id [String]
        #
        #   @param occurred_at [Time]
        #
        #   @param record_type [Symbol, Telnyx::Models::EmailEventListResponse::Data::RecordType]
        #
        #   @param type [Symbol, Telnyx::Models::EmailEventType]
        #
        #   @param email [Telnyx::Models::EmailEventListResponse::Data::Email] Summary of the associated email message. Present when the email_message preload
        #
        #   @param payload [Hash{Symbol=>Object}]

        # @see Telnyx::Models::EmailEventListResponse::Data#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          EMAIL_EVENT = :email_event

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::EmailEventListResponse::Data#email
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

      # @see Telnyx::Models::EmailEventListResponse#meta
      class Meta < Telnyx::Internal::Type::BaseModel
        # @!attribute page_size
        #
        #   @return [Integer]
        required :page_size, Integer

        # @!attribute time_range
        #
        #   @return [Telnyx::Models::TimeRange]
        required :time_range, -> { Telnyx::TimeRange }

        # @!attribute page_cursor
        #   Cursor for the next page, when more results are available.
        #
        #   @return [String, nil]
        optional :page_cursor, String

        # @!method initialize(page_size:, time_range:, page_cursor: nil)
        #   @param page_size [Integer]
        #
        #   @param time_range [Telnyx::Models::TimeRange]
        #
        #   @param page_cursor [String] Cursor for the next page, when more results are available.
      end
    end
  end
end
