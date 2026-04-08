# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class ObservabilityReq < Telnyx::Internal::Type::BaseModel
        # @!attribute host
        #
        #   @return [String, nil]
        optional :host, String

        # @!attribute public_key_ref
        #
        #   @return [String, nil]
        optional :public_key_ref, String

        # @!attribute secret_key_ref
        #
        #   @return [String, nil]
        optional :secret_key_ref, String

        # @!attribute status
        #
        #   @return [Symbol, Telnyx::Models::AI::ObservabilityReq::Status, nil]
        optional :status, enum: -> { Telnyx::AI::ObservabilityReq::Status }

        # @!method initialize(host: nil, public_key_ref: nil, secret_key_ref: nil, status: nil)
        #   @param host [String]
        #   @param public_key_ref [String]
        #   @param secret_key_ref [String]
        #   @param status [Symbol, Telnyx::Models::AI::ObservabilityReq::Status]

        # @see Telnyx::Models::AI::ObservabilityReq#status
        module Status
          extend Telnyx::Internal::Type::Enum

          ENABLED = :enabled
          DISABLED = :disabled

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
