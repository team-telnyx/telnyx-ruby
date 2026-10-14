# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          # @see Telnyx::Resources::AI::Memory::Namespaces::Profiles#preview
          class ProfilePreviewParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            # @!attribute namespace
            #   The namespace. `default` exists for every organization.
            #
            #   @return [String]
            required :namespace, String

            # @!attribute profile_id
            #
            #   @return [String]
            required :profile_id, String

            # @!attribute instructions
            #   The candidate note to try. `null`, empty, or whitespace-only previews the
            #   neutral default -- the summary a profile returns to when instructions are
            #   cleared. Capped at 2000 characters, the same cap `PATCH /settings` applies on
            #   save; a longer note is refused with `422` before anything is generated.
            #
            #   @return [String, nil]
            optional :instructions, String, nil?: true

            # @!method initialize(namespace:, profile_id:, instructions: nil, request_options: {})
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::AI::Memory::Namespaces::ProfilePreviewParams} for more details.
            #
            #   @param namespace [String] The namespace. `default` exists for every organization.
            #
            #   @param profile_id [String]
            #
            #   @param instructions [String, nil] The candidate note to try. `null`, empty, or whitespace-only previews the neutra
            #
            #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
