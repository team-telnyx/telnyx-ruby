# typed: strong

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            class TestAgent < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::Tests::TestFramework::V1::TestAgent,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig { returns(Integer) }
              attr_accessor :id

              # Name of the test agent.
              sig { returns(String) }
              attr_accessor :agent_name

              # ID of the Telnyx AI assistant under test.
              sig { returns(String) }
              attr_accessor :assistant_id

              sig { returns(Time) }
              attr_accessor :created_at

              sig { returns(Time) }
              attr_accessor :updated_at

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :auto_update_dropoff_nodes

              sig { params(auto_update_dropoff_nodes: T::Boolean).void }
              attr_writer :auto_update_dropoff_nodes

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :auto_update_topic_nodes

              sig { params(auto_update_topic_nodes: T::Boolean).void }
              attr_writer :auto_update_topic_nodes

              # ID of the chat assistant under test, when testing text channels.
              sig { returns(T.nilable(String)) }
              attr_reader :chat_assistant_id

              sig { params(chat_assistant_id: String).void }
              attr_writer :chat_assistant_id

              # Contact phone number for the test agent.
              sig { returns(T.nilable(String)) }
              attr_reader :contact_number

              sig { params(contact_number: String).void }
              attr_writer :contact_number

              sig { returns(T.nilable(String)) }
              attr_reader :description

              sig { params(description: String).void }
              attr_writer :description

              # IDs of the test personalities enabled for this agent.
              sig { returns(T.nilable(T::Array[Integer])) }
              attr_reader :enabled_personalities

              sig { params(enabled_personalities: T::Array[Integer]).void }
              attr_writer :enabled_personalities

              sig { returns(T.nilable(T::Array[Integer])) }
              attr_reader :hallucination_metric_kb_files

              sig do
                params(hallucination_metric_kb_files: T::Array[Integer]).void
              end
              attr_writer :hallucination_metric_kb_files

              # Whether the test agent accepts inbound calls.
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :inbound

              sig { params(inbound: T::Boolean).void }
              attr_writer :inbound

              # Knowledge-base files associated with the test agent.
              sig { returns(T.nilable(T::Array[T.anything])) }
              attr_reader :knowledge_base_files

              sig { params(knowledge_base_files: T::Array[T.anything]).void }
              attr_writer :knowledge_base_files

              # ISO language code the test agent converses in.
              sig { returns(T.nilable(String)) }
              attr_reader :language

              sig { params(language: String).void }
              attr_writer :language

              sig { returns(T.nilable(Integer)) }
              attr_reader :llm_max_tokens

              sig { params(llm_max_tokens: Integer).void }
              attr_writer :llm_max_tokens

              # Model used to drive the test agent's side of the conversation.
              sig { returns(T.nilable(String)) }
              attr_reader :llm_model

              sig { params(llm_model: String).void }
              attr_writer :llm_model

              sig { returns(T.nilable(String)) }
              attr_reader :llm_system_prompt

              sig { params(llm_system_prompt: String).void }
              attr_writer :llm_system_prompt

              sig { returns(T.nilable(Float)) }
              attr_reader :llm_temperature

              sig { params(llm_temperature: Float).void }
              attr_writer :llm_temperature

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :outbound_auto_call

              sig { params(outbound_auto_call: T::Boolean).void }
              attr_writer :outbound_auto_call

              # Outbound numbers associated with the test agent.
              sig { returns(T.nilable(T::Array[T.anything])) }
              attr_accessor :outbound_numbers

              sig { returns(T.nilable(T::Hash[Symbol, String])) }
              attr_accessor :sip_auth

              sig { returns(T.nilable(String)) }
              attr_reader :sip_endpoint

              sig { params(sip_endpoint: String).void }
              attr_writer :sip_endpoint

              sig do
                params(
                  id: Integer,
                  agent_name: String,
                  assistant_id: String,
                  created_at: Time,
                  updated_at: Time,
                  auto_update_dropoff_nodes: T::Boolean,
                  auto_update_topic_nodes: T::Boolean,
                  chat_assistant_id: String,
                  contact_number: String,
                  description: String,
                  enabled_personalities: T::Array[Integer],
                  hallucination_metric_kb_files: T::Array[Integer],
                  inbound: T::Boolean,
                  knowledge_base_files: T::Array[T.anything],
                  language: String,
                  llm_max_tokens: Integer,
                  llm_model: String,
                  llm_system_prompt: String,
                  llm_temperature: Float,
                  outbound_auto_call: T::Boolean,
                  outbound_numbers: T.nilable(T::Array[T.anything]),
                  sip_auth: T.nilable(T::Hash[Symbol, String]),
                  sip_endpoint: String
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                # Name of the test agent.
                agent_name:,
                # ID of the Telnyx AI assistant under test.
                assistant_id:,
                created_at:,
                updated_at:,
                auto_update_dropoff_nodes: nil,
                auto_update_topic_nodes: nil,
                # ID of the chat assistant under test, when testing text channels.
                chat_assistant_id: nil,
                # Contact phone number for the test agent.
                contact_number: nil,
                description: nil,
                # IDs of the test personalities enabled for this agent.
                enabled_personalities: nil,
                hallucination_metric_kb_files: nil,
                # Whether the test agent accepts inbound calls.
                inbound: nil,
                # Knowledge-base files associated with the test agent.
                knowledge_base_files: nil,
                # ISO language code the test agent converses in.
                language: nil,
                llm_max_tokens: nil,
                # Model used to drive the test agent's side of the conversation.
                llm_model: nil,
                llm_system_prompt: nil,
                llm_temperature: nil,
                outbound_auto_call: nil,
                # Outbound numbers associated with the test agent.
                outbound_numbers: nil,
                sip_auth: nil,
                sip_endpoint: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: Integer,
                    agent_name: String,
                    assistant_id: String,
                    created_at: Time,
                    updated_at: Time,
                    auto_update_dropoff_nodes: T::Boolean,
                    auto_update_topic_nodes: T::Boolean,
                    chat_assistant_id: String,
                    contact_number: String,
                    description: String,
                    enabled_personalities: T::Array[Integer],
                    hallucination_metric_kb_files: T::Array[Integer],
                    inbound: T::Boolean,
                    knowledge_base_files: T::Array[T.anything],
                    language: String,
                    llm_max_tokens: Integer,
                    llm_model: String,
                    llm_system_prompt: String,
                    llm_temperature: Float,
                    outbound_auto_call: T::Boolean,
                    outbound_numbers: T.nilable(T::Array[T.anything]),
                    sip_auth: T.nilable(T::Hash[Symbol, String]),
                    sip_endpoint: String
                  }
                )
              end
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
