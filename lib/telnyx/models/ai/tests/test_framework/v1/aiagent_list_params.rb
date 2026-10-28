# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            # @see Telnyx::Resources::AI::Tests::TestFramework::V1::Aiagents#list
            class AiagentListParams < Telnyx::Internal::Type::BaseModel
              extend Telnyx::Internal::Type::RequestParameters::Converter
              include Telnyx::Internal::Type::RequestParameters

              # @!attribute page
              #   Page number (1-based).
              #
              #   @return [Integer, nil]
              optional :page, Integer

              # @!attribute page_size
              #   Number of results per page.
              #
              #   @return [Integer, nil]
              optional :page_size, Integer

              # @!method initialize(page: nil, page_size: nil, request_options: {})
              #   @param page [Integer] Page number (1-based).
              #
              #   @param page_size [Integer] Number of results per page.
              #
              #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
            end
          end
        end
      end
    end
  end
end
