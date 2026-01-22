# typed: strong

module Telnyx
  module Models
    module AI
      class TransferTool < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::TransferTool, Telnyx::Internal::AnyHash)
          end

        sig { returns(Telnyx::AI::TransferTool::Transfer) }
        attr_reader :transfer

        sig do
          params(transfer: Telnyx::AI::TransferTool::Transfer::OrHash).void
        end
        attr_writer :transfer

        sig { returns(Telnyx::AI::TransferTool::Type::OrSymbol) }
        attr_accessor :type

        sig do
          params(
            transfer: Telnyx::AI::TransferTool::Transfer::OrHash,
            type: Telnyx::AI::TransferTool::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(transfer:, type:)
        end

        sig do
          override.returns(
            {
              transfer: Telnyx::AI::TransferTool::Transfer,
              type: Telnyx::AI::TransferTool::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        class Transfer < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::TransferTool::Transfer,
                Telnyx::Internal::AnyHash
              )
            end

          # Number or SIP URI placing the call.
          sig { returns(String) }
          attr_accessor :from

          # The different possible targets of the transfer. The assistant will be able to
          # choose one of the targets to transfer the call to.
          sig { returns(T::Array[Telnyx::AI::TransferTool::Transfer::Target]) }
          attr_accessor :targets

          sig do
            params(
              from: String,
              targets:
                T::Array[Telnyx::AI::TransferTool::Transfer::Target::OrHash]
            ).returns(T.attached_class)
          end
          def self.new(
            # Number or SIP URI placing the call.
            from:,
            # The different possible targets of the transfer. The assistant will be able to
            # choose one of the targets to transfer the call to.
            targets:
          )
          end

          sig do
            override.returns(
              {
                from: String,
                targets: T::Array[Telnyx::AI::TransferTool::Transfer::Target]
              }
            )
          end
          def to_hash
          end

          class Target < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::TransferTool::Transfer::Target,
                  Telnyx::Internal::AnyHash
                )
              end

            # The name of the target.
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            # The destination number or SIP URI of the call.
            sig { returns(T.nilable(String)) }
            attr_reader :to

            sig { params(to: String).void }
            attr_writer :to

            sig { params(name: String, to: String).returns(T.attached_class) }
            def self.new(
              # The name of the target.
              name: nil,
              # The destination number or SIP URI of the call.
              to: nil
            )
            end

            sig { override.returns({ name: String, to: String }) }
            def to_hash
            end
          end
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
