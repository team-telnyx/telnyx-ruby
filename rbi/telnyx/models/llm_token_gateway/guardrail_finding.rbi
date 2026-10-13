# typed: strong

module Telnyx
  module Models
    module LlmTokenGateway
      class GuardrailFinding < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::LlmTokenGateway::GuardrailFinding,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            Telnyx::LlmTokenGateway::GuardrailFinding::Action::TaggedSymbol
          )
        end
        attr_accessor :action

        sig { returns(String) }
        attr_accessor :code

        sig { returns(Integer) }
        attr_accessor :count

        sig do
          returns(
            Telnyx::LlmTokenGateway::GuardrailFinding::Detector::TaggedSymbol
          )
        end
        attr_accessor :detector

        sig do
          params(
            action: Telnyx::LlmTokenGateway::GuardrailFinding::Action::OrSymbol,
            code: String,
            count: Integer,
            detector:
              Telnyx::LlmTokenGateway::GuardrailFinding::Detector::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(action:, code:, count:, detector:)
        end

        sig do
          override.returns(
            {
              action:
                Telnyx::LlmTokenGateway::GuardrailFinding::Action::TaggedSymbol,
              code: String,
              count: Integer,
              detector:
                Telnyx::LlmTokenGateway::GuardrailFinding::Detector::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module Action
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::LlmTokenGateway::GuardrailFinding::Action)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FLAG =
            T.let(
              :flag,
              Telnyx::LlmTokenGateway::GuardrailFinding::Action::TaggedSymbol
            )
          BLOCK =
            T.let(
              :block,
              Telnyx::LlmTokenGateway::GuardrailFinding::Action::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::LlmTokenGateway::GuardrailFinding::Action::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Detector
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::LlmTokenGateway::GuardrailFinding::Detector)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SECRETS =
            T.let(
              :secrets,
              Telnyx::LlmTokenGateway::GuardrailFinding::Detector::TaggedSymbol
            )
          DLP =
            T.let(
              :dlp,
              Telnyx::LlmTokenGateway::GuardrailFinding::Detector::TaggedSymbol
            )
          SAFETY =
            T.let(
              :safety,
              Telnyx::LlmTokenGateway::GuardrailFinding::Detector::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::LlmTokenGateway::GuardrailFinding::Detector::TaggedSymbol
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
