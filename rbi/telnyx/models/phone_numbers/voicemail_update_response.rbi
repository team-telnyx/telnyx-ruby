# typed: strong

module Telnyx
  module Models
    module PhoneNumbers
      class VoicemailUpdateResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::PhoneNumbers::VoicemailUpdateResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Telnyx::PhoneNumbers::VoicemailPrefResponse)) }
        attr_reader :data

        sig do
          params(data: Telnyx::PhoneNumbers::VoicemailPrefResponse::OrHash).void
        end
        attr_writer :data

        sig do
          params(
            data: Telnyx::PhoneNumbers::VoicemailPrefResponse::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            { data: Telnyx::PhoneNumbers::VoicemailPrefResponse }
          )
        end
        def to_hash
        end
      end
    end
  end
end
