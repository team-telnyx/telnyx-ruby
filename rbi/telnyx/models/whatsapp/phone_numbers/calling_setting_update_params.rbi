# typed: strong

module Telnyx
  module Models
    module Whatsapp
      module PhoneNumbers
        class CallingSettingUpdateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Whatsapp::PhoneNumbers::CallingSettingUpdateParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :phone_number

          sig { returns(T::Boolean) }
          attr_accessor :enabled

          sig do
            params(
              phone_number: String,
              enabled: T::Boolean,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(phone_number:, enabled:, request_options: {})
          end

          sig do
            override.returns(
              {
                phone_number: String,
                enabled: T::Boolean,
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
end
