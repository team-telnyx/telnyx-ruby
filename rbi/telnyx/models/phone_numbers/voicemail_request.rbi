# typed: strong

module Telnyx
  module Models
    module PhoneNumbers
      class VoicemailRequest < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PhoneNumbers::VoicemailRequest,
              Telnyx::Internal::AnyHash
            )
          end

        # Whether voicemail is enabled.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :enabled

        sig { params(enabled: T::Boolean).void }
        attr_writer :enabled

        # The pin used for voicemail
        sig { returns(T.nilable(String)) }
        attr_reader :pin

        sig { params(pin: String).void }
        attr_writer :pin

        sig do
          params(enabled: T::Boolean, pin: String).returns(T.attached_class)
        end
        def self.new(
          # Whether voicemail is enabled.
          enabled: nil,
          # The pin used for voicemail
          pin: nil
        )
        end

        sig { override.returns({ enabled: T::Boolean, pin: String }) }
        def to_hash
        end
      end
    end
  end
end
