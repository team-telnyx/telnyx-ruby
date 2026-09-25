# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          module Profiles
            # @see Telnyx::Resources::AI::Memory::Namespaces::Profiles::Sources#retrieve
            class SourceRetrieveParams < Telnyx::Internal::Type::BaseModel
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

              # @!attribute source_id
              #   Identifies one source within its profile: an ingested session, or one remembered
              #   fact. Returned by `ingest` and `remember` when the write is accepted.
              #   Re-ingesting a session keeps its source id.
              #
              #   @return [String]
              required :source_id, String

              # @!method initialize(namespace:, profile_id:, source_id:, request_options: {})
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceRetrieveParams} for
              #   more details.
              #
              #   @param namespace [String] The namespace. `default` exists for every organization.
              #
              #   @param profile_id [String] The profile: your identifier for the user, caller or agent this memory is about.
              #
              #   @param source_id [String] Identifies one source within its profile: an ingested session, or one remembered
              #
              #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
            end
          end
        end
      end
    end
  end
end
