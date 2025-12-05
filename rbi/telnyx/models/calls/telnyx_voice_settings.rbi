# typed: strong

module Telnyx
  module Models
    module Calls
      class TelnyxVoiceSettings < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::Calls::TelnyxVoiceSettings, Telnyx::Internal::AnyHash)
          end

        # Voice settings provider type
        sig { returns(Telnyx::Calls::TelnyxVoiceSettings::Type::OrSymbol) }
        attr_accessor :type

        # The voice speed to be used for the voice. The voice speed must be between 0.1
        # and 2.0. Default value is 1.0.
        sig { returns(T.nilable(Float)) }
        attr_reader :voice_speed

        sig { params(voice_speed: Float).void }
        attr_writer :voice_speed

        sig do
          params(
            type: Telnyx::Calls::TelnyxVoiceSettings::Type::OrSymbol,
            voice_speed: Float
          ).returns(T.attached_class)
        end
        def self.new(
          # Voice settings provider type
          type:,
          # The voice speed to be used for the voice. The voice speed must be between 0.1
          # and 2.0. Default value is 1.0.
          voice_speed: nil
        )
        end

        sig do
          override.returns(
            {
              type: Telnyx::Calls::TelnyxVoiceSettings::Type::OrSymbol,
              voice_speed: Float
            }
          )
        end
        def to_hash
        end

        # Voice settings provider type
        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Calls::TelnyxVoiceSettings::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TELNYX =
            T.let(
              :telnyx,
              Telnyx::Calls::TelnyxVoiceSettings::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::Calls::TelnyxVoiceSettings::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
