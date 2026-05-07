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
          # choose one of the targets to transfer the call to. This can also be a dynamic
          # variable string like `{{ targets }}` where `targets` is returned by the dynamic
          # variables webhook and resolves to an array of target objects at runtime.
          sig { returns(Telnyx::AI::TransferTool::Transfer::Targets::Variants) }
          attr_accessor :targets

          sig do
            params(
              from: String,
              targets: Telnyx::AI::TransferTool::Transfer::Targets::Variants
            ).returns(T.attached_class)
          end
          def self.new(
            # Number or SIP URI placing the call.
            from:,
            # The different possible targets of the transfer. The assistant will be able to
            # choose one of the targets to transfer the call to. This can also be a dynamic
            # variable string like `{{ targets }}` where `targets` is returned by the dynamic
            # variables webhook and resolves to an array of target objects at runtime.
            targets:
          )
          end

          sig do
            override.returns(
              {
                from: String,
                targets: Telnyx::AI::TransferTool::Transfer::Targets::Variants
              }
            )
          end
          def to_hash
          end

          # The different possible targets of the transfer. The assistant will be able to
          # choose one of the targets to transfer the call to. This can also be a dynamic
          # variable string like `{{ targets }}` where `targets` is returned by the dynamic
          # variables webhook and resolves to an array of target objects at runtime.
          module Targets
            extend Telnyx::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  T::Array[
                    Telnyx::AI::TransferTool::Transfer::Targets::UnionMember0
                  ],
                  String
                )
              end

            class UnionMember0 < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::TransferTool::Transfer::Targets::UnionMember0,
                    Telnyx::Internal::AnyHash
                  )
                end

              # The destination number or SIP URI of the call.
              sig { returns(String) }
              attr_accessor :to

              # The name of the target.
              sig { returns(T.nilable(String)) }
              attr_reader :name

              sig { params(name: String).void }
              attr_writer :name

              sig { params(to: String, name: String).returns(T.attached_class) }
              def self.new(
                # The destination number or SIP URI of the call.
                to:,
                # The name of the target.
                name: nil
              )
              end

              sig { override.returns({ to: String, name: String }) }
              def to_hash
              end
            end

            sig do
              override.returns(
                T::Array[Telnyx::AI::TransferTool::Transfer::Targets::Variants]
              )
            end
            def self.variants
            end

            UnionMember0Array =
              T.let(
                Telnyx::Internal::Type::ArrayOf[
                  Telnyx::AI::TransferTool::Transfer::Targets::UnionMember0
                ],
                Telnyx::Internal::Type::Converter
              )
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
