# typed: strong

module Telnyx
  module Models
    module AI
      class ConversationRetrieveConversationsInsightsResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::AI::ConversationRetrieveConversationsInsightsResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              Telnyx::Models::AI::ConversationRetrieveConversationsInsightsResponse::Data
            ]
          )
        end
        attr_accessor :data

        sig { returns(Telnyx::AI::Assistants::Tests::TestSuites::Meta) }
        attr_reader :meta

        sig do
          params(
            meta: Telnyx::AI::Assistants::Tests::TestSuites::Meta::OrHash
          ).void
        end
        attr_writer :meta

        sig do
          params(
            data:
              T::Array[
                Telnyx::Models::AI::ConversationRetrieveConversationsInsightsResponse::Data::OrHash
              ],
            meta: Telnyx::AI::Assistants::Tests::TestSuites::Meta::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:, meta:)
        end

        sig do
          override.returns(
            {
              data:
                T::Array[
                  Telnyx::Models::AI::ConversationRetrieveConversationsInsightsResponse::Data
                ],
              meta: Telnyx::AI::Assistants::Tests::TestSuites::Meta
            }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::AI::ConversationRetrieveConversationsInsightsResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          # Unique identifier for the conversation insight.
          sig { returns(String) }
          attr_accessor :id

          # List of insights extracted from the conversation.
          sig do
            returns(
              T::Array[
                Telnyx::Models::AI::ConversationRetrieveConversationsInsightsResponse::Data::ConversationInsight
              ]
            )
          end
          attr_accessor :conversation_insights

          # Timestamp of when the object was created.
          sig { returns(Time) }
          attr_accessor :created_at

          # Current status of the insight generation for the conversation.
          sig do
            returns(
              Telnyx::Models::AI::ConversationRetrieveConversationsInsightsResponse::Data::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          sig do
            params(
              id: String,
              conversation_insights:
                T::Array[
                  Telnyx::Models::AI::ConversationRetrieveConversationsInsightsResponse::Data::ConversationInsight::OrHash
                ],
              created_at: Time,
              status:
                Telnyx::Models::AI::ConversationRetrieveConversationsInsightsResponse::Data::Status::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Unique identifier for the conversation insight.
            id:,
            # List of insights extracted from the conversation.
            conversation_insights:,
            # Timestamp of when the object was created.
            created_at:,
            # Current status of the insight generation for the conversation.
            status:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                conversation_insights:
                  T::Array[
                    Telnyx::Models::AI::ConversationRetrieveConversationsInsightsResponse::Data::ConversationInsight
                  ],
                created_at: Time,
                status:
                  Telnyx::Models::AI::ConversationRetrieveConversationsInsightsResponse::Data::Status::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          class ConversationInsight < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::AI::ConversationRetrieveConversationsInsightsResponse::Data::ConversationInsight,
                  Telnyx::Internal::AnyHash
                )
              end

            # Unique identifier for the insight configuration.
            sig { returns(String) }
            attr_accessor :insight_id

            # Insight result from the conversation. If the insight has a JSON schema, this
            # will be stringified JSON object.
            sig { returns(String) }
            attr_accessor :result

            sig do
              params(insight_id: String, result: String).returns(
                T.attached_class
              )
            end
            def self.new(
              # Unique identifier for the insight configuration.
              insight_id:,
              # Insight result from the conversation. If the insight has a JSON schema, this
              # will be stringified JSON object.
              result:
            )
            end

            sig { override.returns({ insight_id: String, result: String }) }
            def to_hash
            end
          end

          # Current status of the insight generation for the conversation.
          module Status
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::AI::ConversationRetrieveConversationsInsightsResponse::Data::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING =
              T.let(
                :pending,
                Telnyx::Models::AI::ConversationRetrieveConversationsInsightsResponse::Data::Status::TaggedSymbol
              )
            IN_PROGRESS =
              T.let(
                :in_progress,
                Telnyx::Models::AI::ConversationRetrieveConversationsInsightsResponse::Data::Status::TaggedSymbol
              )
            COMPLETED =
              T.let(
                :completed,
                Telnyx::Models::AI::ConversationRetrieveConversationsInsightsResponse::Data::Status::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                Telnyx::Models::AI::ConversationRetrieveConversationsInsightsResponse::Data::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::AI::ConversationRetrieveConversationsInsightsResponse::Data::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
