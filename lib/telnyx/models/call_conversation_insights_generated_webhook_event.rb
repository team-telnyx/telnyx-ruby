# frozen_string_literal: true

module Telnyx
  module Models
    class CallConversationInsightsGeneratedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallConversationInsightsGeneratedWebhookEvent::Data, nil]
      optional :data, -> { Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallConversationInsightsGeneratedWebhookEvent::Data]

      # @see Telnyx::Models::CallConversationInsightsGeneratedWebhookEvent#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Identifies the type of resource.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute event_type
        #   The type of event being delivered.
        #
        #   @return [Symbol, Telnyx::Models::CallConversationInsightsGeneratedWebhookEvent::Data::EventType, nil]
        optional :event_type, enum: -> { Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data::EventType }

        # @!attribute occurred_at
        #   ISO 8601 datetime of when the event occurred.
        #
        #   @return [Time, nil]
        optional :occurred_at, Time

        # @!attribute payload
        #
        #   @return [Telnyx::Models::CallConversationInsightsGeneratedWebhookEvent::Data::Payload, nil]
        optional :payload, -> { Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data::Payload }

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [Symbol, Telnyx::Models::CallConversationInsightsGeneratedWebhookEvent::Data::RecordType, nil]
        optional :record_type,
                 enum: -> { Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data::RecordType }

        # @!method initialize(id: nil, event_type: nil, occurred_at: nil, payload: nil, record_type: nil)
        #   @param id [String] Identifies the type of resource.
        #
        #   @param event_type [Symbol, Telnyx::Models::CallConversationInsightsGeneratedWebhookEvent::Data::EventType] The type of event being delivered.
        #
        #   @param occurred_at [Time] ISO 8601 datetime of when the event occurred.
        #
        #   @param payload [Telnyx::Models::CallConversationInsightsGeneratedWebhookEvent::Data::Payload]
        #
        #   @param record_type [Symbol, Telnyx::Models::CallConversationInsightsGeneratedWebhookEvent::Data::RecordType] Identifies the type of the resource.

        # The type of event being delivered.
        #
        # @see Telnyx::Models::CallConversationInsightsGeneratedWebhookEvent::Data#event_type
        module EventType
          extend Telnyx::Internal::Type::Enum

          CALL_CONVERSATION_INSIGHTS_GENERATED = :"call.conversation_insights.generated"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::CallConversationInsightsGeneratedWebhookEvent::Data#payload
        class Payload < Telnyx::Internal::Type::BaseModel
          # @!attribute call_control_id
          #   Call ID used to issue commands via Call Control API.
          #
          #   @return [String, nil]
          optional :call_control_id, String

          # @!attribute call_leg_id
          #   ID that is unique to the call and can be used to correlate webhook events.
          #
          #   @return [String, nil]
          optional :call_leg_id, String

          # @!attribute call_session_id
          #   ID that is unique to the call session and can be used to correlate webhook
          #   events. Call session is a group of related call legs that logically belong to
          #   the same phone call, e.g. an inbound and outbound leg of a transferred call.
          #
          #   @return [String, nil]
          optional :call_session_id, String

          # @!attribute calling_party_type
          #   The type of calling party connection.
          #
          #   @return [Symbol, Telnyx::Models::CallConversationInsightsGeneratedWebhookEvent::Data::Payload::CallingPartyType, nil]
          optional :calling_party_type,
                   enum: -> { Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data::Payload::CallingPartyType }

          # @!attribute client_state
          #   State received from a command.
          #
          #   @return [String, nil]
          optional :client_state, String

          # @!attribute connection_id
          #   Call Control App ID (formerly Telnyx connection ID) used in the call.
          #
          #   @return [String, nil]
          optional :connection_id, String

          # @!attribute insight_group_id
          #   ID that is unique to the insight group being generated for the call.
          #
          #   @return [String, nil]
          optional :insight_group_id, String

          # @!attribute results
          #   Array of insight results being generated for the call.
          #
          #   @return [Array<Telnyx::Models::CallConversationInsightsGeneratedWebhookEvent::Data::Payload::Result>, nil]
          optional :results,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data::Payload::Result] }

          # @!method initialize(call_control_id: nil, call_leg_id: nil, call_session_id: nil, calling_party_type: nil, client_state: nil, connection_id: nil, insight_group_id: nil, results: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::CallConversationInsightsGeneratedWebhookEvent::Data::Payload}
          #   for more details.
          #
          #   @param call_control_id [String] Call ID used to issue commands via Call Control API.
          #
          #   @param call_leg_id [String] ID that is unique to the call and can be used to correlate webhook events.
          #
          #   @param call_session_id [String] ID that is unique to the call session and can be used to correlate webhook event
          #
          #   @param calling_party_type [Symbol, Telnyx::Models::CallConversationInsightsGeneratedWebhookEvent::Data::Payload::CallingPartyType] The type of calling party connection.
          #
          #   @param client_state [String] State received from a command.
          #
          #   @param connection_id [String] Call Control App ID (formerly Telnyx connection ID) used in the call.
          #
          #   @param insight_group_id [String] ID that is unique to the insight group being generated for the call.
          #
          #   @param results [Array<Telnyx::Models::CallConversationInsightsGeneratedWebhookEvent::Data::Payload::Result>] Array of insight results being generated for the call.

          # The type of calling party connection.
          #
          # @see Telnyx::Models::CallConversationInsightsGeneratedWebhookEvent::Data::Payload#calling_party_type
          module CallingPartyType
            extend Telnyx::Internal::Type::Enum

            PSTN = :pstn
            SIP = :sip

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          class Result < Telnyx::Internal::Type::BaseModel
            # @!attribute insight_id
            #   ID that is unique to the insight result being generated for the call.
            #
            #   @return [String, nil]
            optional :insight_id, String

            # @!attribute result
            #   The result of the insight.
            #
            #   @return [Object, String, nil]
            optional :result,
                     union: -> { Telnyx::CallConversationInsightsGeneratedWebhookEvent::Data::Payload::Result::Result }

            # @!method initialize(insight_id: nil, result: nil)
            #   @param insight_id [String] ID that is unique to the insight result being generated for the call.
            #
            #   @param result [Object, String] The result of the insight.

            # The result of the insight.
            #
            # @see Telnyx::Models::CallConversationInsightsGeneratedWebhookEvent::Data::Payload::Result#result
            module Result
              extend Telnyx::Internal::Type::Union

              # The result of the insight.
              variant Telnyx::Internal::Type::Unknown

              # The result of the insight.
              variant String

              # @!method self.variants
              #   @return [Array(Object, String)]
            end
          end
        end

        # Identifies the type of the resource.
        #
        # @see Telnyx::Models::CallConversationInsightsGeneratedWebhookEvent::Data#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          EVENT = :event

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
