# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Assistants
        class Tests
          # @return [Telnyx::Resources::AI::Assistants::Tests::TestSuites]
          attr_reader :test_suites

          # @return [Telnyx::Resources::AI::Assistants::Tests::Runs]
          attr_reader :runs

          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::AI::Assistants::TestCreateParams} for more details.
          #
          # Creates a comprehensive test configuration for evaluating AI assistant
          # performance
          #
          # @overload create(destination:, instructions:, name:, rubric:, description: nil, max_duration_seconds: nil, telnyx_conversation_channel: nil, test_suite: nil, request_options: {})
          #
          # @param destination [String] The target destination for the test conversation. Format depends on the channel:
          #
          # @param instructions [String] Detailed instructions that define the test scenario and what the assistant shoul
          #
          # @param name [String] A descriptive name for the assistant test. This will be used to identify the tes
          #
          # @param rubric [Array<Telnyx::Models::AI::Assistants::TestCreateParams::Rubric>] Evaluation criteria used to assess the assistant's performance. Each rubric item
          #
          # @param description [String] Optional detailed description of what this test evaluates and its purpose. Helps
          #
          # @param max_duration_seconds [Integer] Maximum duration in seconds that the test conversation should run before timing
          #
          # @param telnyx_conversation_channel [Symbol, Telnyx::Models::AI::Assistants::TelnyxConversationChannel] The communication channel through which the test will be conducted. Determines h
          #
          # @param test_suite [String] Optional test suite name to group related tests together. Useful for organizing
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Assistants::AssistantTest]
          #
          # @see Telnyx::Models::AI::Assistants::TestCreateParams
          def create(params)
            parsed, options = Telnyx::AI::Assistants::TestCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "ai/assistants/tests",
              body: parsed,
              model: Telnyx::AI::Assistants::AssistantTest,
              options: options
            )
          end

          # Retrieves detailed information about a specific assistant test
          #
          # @overload retrieve(test_id, request_options: {})
          #
          # @param test_id [String]
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Assistants::AssistantTest]
          #
          # @see Telnyx::Models::AI::Assistants::TestRetrieveParams
          def retrieve(test_id, params = {})
            @client.request(
              method: :get,
              path: ["ai/assistants/tests/%1$s", test_id],
              model: Telnyx::AI::Assistants::AssistantTest,
              options: params[:request_options]
            )
          end

          # Updates an existing assistant test configuration with new settings
          #
          # @overload update(test_id, description: nil, destination: nil, instructions: nil, max_duration_seconds: nil, name: nil, rubric: nil, telnyx_conversation_channel: nil, test_suite: nil, request_options: {})
          #
          # @param test_id [String]
          #
          # @param description [String] Updated description of the test's purpose and evaluation criteria.
          #
          # @param destination [String] Updated target destination for test conversations.
          #
          # @param instructions [String] Updated test scenario instructions and objectives.
          #
          # @param max_duration_seconds [Integer] Updated maximum test duration in seconds.
          #
          # @param name [String] Updated name for the assistant test. Must be unique and descriptive.
          #
          # @param rubric [Array<Telnyx::Models::AI::Assistants::TestUpdateParams::Rubric>] Updated evaluation criteria for assessing assistant performance.
          #
          # @param telnyx_conversation_channel [Symbol, Telnyx::Models::AI::Assistants::TelnyxConversationChannel] Updated communication channel for the test execution.
          #
          # @param test_suite [String] Updated test suite assignment for better organization.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Assistants::AssistantTest]
          #
          # @see Telnyx::Models::AI::Assistants::TestUpdateParams
          def update(test_id, params = {})
            parsed, options = Telnyx::AI::Assistants::TestUpdateParams.dump_request(params)
            @client.request(
              method: :put,
              path: ["ai/assistants/tests/%1$s", test_id],
              body: parsed,
              model: Telnyx::AI::Assistants::AssistantTest,
              options: options
            )
          end

          # Retrieves a paginated list of assistant tests with optional filtering
          # capabilities
          #
          # @overload list(destination: nil, page_number: nil, page_size: nil, telnyx_conversation_channel: nil, test_suite: nil, request_options: {})
          #
          # @param destination [String] Filter tests by destination (phone number, webhook URL, etc.)
          #
          # @param page_number [Integer]
          #
          # @param page_size [Integer]
          #
          # @param telnyx_conversation_channel [String] Filter tests by communication channel (e.g., 'web_chat', 'sms')
          #
          # @param test_suite [String] Filter tests by test suite name
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::AI::Assistants::AssistantTest>]
          #
          # @see Telnyx::Models::AI::Assistants::TestListParams
          def list(params = {})
            parsed, options = Telnyx::AI::Assistants::TestListParams.dump_request(params)
            @client.request(
              method: :get,
              path: "ai/assistants/tests",
              query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
              page: Telnyx::Internal::DefaultFlatPagination,
              model: Telnyx::AI::Assistants::AssistantTest,
              options: options
            )
          end

          # Permanently removes an assistant test and all associated data
          #
          # @overload delete(test_id, request_options: {})
          #
          # @param test_id [String]
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see Telnyx::Models::AI::Assistants::TestDeleteParams
          def delete(test_id, params = {})
            @client.request(
              method: :delete,
              path: ["ai/assistants/tests/%1$s", test_id],
              model: NilClass,
              options: params[:request_options]
            )
          end

          # @api private
          #
          # @param client [Telnyx::Client]
          def initialize(client:)
            @client = client
            @test_suites = Telnyx::Resources::AI::Assistants::Tests::TestSuites.new(client: client)
            @runs = Telnyx::Resources::AI::Assistants::Tests::Runs.new(client: client)
          end
        end
      end
    end
  end
end
