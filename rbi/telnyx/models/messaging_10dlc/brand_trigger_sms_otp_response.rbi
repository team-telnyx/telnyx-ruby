# typed: strong

module Telnyx
  module Models
    module Messaging10dlc
      class BrandTriggerSMSOtpResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Messaging10dlc::BrandTriggerSMSOtpResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # The Brand ID for which the OTP was triggered
        sig { returns(String) }
        attr_accessor :brand_id

        # The reference ID that can be used to check OTP status
        sig { returns(String) }
        attr_accessor :reference_id

        # Response after successfully triggering a Brand SMS OTP
        sig do
          params(brand_id: String, reference_id: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The Brand ID for which the OTP was triggered
          brand_id:,
          # The reference ID that can be used to check OTP status
          reference_id:
        )
        end

        sig { override.returns({ brand_id: String, reference_id: String }) }
        def to_hash
        end
      end
    end
  end
end
