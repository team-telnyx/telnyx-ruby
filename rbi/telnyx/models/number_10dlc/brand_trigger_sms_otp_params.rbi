# typed: strong

module Telnyx
  module Models
    module Number10dlc
      class BrandTriggerSMSOtpParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Number10dlc::BrandTriggerSMSOtpParams,
              Telnyx::Internal::AnyHash
            )
          end

        # SMS message template to send the OTP. Must include `@OTP_PIN@` placeholder which
        # will be replaced with the actual PIN
        sig { returns(String) }
        attr_accessor :pin_sms

        # SMS message to send upon successful OTP verification
        sig { returns(String) }
        attr_accessor :success_sms

        sig do
          params(
            pin_sms: String,
            success_sms: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # SMS message template to send the OTP. Must include `@OTP_PIN@` placeholder which
          # will be replaced with the actual PIN
          pin_sms:,
          # SMS message to send upon successful OTP verification
          success_sms:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              pin_sms: String,
              success_sms: String,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
