# frozen_string_literal: true

module Telnyx
  module Models
    module Number10dlc
      module Brand
        # @see Telnyx::Resources::Number10dlc::Brand::SMSOtp#trigger
        class SMSOtpTriggerResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute brand_id
          #   The Brand ID for which the OTP was triggered
          #
          #   @return [String]
          required :brand_id, String, api_name: :brandId

          # @!attribute reference_id
          #   The reference ID that can be used to check OTP status
          #
          #   @return [String]
          required :reference_id, String, api_name: :referenceId

          # @!method initialize(brand_id:, reference_id:)
          #   Response after successfully triggering a Brand SMS OTP
          #
          #   @param brand_id [String] The Brand ID for which the OTP was triggered
          #
          #   @param reference_id [String] The reference ID that can be used to check OTP status
        end
      end
    end
  end
end
