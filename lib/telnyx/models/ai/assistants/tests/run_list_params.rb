# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Assistants
        module Tests
          # @see Telnyx::Resources::AI::Assistants::Tests::Runs#list
          class RunListParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            # @!attribute page_number
            #
            #   @return [Integer, nil]
            optional :page_number, Integer

            # @!attribute page_size
            #
            #   @return [Integer, nil]
            optional :page_size, Integer

            # @!attribute status
            #   Filter runs by execution status (pending, running, completed, failed, timeout)
            #
            #   @return [String, nil]
            optional :status, String

            # @!method initialize(page_number: nil, page_size: nil, status: nil, request_options: {})
            #   @param page_number [Integer]
            #
            #   @param page_size [Integer]
            #
            #   @param status [String] Filter runs by execution status (pending, running, completed, failed, timeout)
            #
            #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
