# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            # @see Telnyx::Resources::AI::Tests::TestFramework::V1::Aiagents#create
            class TestAgent < Telnyx::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [Integer]
              required :id, Integer

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

              # @!attribute created_at
              #
              #   @return [Time]
              required :created_at, Time

              # @!attribute updated_at
              #
              #   @return [Time]
              required :updated_at, Time

              # @!attribute auto_update_dropoff_nodes
              #
              #   @return [Boolean, nil]
              optional :auto_update_dropoff_nodes, Telnyx::Internal::Type::Boolean

              # @!attribute auto_update_topic_nodes
              #
              #   @return [Boolean, nil]
              optional :auto_update_topic_nodes, Telnyx::Internal::Type::Boolean

              # @!attribute chat_assistant_id
              #   ID of the chat assistant under test, when testing text channels.
              #
              #   @return [String, nil]
              optional :chat_assistant_id, String

              # @!attribute contact_number
              #   Contact phone number for the test agent.
              #
              #   @return [String, nil]
              optional :contact_number, String

              # @!attribute description
              #
              #   @return [String, nil]
              optional :description, String

              # @!attribute enabled_personalities
              #   IDs of the test personalities enabled for this agent.
              #
              #   @return [Array<Integer>, nil]
              optional :enabled_personalities, Telnyx::Internal::Type::ArrayOf[Integer]

              # @!attribute hallucination_metric_kb_files
              #
              #   @return [Array<Integer>, nil]
              optional :hallucination_metric_kb_files, Telnyx::Internal::Type::ArrayOf[Integer]

              # @!attribute inbound
              #   Whether the test agent accepts inbound calls.
              #
              #   @return [Boolean, nil]
              optional :inbound, Telnyx::Internal::Type::Boolean

              # @!attribute knowledge_base_files
              #   Knowledge-base files associated with the test agent.
              #
              #   @return [Array<Object>, nil]
              optional :knowledge_base_files, Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::Unknown]

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
              #   Model used to drive the test agent's side of the conversation.
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

              # @!attribute outbound_numbers
              #   Outbound numbers associated with the test agent.
              #
              #   @return [Array<Object>, nil]
              optional :outbound_numbers,
                       Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::Unknown],
                       nil?: true

              # @!attribute sip_auth
              #
              #   @return [Hash{Symbol=>String}, nil]
              optional :sip_auth, Telnyx::Internal::Type::HashOf[String], nil?: true

              # @!attribute sip_endpoint
              #
              #   @return [String, nil]
              optional :sip_endpoint, String

              # @!method initialize(id:, agent_name:, assistant_id:, created_at:, updated_at:, auto_update_dropoff_nodes: nil, auto_update_topic_nodes: nil, chat_assistant_id: nil, contact_number: nil, description: nil, enabled_personalities: nil, hallucination_metric_kb_files: nil, inbound: nil, knowledge_base_files: nil, language: nil, llm_max_tokens: nil, llm_model: nil, llm_system_prompt: nil, llm_temperature: nil, outbound_auto_call: nil, outbound_numbers: nil, sip_auth: nil, sip_endpoint: nil)
              #   @param id [Integer]
              #
              #   @param agent_name [String] Name of the test agent.
              #
              #   @param assistant_id [String] ID of the Telnyx AI assistant under test.
              #
              #   @param created_at [Time]
              #
              #   @param updated_at [Time]
              #
              #   @param auto_update_dropoff_nodes [Boolean]
              #
              #   @param auto_update_topic_nodes [Boolean]
              #
              #   @param chat_assistant_id [String] ID of the chat assistant under test, when testing text channels.
              #
              #   @param contact_number [String] Contact phone number for the test agent.
              #
              #   @param description [String]
              #
              #   @param enabled_personalities [Array<Integer>] IDs of the test personalities enabled for this agent.
              #
              #   @param hallucination_metric_kb_files [Array<Integer>]
              #
              #   @param inbound [Boolean] Whether the test agent accepts inbound calls.
              #
              #   @param knowledge_base_files [Array<Object>] Knowledge-base files associated with the test agent.
              #
              #   @param language [String] ISO language code the test agent converses in.
              #
              #   @param llm_max_tokens [Integer]
              #
              #   @param llm_model [String] Model used to drive the test agent's side of the conversation.
              #
              #   @param llm_system_prompt [String]
              #
              #   @param llm_temperature [Float]
              #
              #   @param outbound_auto_call [Boolean]
              #
              #   @param outbound_numbers [Array<Object>, nil] Outbound numbers associated with the test agent.
              #
              #   @param sip_auth [Hash{Symbol=>String}, nil]
              #
              #   @param sip_endpoint [String]
            end
          end
        end
      end
    end
  end
end
