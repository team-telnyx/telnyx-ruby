# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Assistants
        module Tests
          # @see Telnyx::Resources::AI::Assistants::Tests::Runs#retrieve
          class RunRetrieveParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            # @!attribute test_id
            #
            #   @return [String]
            required :test_id, String

            # @!method initialize(test_id:, request_options: {})
            #   @param test_id [String]
            #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
