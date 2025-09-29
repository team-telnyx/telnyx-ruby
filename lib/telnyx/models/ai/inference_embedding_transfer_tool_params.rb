# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class InferenceEmbeddingTransferToolParams < Telnyx::Internal::Type::BaseModel
        # @!attribute from
        #   Number or SIP URI placing the call.
        #
        #   @return [String]
        required :from, String

        # @!attribute targets
        #   The different possible targets of the transfer. The assistant will be able to
        #   choose one of the targets to transfer the call to.
        #
        #   @return [Array<Telnyx::Models::AI::InferenceEmbeddingTransferToolParams::Target>]
        required :targets,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::InferenceEmbeddingTransferToolParams::Target] }

        # @!attribute custom_headers
        #   Custom headers to be added to the SIP INVITE for the transfer command.
        #
        #   @return [Array<Telnyx::Models::AI::InferenceEmbeddingTransferToolParams::CustomHeader>, nil]
        optional :custom_headers,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::InferenceEmbeddingTransferToolParams::CustomHeader] }

        # @!attribute warm_transfer_instructions
        #   Natural language instructions for your agent for how to provide context for the
        #   transfer recipient.
        #
        #   @return [String, nil]
        optional :warm_transfer_instructions, String

        # @!method initialize(from:, targets:, custom_headers: nil, warm_transfer_instructions: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::InferenceEmbeddingTransferToolParams} for more details.
        #
        #   @param from [String] Number or SIP URI placing the call.
        #
        #   @param targets [Array<Telnyx::Models::AI::InferenceEmbeddingTransferToolParams::Target>] The different possible targets of the transfer. The assistant will be able to ch
        #
        #   @param custom_headers [Array<Telnyx::Models::AI::InferenceEmbeddingTransferToolParams::CustomHeader>] Custom headers to be added to the SIP INVITE for the transfer command.
        #
        #   @param warm_transfer_instructions [String] Natural language instructions for your agent for how to provide context for the

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

        class CustomHeader < Telnyx::Internal::Type::BaseModel
          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute value
          #   The value of the header. Note that we support mustache templating for the value.
          #   For example you can use
          #   `{{#integration_secret}}test-secret{{/integration_secret}}` to pass the value of
          #   the integration secret.
          #
          #   @return [String, nil]
          optional :value, String

          # @!method initialize(name: nil, value: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AI::InferenceEmbeddingTransferToolParams::CustomHeader} for
          #   more details.
          #
          #   @param name [String]
          #
          #   @param value [String] The value of the header. Note that we support mustache templating for the value.
        end
      end
    end
  end
end
