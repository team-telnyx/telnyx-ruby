# typed: strong

module Telnyx
  module Models
    module Whatsapp
      module PhoneNumbers
        class CallingSettingUpdateResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Whatsapp::PhoneNumbers::CallingSettingUpdateResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Telnyx::Models::Whatsapp::PhoneNumbers::CallingSettingUpdateResponse::Data
              )
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                Telnyx::Models::Whatsapp::PhoneNumbers::CallingSettingUpdateResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          sig do
            params(
              data:
                Telnyx::Models::Whatsapp::PhoneNumbers::CallingSettingUpdateResponse::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(data: nil)
          end

          sig do
            override.returns(
              {
                data:
                  Telnyx::Models::Whatsapp::PhoneNumbers::CallingSettingUpdateResponse::Data
              }
            )
          end
          def to_hash
          end

          class Data < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Whatsapp::PhoneNumbers::CallingSettingUpdateResponse::Data,
                  Telnyx::Internal::AnyHash
                )
              end

            # True if calling is enabled on the phone
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :enabled

            sig { params(enabled: T::Boolean).void }
            attr_writer :enabled

            # Phone number in E164 format
            sig { returns(T.nilable(String)) }
            attr_reader :phone_number

            sig { params(phone_number: String).void }
            attr_writer :phone_number

            sig { returns(T.nilable(String)) }
            attr_reader :record_type

            sig { params(record_type: String).void }
            attr_writer :record_type

            sig { returns(T.nilable(Time)) }
            attr_reader :updated_at

            sig { params(updated_at: Time).void }
            attr_writer :updated_at

            sig do
              params(
                enabled: T::Boolean,
                phone_number: String,
                record_type: String,
                updated_at: Time
              ).returns(T.attached_class)
            end
            def self.new(
              # True if calling is enabled on the phone
              enabled: nil,
              # Phone number in E164 format
              phone_number: nil,
              record_type: nil,
              updated_at: nil
            )
            end

            sig do
              override.returns(
                {
                  enabled: T::Boolean,
                  phone_number: String,
                  record_type: String,
                  updated_at: Time
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
end
