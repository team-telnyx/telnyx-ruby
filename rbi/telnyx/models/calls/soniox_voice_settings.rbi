# typed: strong

module Telnyx
  module Models
    module Calls
      class SonioxVoiceSettings < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::Calls::SonioxVoiceSettings, Telnyx::Internal::AnyHash)
          end

        # Voice settings provider type
        sig { returns(Telnyx::Calls::SonioxVoiceSettings::Type::OrSymbol) }
        attr_accessor :type

        # Shortens the pauses between words.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :reduce_silence

        sig { params(reduce_silence: T::Boolean).void }
        attr_writer :reduce_silence

        # Speaking rate. 1.0 is normal speed.
        sig { returns(T.nilable(Float)) }
        attr_reader :speed

        sig { params(speed: Float).void }
        attr_writer :speed

        sig do
          params(
            type: Telnyx::Calls::SonioxVoiceSettings::Type::OrSymbol,
            reduce_silence: T::Boolean,
            speed: Float
          ).returns(T.attached_class)
        end
        def self.new(
          # Voice settings provider type
          type:,
          # Shortens the pauses between words.
          reduce_silence: nil,
          # Speaking rate. 1.0 is normal speed.
          speed: nil
        )
        end

        sig do
          override.returns(
            {
              type: Telnyx::Calls::SonioxVoiceSettings::Type::OrSymbol,
              reduce_silence: T::Boolean,
              speed: Float
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
              T.all(Symbol, Telnyx::Calls::SonioxVoiceSettings::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SONIOX =
            T.let(
              :soniox,
              Telnyx::Calls::SonioxVoiceSettings::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::Calls::SonioxVoiceSettings::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
