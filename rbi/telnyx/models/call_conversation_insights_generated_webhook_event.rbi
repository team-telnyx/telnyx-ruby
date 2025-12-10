# typed: strong

module Telnyx
  module Models
    class CallConversationInsightsGeneratedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::CallConversationInsightsGeneratedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data)
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data:
            Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Identifies the type of resource.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # The type of event being delivered.
        sig do
          returns(
            T.nilable(
              Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data::EventType::TaggedSymbol
            )
          )
        end
        attr_reader :event_type

        sig do
          params(
            event_type:
              Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data::EventType::OrSymbol
          ).void
        end
        attr_writer :event_type

        # ISO 8601 datetime of when the event occurred.
        sig { returns(T.nilable(Time)) }
        attr_reader :occurred_at

        sig { params(occurred_at: Time).void }
        attr_writer :occurred_at

        sig do
          returns(
            T.nilable(
              Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data::Payload
            )
          )
        end
        attr_reader :payload

        sig do
          params(
            payload:
              Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data::Payload::OrHash
          ).void
        end
        attr_writer :payload

        # Identifies the type of the resource.
        sig do
          returns(
            T.nilable(
              Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data::RecordType::TaggedSymbol
            )
          )
        end
        attr_reader :record_type

        sig do
          params(
            record_type:
              Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data::RecordType::OrSymbol
          ).void
        end
        attr_writer :record_type

        sig do
          params(
            id: String,
            event_type:
              Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data::EventType::OrSymbol,
            occurred_at: Time,
            payload:
              Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data::Payload::OrHash,
            record_type:
              Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data::RecordType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifies the type of resource.
          id: nil,
          # The type of event being delivered.
          event_type: nil,
          # ISO 8601 datetime of when the event occurred.
          occurred_at: nil,
          payload: nil,
          # Identifies the type of the resource.
          record_type: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              event_type:
                Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data::EventType::TaggedSymbol,
              occurred_at: Time,
              payload:
                Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data::Payload,
              record_type:
                Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data::RecordType::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # The type of event being delivered.
        module EventType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data::EventType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CALL_CONVERSATION_INSIGHTS_GENERATED =
            T.let(
              :"call.conversation_insights.generated",
              Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data::EventType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Payload < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data::Payload,
                Telnyx::Internal::AnyHash
              )
            end

          # Call ID used to issue commands via Call Control API.
          sig { returns(T.nilable(String)) }
          attr_reader :call_control_id

          sig { params(call_control_id: String).void }
          attr_writer :call_control_id

          # ID that is unique to the call and can be used to correlate webhook events.
          sig { returns(T.nilable(String)) }
          attr_reader :call_leg_id

          sig { params(call_leg_id: String).void }
          attr_writer :call_leg_id

          # ID that is unique to the call session and can be used to correlate webhook
          # events. Call session is a group of related call legs that logically belong to
          # the same phone call, e.g. an inbound and outbound leg of a transferred call.
          sig { returns(T.nilable(String)) }
          attr_reader :call_session_id

          sig { params(call_session_id: String).void }
          attr_writer :call_session_id

          # The type of calling party connection.
          sig do
            returns(
              T.nilable(
                Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data::Payload::CallingPartyType::TaggedSymbol
              )
            )
          end
          attr_reader :calling_party_type

          sig do
            params(
              calling_party_type:
                Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data::Payload::CallingPartyType::OrSymbol
            ).void
          end
          attr_writer :calling_party_type

          # State received from a command.
          sig { returns(T.nilable(String)) }
          attr_reader :client_state

          sig { params(client_state: String).void }
          attr_writer :client_state

          # Call Control App ID (formerly Telnyx connection ID) used in the call.
          sig { returns(T.nilable(String)) }
          attr_reader :connection_id

          sig { params(connection_id: String).void }
          attr_writer :connection_id

          # ID that is unique to the insight group being generated for the call.
          sig { returns(T.nilable(String)) }
          attr_reader :insight_group_id

          sig { params(insight_group_id: String).void }
          attr_writer :insight_group_id

          # Array of insight results being generated for the call.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data::Payload::Result
                ]
              )
            )
          end
          attr_reader :results

          sig do
            params(
              results:
                T::Array[
                  Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data::Payload::Result::OrHash
                ]
            ).void
          end
          attr_writer :results

          sig do
            params(
              call_control_id: String,
              call_leg_id: String,
              call_session_id: String,
              calling_party_type:
                Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data::Payload::CallingPartyType::OrSymbol,
              client_state: String,
              connection_id: String,
              insight_group_id: String,
              results:
                T::Array[
                  Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data::Payload::Result::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Call ID used to issue commands via Call Control API.
            call_control_id: nil,
            # ID that is unique to the call and can be used to correlate webhook events.
            call_leg_id: nil,
            # ID that is unique to the call session and can be used to correlate webhook
            # events. Call session is a group of related call legs that logically belong to
            # the same phone call, e.g. an inbound and outbound leg of a transferred call.
            call_session_id: nil,
            # The type of calling party connection.
            calling_party_type: nil,
            # State received from a command.
            client_state: nil,
            # Call Control App ID (formerly Telnyx connection ID) used in the call.
            connection_id: nil,
            # ID that is unique to the insight group being generated for the call.
            insight_group_id: nil,
            # Array of insight results being generated for the call.
            results: nil
          )
          end

          sig do
            override.returns(
              {
                call_control_id: String,
                call_leg_id: String,
                call_session_id: String,
                calling_party_type:
                  Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data::Payload::CallingPartyType::TaggedSymbol,
                client_state: String,
                connection_id: String,
                insight_group_id: String,
                results:
                  T::Array[
                    Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data::Payload::Result
                  ]
              }
            )
          end
          def to_hash
          end

          # The type of calling party connection.
          module CallingPartyType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data::Payload::CallingPartyType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PSTN =
              T.let(
                :pstn,
                Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data::Payload::CallingPartyType::TaggedSymbol
              )
            SIP =
              T.let(
                :sip,
                Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data::Payload::CallingPartyType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data::Payload::CallingPartyType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Result < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data::Payload::Result,
                  Telnyx::Internal::AnyHash
                )
              end

            # ID that is unique to the insight result being generated for the call.
            sig { returns(T.nilable(String)) }
            attr_reader :insight_id

            sig { params(insight_id: String).void }
            attr_writer :insight_id

            # The result of the insight.
            sig do
              returns(
                T.nilable(
                  Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data::Payload::Result::Result::Variants
                )
              )
            end
            attr_reader :result

            sig do
              params(
                result:
                  Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data::Payload::Result::Result::Variants
              ).void
            end
            attr_writer :result

            sig do
              params(
                insight_id: String,
                result:
                  Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data::Payload::Result::Result::Variants
              ).returns(T.attached_class)
            end
            def self.new(
              # ID that is unique to the insight result being generated for the call.
              insight_id: nil,
              # The result of the insight.
              result: nil
            )
            end

            sig do
              override.returns(
                {
                  insight_id: String,
                  result:
                    Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data::Payload::Result::Result::Variants
                }
              )
            end
            def to_hash
            end

            # The result of the insight.
            module Result
              extend Telnyx::Internal::Type::Union

              Variants =
                T.type_alias { T.any(T::Hash[Symbol, T.anything], String) }

              sig do
                override.returns(
                  T::Array[
                    Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data::Payload::Result::Result::Variants
                  ]
                )
              end
              def self.variants
              end

              InsightObjectResultMap =
                T.let(
                  Telnyx::Internal::Type::HashOf[
                    Telnyx::Internal::Type::Unknown
                  ],
                  Telnyx::Internal::Type::Converter
                )
            end
          end
        end

        # Identifies the type of the resource.
        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EVENT =
            T.let(
              :event,
              Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data::RecordType::TaggedSymbol
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
