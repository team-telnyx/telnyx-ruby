# typed: strong

module Telnyx
  module Models
    module PhoneNumbers
      class VoiceUpdateResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::PhoneNumbers::VoiceUpdateResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(T.nilable(Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings))
        end
        attr_reader :data

        sig do
          params(
            data: Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data: Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            { data: Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings }
          )
        end
        def to_hash
        end
      end
    end
  end
end
