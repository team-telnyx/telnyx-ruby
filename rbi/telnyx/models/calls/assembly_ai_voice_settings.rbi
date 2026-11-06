# typed: strong

module Telnyx
  module Models
    module Calls
      class AssemblyAIVoiceSettings < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Calls::AssemblyAIVoiceSettings,
              Telnyx::Internal::AnyHash
            )
          end

        # Voice settings provider type
        sig { returns(Telnyx::Calls::AssemblyAIVoiceSettings::Type::OrSymbol) }
        attr_accessor :type

        sig do
          params(
            type: Telnyx::Calls::AssemblyAIVoiceSettings::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Voice settings provider type
          type:
        )
        end

        sig do
          override.returns(
            { type: Telnyx::Calls::AssemblyAIVoiceSettings::Type::OrSymbol }
          )
        end
        def to_hash
        end

        # Voice settings provider type
        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Calls::AssemblyAIVoiceSettings::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ASSEMBLYAI =
            T.let(
              :assemblyai,
              Telnyx::Calls::AssemblyAIVoiceSettings::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::AssemblyAIVoiceSettings::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
