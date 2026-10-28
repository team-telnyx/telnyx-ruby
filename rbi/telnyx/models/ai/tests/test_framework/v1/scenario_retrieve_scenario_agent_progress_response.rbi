# typed: strong

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            class ScenarioRetrieveScenarioAgentProgressResponse < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRetrieveScenarioAgentProgressResponse,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(String)) }
              attr_accessor :error

              sig { returns(T.nilable(String)) }
              attr_reader :mode

              sig { params(mode: String).void }
              attr_writer :mode

              sig { returns(T.nilable(String)) }
              attr_reader :progress_id

              sig { params(progress_id: String).void }
              attr_writer :progress_id

              sig do
                returns(
                  T.nilable(
                    Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRetrieveScenarioAgentProgressResponse::Result
                  )
                )
              end
              attr_reader :result

              sig do
                params(
                  result:
                    T.nilable(
                      Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRetrieveScenarioAgentProgressResponse::Result::OrHash
                    )
                ).void
              end
              attr_writer :result

              sig { returns(T.nilable(Integer)) }
              attr_accessor :session_id

              sig { returns(T.nilable(String)) }
              attr_reader :status

              sig { params(status: String).void }
              attr_writer :status

              sig do
                params(
                  error: T.nilable(String),
                  mode: String,
                  progress_id: String,
                  result:
                    T.nilable(
                      Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRetrieveScenarioAgentProgressResponse::Result::OrHash
                    ),
                  session_id: T.nilable(Integer),
                  status: String
                ).returns(T.attached_class)
              end
              def self.new(
                error: nil,
                mode: nil,
                progress_id: nil,
                result: nil,
                session_id: nil,
                status: nil
              )
              end

              sig do
                override.returns(
                  {
                    error: T.nilable(String),
                    mode: String,
                    progress_id: String,
                    result:
                      T.nilable(
                        Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRetrieveScenarioAgentProgressResponse::Result
                      ),
                    session_id: T.nilable(Integer),
                    status: String
                  }
                )
              end
              def to_hash
              end

              class Result < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRetrieveScenarioAgentProgressResponse::Result,
                      Telnyx::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :cancelled

                sig { params(cancelled: T::Boolean).void }
                attr_writer :cancelled

                sig do
                  returns(
                    T.nilable(
                      T::Array[
                        Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRetrieveScenarioAgentProgressResponse::Result::ClarificationQuestion
                      ]
                    )
                  )
                end
                attr_reader :clarification_questions

                sig do
                  params(
                    clarification_questions:
                      T::Array[
                        Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRetrieveScenarioAgentProgressResponse::Result::ClarificationQuestion::OrHash
                      ]
                  ).void
                end
                attr_writer :clarification_questions

                sig do
                  returns(
                    T.nilable(
                      T::Array[
                        Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRetrieveScenarioAgentProgressResponse::Result::ConversationHistory
                      ]
                    )
                  )
                end
                attr_reader :conversation_history

                sig do
                  params(
                    conversation_history:
                      T::Array[
                        Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRetrieveScenarioAgentProgressResponse::Result::ConversationHistory::OrHash
                      ]
                  ).void
                end
                attr_writer :conversation_history

                sig { returns(T.nilable(String)) }
                attr_reader :message

                sig { params(message: String).void }
                attr_writer :message

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :needs_clarification

                sig { params(needs_clarification: T::Boolean).void }
                attr_writer :needs_clarification

                sig { returns(T.nilable(Integer)) }
                attr_reader :session_id

                sig { params(session_id: Integer).void }
                attr_writer :session_id

                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :success

                sig { params(success: T::Boolean).void }
                attr_writer :success

                sig do
                  returns(T.nilable(T::Array[T::Hash[Symbol, T.anything]]))
                end
                attr_reader :updated_scenarios

                sig do
                  params(
                    updated_scenarios: T::Array[T::Hash[Symbol, T.anything]]
                  ).void
                end
                attr_writer :updated_scenarios

                sig do
                  params(
                    cancelled: T::Boolean,
                    clarification_questions:
                      T::Array[
                        Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRetrieveScenarioAgentProgressResponse::Result::ClarificationQuestion::OrHash
                      ],
                    conversation_history:
                      T::Array[
                        Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRetrieveScenarioAgentProgressResponse::Result::ConversationHistory::OrHash
                      ],
                    message: String,
                    needs_clarification: T::Boolean,
                    session_id: Integer,
                    success: T::Boolean,
                    updated_scenarios: T::Array[T::Hash[Symbol, T.anything]]
                  ).returns(T.attached_class)
                end
                def self.new(
                  cancelled: nil,
                  clarification_questions: nil,
                  conversation_history: nil,
                  message: nil,
                  needs_clarification: nil,
                  session_id: nil,
                  success: nil,
                  updated_scenarios: nil
                )
                end

                sig do
                  override.returns(
                    {
                      cancelled: T::Boolean,
                      clarification_questions:
                        T::Array[
                          Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRetrieveScenarioAgentProgressResponse::Result::ClarificationQuestion
                        ],
                      conversation_history:
                        T::Array[
                          Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRetrieveScenarioAgentProgressResponse::Result::ConversationHistory
                        ],
                      message: String,
                      needs_clarification: T::Boolean,
                      session_id: Integer,
                      success: T::Boolean,
                      updated_scenarios: T::Array[T::Hash[Symbol, T.anything]]
                    }
                  )
                end
                def to_hash
                end

                class ClarificationQuestion < Telnyx::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRetrieveScenarioAgentProgressResponse::Result::ClarificationQuestion,
                        Telnyx::Internal::AnyHash
                      )
                    end

                  sig { returns(T.nilable(String)) }
                  attr_reader :question

                  sig { params(question: String).void }
                  attr_writer :question

                  sig { params(question: String).returns(T.attached_class) }
                  def self.new(question: nil)
                  end

                  sig { override.returns({ question: String }) }
                  def to_hash
                  end
                end

                class ConversationHistory < Telnyx::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRetrieveScenarioAgentProgressResponse::Result::ConversationHistory,
                        Telnyx::Internal::AnyHash
                      )
                    end

                  sig { returns(T.nilable(String)) }
                  attr_reader :content

                  sig { params(content: String).void }
                  attr_writer :content

                  sig { returns(T.nilable(String)) }
                  attr_reader :role

                  sig { params(role: String).void }
                  attr_writer :role

                  sig { returns(T.nilable(String)) }
                  attr_reader :timestamp

                  sig { params(timestamp: String).void }
                  attr_writer :timestamp

                  sig do
                    params(
                      content: String,
                      role: String,
                      timestamp: String
                    ).returns(T.attached_class)
                  end
                  def self.new(content: nil, role: nil, timestamp: nil)
                  end

                  sig do
                    override.returns(
                      { content: String, role: String, timestamp: String }
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
  end
end
