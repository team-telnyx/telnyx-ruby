# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Assistants
        module Tests
          # @see Telnyx::Resources::AI::Assistants::Tests::Runs#trigger
          class RunTriggerParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            # @!attribute destination_version_id
            #   Optional assistant version ID to use for this test run. If provided, the version
            #   must exist or a 400 error will be returned. If not provided, test will run on
            #   main version
            #
            #   @return [String, nil]
            optional :destination_version_id, String

            # @!method initialize(destination_version_id: nil, request_options: {})
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::AI::Assistants::Tests::RunTriggerParams} for more details.
            #
            #   @param destination_version_id [String] Optional assistant version ID to use for this test run. If provided, the version
            #
            #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
