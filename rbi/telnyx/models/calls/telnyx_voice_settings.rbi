# typed: strong

module Telnyx
  module Models
    module Calls
      class TelnyxVoiceSettings < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::Calls::TelnyxVoiceSettings, Telnyx::Internal::AnyHash)
          end

        # The voice speed to be used for the voice. The voice speed must be between 0.1
        # and 2.0. Default value is 1.0.
        sig { returns(T.nilable(Float)) }
        attr_reader :voice_speed

        sig { params(voice_speed: Float).void }
        attr_writer :voice_speed

        sig { params(voice_speed: Float).returns(T.attached_class) }
        def self.new(
          # The voice speed to be used for the voice. The voice speed must be between 0.1
          # and 2.0. Default value is 1.0.
          voice_speed: nil
        )
        end

        sig { override.returns({ voice_speed: Float }) }
        def to_hash
        end
      end
    end
  end
end
