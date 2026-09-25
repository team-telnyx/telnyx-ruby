# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          # @see Telnyx::Resources::AI::Memory::Namespaces::Profiles#list
          class ProfileListParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            # @!attribute namespace
            #
            #   @return [String]
            required :namespace, String

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

            # @!method initialize(namespace:, page_number: nil, page_size: nil, request_options: {})
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::AI::Memory::Namespaces::ProfileListParams} for more details.
            #
            #   @param namespace [String]
            #
            #   @param page_number [Integer] The page to return, counting from 1. Bounded in depth: (page[number] - 1) \*
            #   page
            #
            #   @param page_size [Integer] How many results a page holds.
            #
            #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
