# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SimCards#get_activation_code
    class SimCardGetActivationCodeResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::SimCardGetActivationCodeResponse::Data, nil]
      optional :data, -> { Telnyx::Models::SimCardGetActivationCodeResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::SimCardGetActivationCodeResponse::Data]

      # @see Telnyx::Models::SimCardGetActivationCodeResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        response_only do
          # @!attribute activation_code
          #   Contents of the eSIM activation QR code.
          #
          #   @return [String, nil]
          optional :activation_code, String

          # @!attribute record_type
          #
          #   @return [String, nil]
          optional :record_type, String
        end

        # @!method initialize(activation_code: nil, record_type: nil)
        #   @param activation_code [String] Contents of the eSIM activation QR code.
        #
        #   @param record_type [String]
      end
    end
  end
end
