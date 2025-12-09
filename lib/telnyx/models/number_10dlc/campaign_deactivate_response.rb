# frozen_string_literal: true

module Telnyx
  module Models
    module Number10dlc
      # @see Telnyx::Resources::Number10dlc::Campaign#deactivate
      class CampaignDeactivateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute time
        #
        #   @return [Float]
        required :time, Float

        # @!attribute message
        #
        #   @return [String, nil]
        optional :message, String

        # @!attribute record_type
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!method initialize(time:, message: nil, record_type: nil)
        #   @param time [Float]
        #   @param message [String]
        #   @param record_type [String]
      end
    end
  end
end
