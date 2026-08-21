# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailInboxes#list
    class EmailInbox < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute address
      #
      #   @return [String]
      required :address, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute domain
      #   Domain name used by the inbox address.
      #
      #   @return [String]
      required :domain, String

      # @!attribute domain_id
      #
      #   @return [String]
      required :domain_id, String

      # @!attribute record_type
      #
      #   @return [Symbol, Telnyx::Models::EmailInbox::RecordType]
      required :record_type, enum: -> { Telnyx::EmailInbox::RecordType }

      # @!attribute settings
      #
      #   @return [Hash{Symbol=>Object}]
      required :settings, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

      # @!attribute status
      #
      #   @return [Symbol, Telnyx::Models::EmailInbox::Status]
      required :status, enum: -> { Telnyx::EmailInbox::Status }

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, address:, created_at:, domain:, domain_id:, record_type:, settings:, status:, updated_at:)
      #   @param id [String]
      #
      #   @param address [String]
      #
      #   @param created_at [Time]
      #
      #   @param domain [String] Domain name used by the inbox address.
      #
      #   @param domain_id [String]
      #
      #   @param record_type [Symbol, Telnyx::Models::EmailInbox::RecordType]
      #
      #   @param settings [Hash{Symbol=>Object}]
      #
      #   @param status [Symbol, Telnyx::Models::EmailInbox::Status]
      #
      #   @param updated_at [Time]

      # @see Telnyx::Models::EmailInbox#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        EMAIL_INBOX = :email_inbox

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::EmailInbox#status
      module Status
        extend Telnyx::Internal::Type::Enum

        ACTIVE = :active
        PAUSED = :paused

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
