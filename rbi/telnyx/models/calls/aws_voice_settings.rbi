# typed: strong

module Telnyx
  module Models
    module Calls
      class AwsVoiceSettings < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::Calls::AwsVoiceSettings, Telnyx::Internal::AnyHash)
          end

        # Voice settings provider type
        sig { returns(Telnyx::Calls::AwsVoiceSettings::Type::OrSymbol) }
        attr_accessor :type

        sig do
          params(type: Telnyx::Calls::AwsVoiceSettings::Type::OrSymbol).returns(
            T.attached_class
          )
        end
        def self.new(
          # Voice settings provider type
          type:
        )
        end

        sig do
          override.returns(
            { type: Telnyx::Calls::AwsVoiceSettings::Type::OrSymbol }
          )
        end
        def to_hash
        end

        # Voice settings provider type
        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Calls::AwsVoiceSettings::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AWS = T.let(:aws, Telnyx::Calls::AwsVoiceSettings::Type::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::Calls::AwsVoiceSettings::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
