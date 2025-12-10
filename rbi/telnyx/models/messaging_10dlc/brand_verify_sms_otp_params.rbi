# typed: strong

module Telnyx
  module Models
    module Messaging10dlc
      class BrandVerifySMSOtpParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Messaging10dlc::BrandVerifySMSOtpParams,
              Telnyx::Internal::AnyHash
            )
          end

        # The OTP PIN received via SMS
        sig { returns(String) }
        attr_accessor :otp_pin

        sig do
          params(
            otp_pin: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The OTP PIN received via SMS
          otp_pin:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            { otp_pin: String, request_options: Telnyx::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
