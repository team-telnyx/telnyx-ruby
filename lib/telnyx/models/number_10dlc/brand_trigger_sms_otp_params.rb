# frozen_string_literal: true

module Telnyx
  module Models
    module Number10dlc
      # @see Telnyx::Resources::Number10dlc::Brand#trigger_sms_otp
      class BrandTriggerSMSOtpParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute pin_sms
        #   SMS message template to send the OTP. Must include `@OTP_PIN@` placeholder which
        #   will be replaced with the actual PIN
        #
        #   @return [String]
        required :pin_sms, String, api_name: :pinSms

        # @!attribute success_sms
        #   SMS message to send upon successful OTP verification
        #
        #   @return [String]
        required :success_sms, String, api_name: :successSms

        # @!method initialize(pin_sms:, success_sms:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Number10dlc::BrandTriggerSMSOtpParams} for more details.
        #
        #   @param pin_sms [String] SMS message template to send the OTP. Must include `@OTP_PIN@` placeholder which
        #
        #   @param success_sms [String] SMS message to send upon successful OTP verification
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
