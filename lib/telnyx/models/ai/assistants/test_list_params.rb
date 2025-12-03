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

          # @!attribute page_number
          #
          #   @return [Integer, nil]
          optional :page_number, Integer

          # @!attribute page_size
          #
          #   @return [Integer, nil]
          optional :page_size, Integer

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

          # @!method initialize(destination: nil, page_number: nil, page_size: nil, telnyx_conversation_channel: nil, test_suite: nil, request_options: {})
          #   @param destination [String] Filter tests by destination (phone number, webhook URL, etc.)
          #
          #   @param page_number [Integer]
          #
          #   @param page_size [Integer]
          #
          #   @param telnyx_conversation_channel [String] Filter tests by communication channel (e.g., 'web_chat', 'sms')
          #
          #   @param test_suite [String] Filter tests by test suite name
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
