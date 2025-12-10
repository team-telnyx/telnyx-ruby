# frozen_string_literal: true

module Telnyx
  module Models
    module Number10dlc
      module Brand
        # @see Telnyx::Resources::Number10dlc::Brand::SMSOtp#verify
        class SMSOtpVerifyParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute otp_pin
          #   The OTP PIN received via SMS
          #
          #   @return [String]
          required :otp_pin, String, api_name: :otpPin

          # @!method initialize(otp_pin:, request_options: {})
          #   @param otp_pin [String] The OTP PIN received via SMS
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
