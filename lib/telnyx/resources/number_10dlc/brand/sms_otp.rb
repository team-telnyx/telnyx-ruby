# frozen_string_literal: true

module Telnyx
  module Resources
    class Number10dlc
      class Brand
        class SMSOtp
          # Query the status of an SMS OTP (One-Time Password) for Sole Proprietor brand
          # verification.
          #
          # This endpoint allows you to check the delivery and verification status of an OTP
          # sent during the Sole Proprietor brand verification process. You can query by
          # either:
          #
          # - `referenceId` - The reference ID returned when the OTP was initially triggered
          # - `brandId` - Query parameter for portal users to look up OTP status by Brand ID
          #
          # The response includes delivery status, verification dates, and detailed delivery
          # information.
          #
          # @overload get_status(reference_id, brand_id: nil, request_options: {})
          #
          # @param reference_id [String] The reference ID returned when the OTP was initially triggered
          #
          # @param brand_id [String] Filter by Brand ID for easier lookup in portal applications
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Number10dlc::Brand::SMSOtpGetStatusResponse]
          #
          # @see Telnyx::Models::Number10dlc::Brand::SMSOtpGetStatusParams
          def get_status(reference_id, params = {})
            parsed, options = Telnyx::Number10dlc::Brand::SMSOtpGetStatusParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["10dlc/brand/smsOtp/%1$s", reference_id],
              query: parsed.transform_keys(brand_id: "brandId"),
              model: Telnyx::Models::Number10dlc::Brand::SMSOtpGetStatusResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::Number10dlc::Brand::SMSOtpTriggerParams} for more details.
          #
          # Trigger or re-trigger an SMS OTP (One-Time Password) for Sole Proprietor brand
          # verification.
          #
          # **Important Notes:**
          #
          # - Only allowed for Sole Proprietor (`SOLE_PROPRIETOR`) brands
          # - Triggers generation of a one-time password sent to the `mobilePhone` number in
          #   the brand's profile
          # - Campaigns cannot be created until OTP verification is complete
          # - US/CA numbers only for real OTPs; mock brands can use non-US/CA numbers for
          #   testing
          # - Returns a `referenceId` that can be used to check OTP status via the GET
          #   `/10dlc/brand/smsOtp/{referenceId}` endpoint
          #
          # **Use Cases:**
          #
          # - Initial OTP trigger after Sole Proprietor brand creation
          # - Re-triggering OTP if the user didn't receive or needs a new code
          #
          # @overload trigger(brand_id, pin_sms:, success_sms:, request_options: {})
          #
          # @param brand_id [String] The Brand ID for which to trigger the OTP
          #
          # @param pin_sms [String] SMS message template to send the OTP. Must include `@OTP_PIN@` placeholder which
          #
          # @param success_sms [String] SMS message to send upon successful OTP verification
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Number10dlc::Brand::SMSOtpTriggerResponse]
          #
          # @see Telnyx::Models::Number10dlc::Brand::SMSOtpTriggerParams
          def trigger(brand_id, params)
            parsed, options = Telnyx::Number10dlc::Brand::SMSOtpTriggerParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["10dlc/brand/%1$s/smsOtp", brand_id],
              body: parsed,
              model: Telnyx::Models::Number10dlc::Brand::SMSOtpTriggerResponse,
              options: options
            )
          end

          # Verify the SMS OTP (One-Time Password) for Sole Proprietor brand verification.
          #
          # **Verification Flow:**
          #
          # 1. User receives OTP via SMS after triggering
          # 2. User submits the OTP pin through this endpoint
          # 3. Upon successful verification:
          #    - A `BRAND_OTP_VERIFIED` webhook event is sent to the CSP
          #    - The brand's `identityStatus` changes to `VERIFIED`
          #    - Campaigns can now be created for this brand
          #
          # **Error Handling:**
          #
          # Provides proper error responses for:
          #
          # - Invalid OTP pins
          # - Expired OTPs
          # - OTP verification failures
          #
          # @overload verify(brand_id, otp_pin:, request_options: {})
          #
          # @param brand_id [String] The Brand ID for which to verify the OTP
          #
          # @param otp_pin [String] The OTP PIN received via SMS
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see Telnyx::Models::Number10dlc::Brand::SMSOtpVerifyParams
          def verify(brand_id, params)
            parsed, options = Telnyx::Number10dlc::Brand::SMSOtpVerifyParams.dump_request(params)
            @client.request(
              method: :put,
              path: ["10dlc/brand/%1$s/smsOtp", brand_id],
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # @api private
          #
          # @param client [Telnyx::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
