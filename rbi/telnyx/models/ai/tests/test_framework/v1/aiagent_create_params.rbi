# typed: strong

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            class AiagentCreateParams < Telnyx::Internal::Type::BaseModel
              extend Telnyx::Internal::Type::RequestParameters::Converter
              include Telnyx::Internal::Type::RequestParameters

              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::Tests::TestFramework::V1::AiagentCreateParams,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Name of the test agent.
              sig { returns(String) }
              attr_accessor :agent_name

              # ID of the Telnyx AI assistant under test.
              sig { returns(String) }
              attr_accessor :assistant_id

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :auto_fetch_calls_enabled

              sig { params(auto_fetch_calls_enabled: T::Boolean).void }
              attr_writer :auto_fetch_calls_enabled

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :auto_sync_prompt_enabled

              sig { params(auto_sync_prompt_enabled: T::Boolean).void }
              attr_writer :auto_sync_prompt_enabled

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :auto_update_dropoff_nodes

              sig { params(auto_update_dropoff_nodes: T::Boolean).void }
              attr_writer :auto_update_dropoff_nodes

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :auto_update_topic_nodes

              sig { params(auto_update_topic_nodes: T::Boolean).void }
              attr_writer :auto_update_topic_nodes

              sig { returns(T.nilable(String)) }
              attr_reader :contact_number

              sig { params(contact_number: String).void }
              attr_writer :contact_number

              sig { returns(T.nilable(String)) }
              attr_reader :description

              sig { params(description: String).void }
              attr_writer :description

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :inbound

              sig { params(inbound: T::Boolean).void }
              attr_writer :inbound

              # ISO language code the test agent converses in.
              sig { returns(T.nilable(String)) }
              attr_reader :language

              sig { params(language: String).void }
              attr_writer :language

              sig { returns(T.nilable(Integer)) }
              attr_reader :llm_max_tokens

              sig { params(llm_max_tokens: Integer).void }
              attr_writer :llm_max_tokens

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

              sig { returns(T.nilable(String)) }
              attr_reader :sip_endpoint

              sig { params(sip_endpoint: String).void }
              attr_writer :sip_endpoint

              sig do
                params(
                  agent_name: String,
                  assistant_id: String,
                  auto_fetch_calls_enabled: T::Boolean,
                  auto_sync_prompt_enabled: T::Boolean,
                  auto_update_dropoff_nodes: T::Boolean,
                  auto_update_topic_nodes: T::Boolean,
                  contact_number: String,
                  description: String,
                  inbound: T::Boolean,
                  language: String,
                  llm_max_tokens: Integer,
                  llm_model: String,
                  llm_system_prompt: String,
                  llm_temperature: Float,
                  outbound_auto_call: T::Boolean,
                  sip_endpoint: String,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                # Name of the test agent.
                agent_name:,
                # ID of the Telnyx AI assistant under test.
                assistant_id:,
                auto_fetch_calls_enabled: nil,
                auto_sync_prompt_enabled: nil,
                auto_update_dropoff_nodes: nil,
                auto_update_topic_nodes: nil,
                contact_number: nil,
                description: nil,
                inbound: nil,
                # ISO language code the test agent converses in.
                language: nil,
                llm_max_tokens: nil,
                llm_model: nil,
                llm_system_prompt: nil,
                llm_temperature: nil,
                outbound_auto_call: nil,
                sip_endpoint: nil,
                request_options: {}
              )
              end

              sig do
                override.returns(
                  {
                    agent_name: String,
                    assistant_id: String,
                    auto_fetch_calls_enabled: T::Boolean,
                    auto_sync_prompt_enabled: T::Boolean,
                    auto_update_dropoff_nodes: T::Boolean,
                    auto_update_topic_nodes: T::Boolean,
                    contact_number: String,
                    description: String,
                    inbound: T::Boolean,
                    language: String,
                    llm_max_tokens: Integer,
                    llm_model: String,
                    llm_system_prompt: String,
                    llm_temperature: Float,
                    outbound_auto_call: T::Boolean,
                    sip_endpoint: String,
                    request_options: Telnyx::RequestOptions
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
