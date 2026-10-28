# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            # @see Telnyx::Resources::AI::Tests::TestFramework::V1::Aiagents#create
            class AiagentCreateParams < Telnyx::Internal::Type::BaseModel
              extend Telnyx::Internal::Type::RequestParameters::Converter
              include Telnyx::Internal::Type::RequestParameters

              # @!attribute agent_name
              #   Name of the test agent.
              #
              #   @return [String]
              required :agent_name, String

              # @!attribute assistant_id
              #   ID of the Telnyx AI assistant under test.
              #
              #   @return [String]
              required :assistant_id, String

              # @!attribute auto_fetch_calls_enabled
              #
              #   @return [Boolean, nil]
              optional :auto_fetch_calls_enabled, Telnyx::Internal::Type::Boolean

              # @!attribute auto_sync_prompt_enabled
              #
              #   @return [Boolean, nil]
              optional :auto_sync_prompt_enabled, Telnyx::Internal::Type::Boolean

              # @!attribute auto_update_dropoff_nodes
              #
              #   @return [Boolean, nil]
              optional :auto_update_dropoff_nodes, Telnyx::Internal::Type::Boolean

              # @!attribute auto_update_topic_nodes
              #
              #   @return [Boolean, nil]
              optional :auto_update_topic_nodes, Telnyx::Internal::Type::Boolean

              # @!attribute contact_number
              #
              #   @return [String, nil]
              optional :contact_number, String

              # @!attribute description
              #
              #   @return [String, nil]
              optional :description, String

              # @!attribute inbound
              #
              #   @return [Boolean, nil]
              optional :inbound, Telnyx::Internal::Type::Boolean

              # @!attribute language
              #   ISO language code the test agent converses in.
              #
              #   @return [String, nil]
              optional :language, String

              # @!attribute llm_max_tokens
              #
              #   @return [Integer, nil]
              optional :llm_max_tokens, Integer

              # @!attribute llm_model
              #
              #   @return [String, nil]
              optional :llm_model, String

              # @!attribute llm_system_prompt
              #
              #   @return [String, nil]
              optional :llm_system_prompt, String

              # @!attribute llm_temperature
              #
              #   @return [Float, nil]
              optional :llm_temperature, Float

              # @!attribute outbound_auto_call
              #
              #   @return [Boolean, nil]
              optional :outbound_auto_call, Telnyx::Internal::Type::Boolean

              # @!attribute sip_endpoint
              #
              #   @return [String, nil]
              optional :sip_endpoint, String

              # @!method initialize(agent_name:, assistant_id:, auto_fetch_calls_enabled: nil, auto_sync_prompt_enabled: nil, auto_update_dropoff_nodes: nil, auto_update_topic_nodes: nil, contact_number: nil, description: nil, inbound: nil, language: nil, llm_max_tokens: nil, llm_model: nil, llm_system_prompt: nil, llm_temperature: nil, outbound_auto_call: nil, sip_endpoint: nil, request_options: {})
              #   @param agent_name [String] Name of the test agent.
              #
              #   @param assistant_id [String] ID of the Telnyx AI assistant under test.
              #
              #   @param auto_fetch_calls_enabled [Boolean]
              #
              #   @param auto_sync_prompt_enabled [Boolean]
              #
              #   @param auto_update_dropoff_nodes [Boolean]
              #
              #   @param auto_update_topic_nodes [Boolean]
              #
              #   @param contact_number [String]
              #
              #   @param description [String]
              #
              #   @param inbound [Boolean]
              #
              #   @param language [String] ISO language code the test agent converses in.
              #
              #   @param llm_max_tokens [Integer]
              #
              #   @param llm_model [String]
              #
              #   @param llm_system_prompt [String]
              #
              #   @param llm_temperature [Float]
              #
              #   @param outbound_auto_call [Boolean]
              #
              #   @param sip_endpoint [String]
              #
              #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
            end
          end
        end
      end
    end
  end
end
