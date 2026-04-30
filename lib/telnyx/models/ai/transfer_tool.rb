# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class TransferTool < Telnyx::Internal::Type::BaseModel
        # @!attribute transfer
        #
        #   @return [Telnyx::Models::AI::TransferTool::Transfer]
        required :transfer, -> { Telnyx::AI::TransferTool::Transfer }

        # @!attribute type
        #
        #   @return [Symbol, Telnyx::Models::AI::TransferTool::Type]
        required :type, enum: -> { Telnyx::AI::TransferTool::Type }

        # @!method initialize(transfer:, type:)
        #   @param transfer [Telnyx::Models::AI::TransferTool::Transfer]
        #   @param type [Symbol, Telnyx::Models::AI::TransferTool::Type]

        # @see Telnyx::Models::AI::TransferTool#transfer
        class Transfer < Telnyx::Internal::Type::BaseModel
          # @!attribute from
          #   Number or SIP URI placing the call.
          #
          #   @return [String]
          required :from, String

          # @!attribute targets
          #   The different possible targets of the transfer. The assistant will be able to
          #   choose one of the targets to transfer the call to. This can also be a dynamic
          #   variable string like `{{ targets }}` where `targets` is returned by the dynamic
          #   variables webhook and resolves to an array of target objects at runtime.
          #
          #   @return [Array<Telnyx::Models::AI::TransferTool::Transfer::Targets::UnionMember0>, String]
          required :targets, union: -> { Telnyx::AI::TransferTool::Transfer::Targets }

          # @!method initialize(from:, targets:)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AI::TransferTool::Transfer} for more details.
          #
          #   @param from [String] Number or SIP URI placing the call.
          #
          #   @param targets [Array<Telnyx::Models::AI::TransferTool::Transfer::Targets::UnionMember0>, String] The different possible targets of the transfer. The assistant will be able to ch

          # The different possible targets of the transfer. The assistant will be able to
          # choose one of the targets to transfer the call to. This can also be a dynamic
          # variable string like `{{ targets }}` where `targets` is returned by the dynamic
          # variables webhook and resolves to an array of target objects at runtime.
          #
          # @see Telnyx::Models::AI::TransferTool::Transfer#targets
          module Targets
            extend Telnyx::Internal::Type::Union

            variant -> { Telnyx::Models::AI::TransferTool::Transfer::Targets::UnionMember0Array }

            # A dynamic variable string like `{{ targets }}` where `targets` is returned by the dynamic variables webhook and resolves to an array of target objects at runtime.
            variant String

            class UnionMember0 < Telnyx::Internal::Type::BaseModel
              # @!attribute to
              #   The destination number or SIP URI of the call.
              #
              #   @return [String]
              required :to, String

              # @!attribute name
              #   The name of the target.
              #
              #   @return [String, nil]
              optional :name, String

              # @!method initialize(to:, name: nil)
              #   @param to [String] The destination number or SIP URI of the call.
              #
              #   @param name [String] The name of the target.
            end

            # @!method self.variants
            #   @return [Array(Array<Telnyx::Models::AI::TransferTool::Transfer::Targets::UnionMember0>, String)]

            # @type [Telnyx::Internal::Type::Converter]
            UnionMember0Array =
              Telnyx::Internal::Type::ArrayOf[-> {
                Telnyx::AI::TransferTool::Transfer::Targets::UnionMember0
              }]
          end
        end

        # @see Telnyx::Models::AI::TransferTool#type
        module Type
          extend Telnyx::Internal::Type::Enum

          TRANSFER = :transfer

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
