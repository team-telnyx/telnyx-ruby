# typed: strong

module Telnyx
  module Models
    module AI
      class TransferTool < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::TransferTool, Telnyx::Internal::AnyHash)
          end

        sig { returns(Telnyx::AI::InferenceEmbeddingTransferToolParams) }
        attr_reader :transfer

        sig do
          params(
            transfer: Telnyx::AI::InferenceEmbeddingTransferToolParams::OrHash
          ).void
        end
        attr_writer :transfer

        sig { returns(Telnyx::AI::TransferTool::Type::OrSymbol) }
        attr_accessor :type

        sig do
          params(
            transfer: Telnyx::AI::InferenceEmbeddingTransferToolParams::OrHash,
            type: Telnyx::AI::TransferTool::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(transfer:, type:)
        end

        sig do
          override.returns(
            {
              transfer: Telnyx::AI::InferenceEmbeddingTransferToolParams,
              type: Telnyx::AI::TransferTool::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Telnyx::AI::TransferTool::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TRANSFER =
            T.let(:transfer, Telnyx::AI::TransferTool::Type::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::AI::TransferTool::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
