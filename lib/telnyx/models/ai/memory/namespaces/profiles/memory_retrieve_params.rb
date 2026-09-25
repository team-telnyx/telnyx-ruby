# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          module Profiles
            # @see Telnyx::Resources::AI::Memory::Namespaces::Profiles::Memories#retrieve
            class MemoryRetrieveParams < Telnyx::Internal::Type::BaseModel
              extend Telnyx::Internal::Type::RequestParameters::Converter
              include Telnyx::Internal::Type::RequestParameters

              # @!attribute namespace
              #   The namespace. `default` exists for every organization.
              #
              #   @return [String]
              required :namespace, String

              # @!attribute profile_id
              #   The profile: your identifier for the user, caller or agent this memory is about.
              #
              #   @return [String]
              required :profile_id, String

              # @!attribute memory_id
              #   A memory's id, as `recall` and the listing return it.
              #
              #   @return [String]
              required :memory_id, String

              # @!method initialize(namespace:, profile_id:, memory_id:, request_options: {})
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::AI::Memory::Namespaces::Profiles::MemoryRetrieveParams} for
              #   more details.
              #
              #   @param namespace [String] The namespace. `default` exists for every organization.
              #
              #   @param profile_id [String] The profile: your identifier for the user, caller or agent this memory is about.
              #
              #   @param memory_id [String] A memory's id, as `recall` and the listing return it.
              #
              #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
            end
          end
        end
      end
    end
  end
end
