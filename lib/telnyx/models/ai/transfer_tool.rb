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
          #   choose one of the targets to transfer the call to.
          #
          #   @return [Array<Telnyx::Models::AI::TransferTool::Transfer::Target>]
          required :targets, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::TransferTool::Transfer::Target] }

          # @!method initialize(from:, targets:)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AI::TransferTool::Transfer} for more details.
          #
          #   @param from [String] Number or SIP URI placing the call.
          #
          #   @param targets [Array<Telnyx::Models::AI::TransferTool::Transfer::Target>] The different possible targets of the transfer. The assistant will be able to ch

          class Target < Telnyx::Internal::Type::BaseModel
            # @!attribute name
            #   The name of the target.
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute to
            #   The destination number or SIP URI of the call.
            #
            #   @return [String, nil]
            optional :to, String

            # @!method initialize(name: nil, to: nil)
            #   @param name [String] The name of the target.
            #
            #   @param to [String] The destination number or SIP URI of the call.
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
