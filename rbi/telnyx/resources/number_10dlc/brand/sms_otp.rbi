# typed: strong

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
          sig do
            params(
              reference_id: String,
              brand_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Models::Number10dlc::Brand::SMSOtpGetStatusResponse
            )
          end
          def get_status(
            # The reference ID returned when the OTP was initially triggered
            reference_id,
            # Filter by Brand ID for easier lookup in portal applications
            brand_id: nil,
            request_options: {}
          )
          end

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
          sig do
            params(
              brand_id: String,
              pin_sms: String,
              success_sms: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Models::Number10dlc::Brand::SMSOtpTriggerResponse)
          end
          def trigger(
            # The Brand ID for which to trigger the OTP
            brand_id,
            # SMS message template to send the OTP. Must include `@OTP_PIN@` placeholder which
            # will be replaced with the actual PIN
            pin_sms:,
            # SMS message to send upon successful OTP verification
            success_sms:,
            request_options: {}
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
          sig do
            params(
              brand_id: String,
              otp_pin: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).void
          end
          def verify(
            # The Brand ID for which to verify the OTP
            brand_id,
            # The OTP PIN received via SMS
            otp_pin:,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: Telnyx::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
