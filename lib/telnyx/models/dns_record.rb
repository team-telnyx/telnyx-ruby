# frozen_string_literal: true

module Telnyx
  module Models
    class DNSRecord < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute host
      #
      #   @return [String]
      required :host, String

      # @!attribute purpose
      #
      #   @return [Symbol, Telnyx::Models::DNSRecord::Purpose]
      required :purpose, enum: -> { Telnyx::DNSRecord::Purpose }

      # @!attribute record_type
      #
      #   @return [Symbol, Telnyx::Models::DNSRecord::RecordType]
      required :record_type, enum: -> { Telnyx::DNSRecord::RecordType }

      # @!attribute required
      #
      #   @return [Boolean]
      required :required, Telnyx::Internal::Type::Boolean

      # @!attribute status
      #
      #   @return [Symbol, Telnyx::Models::DNSRecord::Status]
      required :status, enum: -> { Telnyx::DNSRecord::Status }

      # @!attribute value
      #
      #   @return [String]
      required :value, String

      # @!attribute actual_value
      #
      #   @return [String, nil]
      optional :actual_value, String, nil?: true

      # @!attribute priority
      #
      #   @return [Integer, nil]
      optional :priority, Integer, nil?: true

      # @!method initialize(id:, host:, purpose:, record_type:, required:, status:, value:, actual_value: nil, priority: nil)
      #   @param id [String]
      #   @param host [String]
      #   @param purpose [Symbol, Telnyx::Models::DNSRecord::Purpose]
      #   @param record_type [Symbol, Telnyx::Models::DNSRecord::RecordType]
      #   @param required [Boolean]
      #   @param status [Symbol, Telnyx::Models::DNSRecord::Status]
      #   @param value [String]
      #   @param actual_value [String, nil]
      #   @param priority [Integer, nil]

      # @see Telnyx::Models::DNSRecord#purpose
      module Purpose
        extend Telnyx::Internal::Type::Enum

        OWNERSHIP = :ownership
        SPF = :spf
        DKIM = :dkim
        DMARC = :dmarc
        MX = :mx

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::DNSRecord#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        TXT = :TXT
        MX = :MX

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::DNSRecord#status
      module Status
        extend Telnyx::Internal::Type::Enum

        PENDING = :pending
        VERIFIED = :verified
        FAILED = :failed
        NOT_REQUIRED = :not_required

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
