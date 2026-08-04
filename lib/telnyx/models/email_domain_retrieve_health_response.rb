# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailDomains#retrieve_health
    class EmailDomainRetrieveHealthResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::EmailDomainRetrieveHealthResponse::Data]
      required :data, -> { Telnyx::Models::EmailDomainRetrieveHealthResponse::Data }

      # @!method initialize(data:)
      #   @param data [Telnyx::Models::EmailDomainRetrieveHealthResponse::Data]

      # @see Telnyx::Models::EmailDomainRetrieveHealthResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the email domain
        #
        #   @return [String]
        required :id, String

        # @!attribute checked_at
        #   Timestamp of the last health check
        #
        #   @return [Time]
        required :checked_at, Time

        # @!attribute record_type
        #   Record type discriminator
        #
        #   @return [Symbol, Telnyx::Models::EmailDomainRetrieveHealthResponse::Data::RecordType]
        required :record_type, enum: -> { Telnyx::Models::EmailDomainRetrieveHealthResponse::Data::RecordType }

        # @!attribute status
        #   Current domain status
        #
        #   @return [Symbol, Telnyx::Models::EmailDomainRetrieveHealthResponse::Data::Status]
        required :status, enum: -> { Telnyx::Models::EmailDomainRetrieveHealthResponse::Data::Status }

        # @!attribute usable_for_inbound
        #   Whether the domain is usable for receiving inbound email
        #
        #   @return [Boolean]
        required :usable_for_inbound, Telnyx::Internal::Type::Boolean

        # @!attribute usable_for_sending
        #   Whether the domain is usable for sending email
        #
        #   @return [Boolean]
        required :usable_for_sending, Telnyx::Internal::Type::Boolean

        # @!attribute verification
        #
        #   @return [Telnyx::Models::EmailDomainVerification]
        required :verification, -> { Telnyx::EmailDomainVerification }

        # @!method initialize(id:, checked_at:, record_type:, status:, usable_for_inbound:, usable_for_sending:, verification:)
        #   @param id [String] Unique identifier for the email domain
        #
        #   @param checked_at [Time] Timestamp of the last health check
        #
        #   @param record_type [Symbol, Telnyx::Models::EmailDomainRetrieveHealthResponse::Data::RecordType] Record type discriminator
        #
        #   @param status [Symbol, Telnyx::Models::EmailDomainRetrieveHealthResponse::Data::Status] Current domain status
        #
        #   @param usable_for_inbound [Boolean] Whether the domain is usable for receiving inbound email
        #
        #   @param usable_for_sending [Boolean] Whether the domain is usable for sending email
        #
        #   @param verification [Telnyx::Models::EmailDomainVerification]

        # Record type discriminator
        #
        # @see Telnyx::Models::EmailDomainRetrieveHealthResponse::Data#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          EMAIL_DOMAIN_HEALTH = :email_domain_health

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Current domain status
        #
        # @see Telnyx::Models::EmailDomainRetrieveHealthResponse::Data#status
        module Status
          extend Telnyx::Internal::Type::Enum

          PENDING = :pending
          VERIFYING = :verifying
          VERIFIED = :verified
          FAILED = :failed
          DEGRADED = :degraded
          SUSPENDED = :suspended

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
