# frozen_string_literal: true

module Telnyx
  module Models
    module Messaging10dlc
      # @see Telnyx::Resources::Messaging10dlc::Brand#verify_sms_otp
      class BrandVerifySMSOtpParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute brand_id
        #
        #   @return [String]
        required :brand_id, String

        # @!attribute otp_pin
        #   The OTP PIN received via SMS
        #
        #   @return [String]
        required :otp_pin, String, api_name: :otpPin

        # @!method initialize(brand_id:, otp_pin:, request_options: {})
        #   @param brand_id [String]
        #
        #   @param otp_pin [String] The OTP PIN received via SMS
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
