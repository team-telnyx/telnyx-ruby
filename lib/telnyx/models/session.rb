# frozen_string_literal: true

module Telnyx
  module Models
    class Session < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute closed_at
      #
      #   @return [Time, nil]
      required :closed_at, Time, nil?: true

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute expires_at
      #
      #   @return [Time, nil]
      required :expires_at, Time, nil?: true

      # @!attribute failure_reason
      #
      #   @return [String, nil]
      required :failure_reason, String, nil?: true

      # @!attribute last_activity_at
      #
      #   @return [Time, nil]
      required :last_activity_at, Time, nil?: true

      # @!attribute limits
      #
      #   @return [Telnyx::Models::Session::Limits]
      required :limits, -> { Telnyx::Session::Limits }

      # @!attribute metadata
      #
      #   @return [Hash{Symbol=>Object}]
      required :metadata, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

      # @!attribute policy
      #
      #   @return [Telnyx::Models::Session::Policy]
      required :policy, -> { Telnyx::Session::Policy }

      # @!attribute ready_at
      #
      #   @return [Time, nil]
      required :ready_at, Time, nil?: true

      # @!attribute status
      #
      #   @return [Symbol, Telnyx::Models::Session::Status]
      required :status, enum: -> { Telnyx::Session::Status }

      # @!method initialize(id:, closed_at:, created_at:, expires_at:, failure_reason:, last_activity_at:, limits:, metadata:, policy:, ready_at:, status:)
      #   @param id [String]
      #   @param closed_at [Time, nil]
      #   @param created_at [Time]
      #   @param expires_at [Time, nil]
      #   @param failure_reason [String, nil]
      #   @param last_activity_at [Time, nil]
      #   @param limits [Telnyx::Models::Session::Limits]
      #   @param metadata [Hash{Symbol=>Object}]
      #   @param policy [Telnyx::Models::Session::Policy]
      #   @param ready_at [Time, nil]
      #   @param status [Symbol, Telnyx::Models::Session::Status]

      # @see Telnyx::Models::Session#limits
      class Limits < Telnyx::Internal::Type::BaseModel
        # @!attribute idle_timeout_s
        #
        #   @return [Integer]
        required :idle_timeout_s, Integer

        # @!attribute lifetime_s
        #
        #   @return [Integer]
        required :lifetime_s, Integer

        # @!method initialize(idle_timeout_s:, lifetime_s:)
        #   @param idle_timeout_s [Integer]
        #   @param lifetime_s [Integer]
      end

      # @see Telnyx::Models::Session#policy
      class Policy < Telnyx::Internal::Type::BaseModel
        # @!attribute allowed_domains
        #
        #   @return [Array<String>]
        required :allowed_domains, Telnyx::Internal::Type::ArrayOf[String]

        # @!method initialize(allowed_domains:)
        #   @param allowed_domains [Array<String>]
      end

      # @see Telnyx::Models::Session#status
      module Status
        extend Telnyx::Internal::Type::Enum

        PROVISIONING = :provisioning
        READY = :ready
        CLOSING = :closing
        CLOSED = :closed
        FAILED = :failed
        EXPIRED = :expired

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
