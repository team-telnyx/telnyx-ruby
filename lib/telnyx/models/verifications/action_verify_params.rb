# frozen_string_literal: true

module Telnyx
  module Models
    module Verifications
      # @see Telnyx::Resources::Verifications::Actions#verify
      class ActionVerifyParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute code
        #   This is the code the user submits for verification.
        #
        #   @return [String, nil]
        optional :code, String

        # @!attribute status
        #   Identifies if the verification code has been accepted or rejected. Only
        #   permitted if custom_code was used for the verification.
        #
        #   @return [Symbol, Telnyx::Models::Verifications::ActionVerifyParams::Status, nil]
        optional :status, enum: -> { Telnyx::Verifications::ActionVerifyParams::Status }

        # @!method initialize(code: nil, status: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Verifications::ActionVerifyParams} for more details.
        #
        #   @param code [String] This is the code the user submits for verification.
        #
        #   @param status [Symbol, Telnyx::Models::Verifications::ActionVerifyParams::Status] Identifies if the verification code has been accepted or rejected. Only permitte
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Identifies if the verification code has been accepted or rejected. Only
        # permitted if custom_code was used for the verification.
        module Status
          extend Telnyx::Internal::Type::Enum

          ACCEPTED = :accepted
          REJECTED = :rejected

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
