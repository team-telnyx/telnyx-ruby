# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          # @see Telnyx::Resources::AI::Memory::Namespaces::Settings#patch_all
          class SettingPatchAllParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            # @!attribute namespace
            #   The namespace. `default` exists for every organization.
            #
            #   @return [String]
            required :namespace, String

            # @!attribute summary
            #   A partial update to a namespace's summary settings.
            #
            #   Only the fields present in the request are changed; the rest are left as they
            #   are. Sending `instructions: null` (or empty) clears the instructions.
            #
            #   @return [Telnyx::Models::AI::Memory::Namespaces::SettingPatchAllParams::Summary, nil]
            optional :summary,
                     -> {
                       Telnyx::AI::Memory::Namespaces::SettingPatchAllParams::Summary
                     },
                     nil?: true

            # @!method initialize(namespace:, summary: nil, request_options: {})
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::AI::Memory::Namespaces::SettingPatchAllParams} for more
            #   details.
            #
            #   @param namespace [String] The namespace. `default` exists for every organization.
            #
            #   @param summary [Telnyx::Models::AI::Memory::Namespaces::SettingPatchAllParams::Summary, nil] A partial update to a namespace's summary settings.
            #
            #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

            class Summary < Telnyx::Internal::Type::BaseModel
              # @!attribute instructions
              #   Replace the namespace's summary instructions. Null or empty clears them and
              #   returns to the neutral default. Omit the field to leave the current instructions
              #   unchanged.
              #
              #   @return [String, nil]
              optional :instructions, String, nil?: true

              # @!method initialize(instructions: nil)
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::AI::Memory::Namespaces::SettingPatchAllParams::Summary} for
              #   more details.
              #
              #   A partial update to a namespace's summary settings.
              #
              #   Only the fields present in the request are changed; the rest are left as they
              #   are. Sending `instructions: null` (or empty) clears the instructions.
              #
              #   @param instructions [String, nil] Replace the namespace's summary instructions. Null or empty clears them and retu
            end
          end
        end
      end
    end
  end
end
