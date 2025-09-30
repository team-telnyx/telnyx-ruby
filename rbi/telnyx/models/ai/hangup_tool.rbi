# typed: strong

module Telnyx
  module Models
    module AI
      class HangupTool < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::HangupTool, Telnyx::Internal::AnyHash)
          end

        sig { returns(Telnyx::AI::HangupToolParams) }
        attr_reader :hangup

        sig { params(hangup: Telnyx::AI::HangupToolParams::OrHash).void }
        attr_writer :hangup

        sig { returns(Telnyx::AI::HangupTool::Type::OrSymbol) }
        attr_accessor :type

        sig do
          params(
            hangup: Telnyx::AI::HangupToolParams::OrHash,
            type: Telnyx::AI::HangupTool::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(hangup:, type:)
        end

        sig do
          override.returns(
            {
              hangup: Telnyx::AI::HangupToolParams,
              type: Telnyx::AI::HangupTool::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Telnyx::AI::HangupTool::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HANGUP = T.let(:hangup, Telnyx::AI::HangupTool::Type::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::AI::HangupTool::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
