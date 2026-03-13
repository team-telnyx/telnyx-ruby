# typed: strong

module Telnyx
  module Models
    module Whatsapp
      module BusinessAccounts
        class SettingUpdateResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Whatsapp::BusinessAccounts::SettingUpdateResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(T.nilable(Telnyx::Whatsapp::BusinessAccounts::WabaSettings))
          end
          attr_reader :data

          sig do
            params(
              data: Telnyx::Whatsapp::BusinessAccounts::WabaSettings::OrHash
            ).void
          end
          attr_writer :data

          sig do
            params(
              data: Telnyx::Whatsapp::BusinessAccounts::WabaSettings::OrHash
            ).returns(T.attached_class)
          end
          def self.new(data: nil)
          end

          sig do
            override.returns(
              { data: Telnyx::Whatsapp::BusinessAccounts::WabaSettings }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
