# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          # @see Telnyx::Resources::AI::Memory::Namespaces::Profiles#recall
          class ProfileRecallParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            # @!attribute namespace
            #
            #   @return [String]
            required :namespace, String

            # @!attribute profile_id
            #
            #   @return [String]
            required :profile_id, String

            # @!attribute query
            #
            #   @return [String]
            required :query, String

            # @!attribute top_k
            #
            #   @return [Integer, nil]
            optional :top_k, Integer, nil?: true

            # @!method initialize(namespace:, profile_id:, query:, top_k: nil, request_options: {})
            #   @param namespace [String]
            #   @param profile_id [String]
            #   @param query [String]
            #   @param top_k [Integer, nil]
            #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
