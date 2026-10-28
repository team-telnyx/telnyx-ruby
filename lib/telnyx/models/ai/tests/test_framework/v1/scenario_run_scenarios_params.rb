# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            # @see Telnyx::Resources::AI::Tests::TestFramework::V1::Scenarios#run_scenarios
            class ScenarioRunScenariosParams < Telnyx::Internal::Type::BaseModel
              extend Telnyx::Internal::Type::RequestParameters::Converter
              include Telnyx::Internal::Type::RequestParameters

              # @!attribute agent_id
              #
              #   @return [Integer, nil]
              optional :agent_id, Integer

              # @!attribute agent_number
              #
              #   @return [String, nil]
              optional :agent_number, String

              # @!attribute assistant_id
              #
              #   @return [String, nil]
              optional :assistant_id, String

              # @!attribute concurrency_limit
              #   Maximum number of concurrent simulated calls.
              #
              #   @return [Integer, nil]
              optional :concurrency_limit, Integer

              # @!attribute frequency
              #
              #   @return [Integer, nil]
              optional :frequency, Integer

              # @!attribute mode
              #
              #   @return [Symbol, Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRunScenariosParams::Mode, nil]
              optional :mode, enum: -> { Telnyx::AI::Tests::TestFramework::V1::ScenarioRunScenariosParams::Mode }

              # @!attribute name
              #
              #   @return [String, nil]
              optional :name, String

              # @!attribute outbound_phone_number
              #
              #   @return [String, nil]
              optional :outbound_phone_number, String

              # @!attribute personality_ids
              #
              #   @return [Array<Integer>, nil]
              optional :personality_ids, Telnyx::Internal::Type::ArrayOf[Integer]

              # @!attribute scenarios
              #   Scenario IDs to run, or the literal string 'all'.
              #
              #   @return [Array<Object>, String, nil]
              optional :scenarios,
                       union: -> { Telnyx::AI::Tests::TestFramework::V1::ScenarioRunScenariosParams::Scenarios }

              # @!attribute tags
              #
              #   @return [Array<String>, nil]
              optional :tags, Telnyx::Internal::Type::ArrayOf[String]

              # @!attribute test_profile_ids
              #
              #   @return [Array<Integer>, nil]
              optional :test_profile_ids, Telnyx::Internal::Type::ArrayOf[Integer]

              # @!method initialize(agent_id: nil, agent_number: nil, assistant_id: nil, concurrency_limit: nil, frequency: nil, mode: nil, name: nil, outbound_phone_number: nil, personality_ids: nil, scenarios: nil, tags: nil, test_profile_ids: nil, request_options: {})
              #   @param agent_id [Integer]
              #
              #   @param agent_number [String]
              #
              #   @param assistant_id [String]
              #
              #   @param concurrency_limit [Integer] Maximum number of concurrent simulated calls.
              #
              #   @param frequency [Integer]
              #
              #   @param mode [Symbol, Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRunScenariosParams::Mode]
              #
              #   @param name [String]
              #
              #   @param outbound_phone_number [String]
              #
              #   @param personality_ids [Array<Integer>]
              #
              #   @param scenarios [Array<Object>, String] Scenario IDs to run, or the literal string 'all'.
              #
              #   @param tags [Array<String>]
              #
              #   @param test_profile_ids [Array<Integer>]
              #
              #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

              module Mode
                extend Telnyx::Internal::Type::Enum

                SAME_NUMBER = :same_number
                DIFFERENT_NUMBERS = :different_numbers

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # Scenario IDs to run, or the literal string 'all'.
              module Scenarios
                extend Telnyx::Internal::Type::Union

                # Scenario IDs to run, or the literal string 'all'.
                variant -> { Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRunScenariosParams::Scenarios::UnionMember0Array }

                # Scenario IDs to run, or the literal string 'all'.
                variant String

                # @!method self.variants
                #   @return [Array(Array<Object>, String)]

                # @type [Telnyx::Internal::Type::Converter]
                UnionMember0Array = Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::Unknown]
              end
            end
          end
        end
      end
    end
  end
end
