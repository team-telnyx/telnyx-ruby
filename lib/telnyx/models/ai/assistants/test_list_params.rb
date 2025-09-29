# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Assistants
        # @see Telnyx::Resources::AI::Assistants::Tests#list
        class TestListParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute destination
          #   Filter tests by destination (phone number, webhook URL, etc.)
          #
          #   @return [String, nil]
          optional :destination, String

          # @!attribute page
          #   Consolidated page parameter (deepObject style). Originally: page[size],
          #   page[number]
          #
          #   @return [Telnyx::Models::AI::Assistants::TestListParams::Page, nil]
          optional :page, -> { Telnyx::AI::Assistants::TestListParams::Page }

          # @!attribute telnyx_conversation_channel
          #   Filter tests by communication channel (e.g., 'web_chat', 'sms')
          #
          #   @return [String, nil]
          optional :telnyx_conversation_channel, String

          # @!attribute test_suite
          #   Filter tests by test suite name
          #
          #   @return [String, nil]
          optional :test_suite, String

          # @!method initialize(destination: nil, page: nil, telnyx_conversation_channel: nil, test_suite: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AI::Assistants::TestListParams} for more details.
          #
          #   @param destination [String] Filter tests by destination (phone number, webhook URL, etc.)
          #
          #   @param page [Telnyx::Models::AI::Assistants::TestListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
          #
          #   @param telnyx_conversation_channel [String] Filter tests by communication channel (e.g., 'web_chat', 'sms')
          #
          #   @param test_suite [String] Filter tests by test suite name
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

          class Page < Telnyx::Internal::Type::BaseModel
            # @!attribute number
            #   Page number to retrieve (1-based indexing)
            #
            #   @return [Integer, nil]
            optional :number, Integer

            # @!attribute size
            #   Number of tests to return per page (1-100)
            #
            #   @return [Integer, nil]
            optional :size, Integer

            # @!method initialize(number: nil, size: nil)
            #   Consolidated page parameter (deepObject style). Originally: page[size],
            #   page[number]
            #
            #   @param number [Integer] Page number to retrieve (1-based indexing)
            #
            #   @param size [Integer] Number of tests to return per page (1-100)
          end
        end
      end
    end
  end
end
