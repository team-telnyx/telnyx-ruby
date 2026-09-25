# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          module Profiles
            # @see Telnyx::Resources::AI::Memory::Namespaces::Profiles::Sources#list
            class SourceListParams < Telnyx::Internal::Type::BaseModel
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

              # @!attribute page_number
              #   The page to return, counting from 1. Bounded in depth: (page[number] - 1) \*
              #   page[size] may be at most 10000.
              #
              #   @return [Integer, nil]
              optional :page_number, Integer

              # @!attribute page_size
              #   How many results a page holds.
              #
              #   @return [Integer, nil]
              optional :page_size, Integer

              # @!attribute session_id
              #   An ingested session, by the `session_id` it was ingested with. Narrows the
              #   request to the source that session was stored as.
              #
              #   @return [String, nil]
              optional :session_id, String, nil?: true

              # @!method initialize(namespace:, profile_id:, page_number: nil, page_size: nil, session_id: nil, request_options: {})
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceListParams} for more
              #   details.
              #
              #   @param namespace [String]
              #
              #   @param profile_id [String]
              #
              #   @param page_number [Integer] The page to return, counting from 1. Bounded in depth: (page[number] - 1) \*
              #   page
              #
              #   @param page_size [Integer] How many results a page holds.
              #
              #   @param session_id [String, nil] An ingested session, by the `session_id` it was ingested with. Narrows the reque
              #
              #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
            end
          end
        end
      end
    end
  end
end
