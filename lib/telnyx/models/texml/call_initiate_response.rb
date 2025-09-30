# frozen_string_literal: true

module Telnyx
  module Models
    module Texml
      # @see Telnyx::Resources::Texml::Calls#initiate
      class CallInitiateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Texml::CallInitiateResponse::Data, nil]
        optional :data, -> { Telnyx::Models::Texml::CallInitiateResponse::Data }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::Texml::CallInitiateResponse::Data]

        # @see Telnyx::Models::Texml::CallInitiateResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute from
          #
          #   @return [String, nil]
          optional :from, String

          # @!attribute status
          #
          #   @return [String, nil]
          optional :status, String

          # @!attribute to
          #
          #   @return [String, nil]
          optional :to, String

          # @!method initialize(from: nil, status: nil, to: nil)
          #   @param from [String]
          #   @param status [String]
          #   @param to [String]
        end
      end
    end
  end
end
