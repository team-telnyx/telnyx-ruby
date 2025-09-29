# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Assistants
        module Tests
          module TestSuites
            # @see Telnyx::Resources::AI::Assistants::Tests::TestSuites::Runs#list
            class RunListParams < Telnyx::Internal::Type::BaseModel
              extend Telnyx::Internal::Type::RequestParameters::Converter
              include Telnyx::Internal::Type::RequestParameters

              # @!attribute page
              #   Consolidated page parameter (deepObject style). Originally: page[size],
              #   page[number]
              #
              #   @return [Telnyx::Models::AI::Assistants::Tests::TestSuites::RunListParams::Page, nil]
              optional :page, -> { Telnyx::AI::Assistants::Tests::TestSuites::RunListParams::Page }

              # @!attribute status
              #   Filter runs by execution status (pending, running, completed, failed, timeout)
              #
              #   @return [String, nil]
              optional :status, String

              # @!attribute test_suite_run_id
              #   Filter runs by specific suite execution batch ID
              #
              #   @return [String, nil]
              optional :test_suite_run_id, String

              # @!method initialize(page: nil, status: nil, test_suite_run_id: nil, request_options: {})
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::AI::Assistants::Tests::TestSuites::RunListParams} for more
              #   details.
              #
              #   @param page [Telnyx::Models::AI::Assistants::Tests::TestSuites::RunListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
              #
              #   @param status [String] Filter runs by execution status (pending, running, completed, failed, timeout)
              #
              #   @param test_suite_run_id [String] Filter runs by specific suite execution batch ID
              #
              #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

              class Page < Telnyx::Internal::Type::BaseModel
                # @!attribute number
                #   Page number to retrieve (1-based indexing)
                #
                #   @return [Integer, nil]
                optional :number, Integer

                # @!attribute size
                #   Number of test runs to return per page (1-100)
                #
                #   @return [Integer, nil]
                optional :size, Integer

                # @!method initialize(number: nil, size: nil)
                #   Consolidated page parameter (deepObject style). Originally: page[size],
                #   page[number]
                #
                #   @param number [Integer] Page number to retrieve (1-based indexing)
                #
                #   @param size [Integer] Number of test runs to return per page (1-100)
              end
            end
          end
        end
      end
    end
  end
end
