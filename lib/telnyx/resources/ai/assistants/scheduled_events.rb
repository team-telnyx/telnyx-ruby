# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Assistants
        class ScheduledEvents
          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::AI::Assistants::ScheduledEventCreateParams} for more details.
          #
          # Create a scheduled event for an assistant
          #
          # @overload create(assistant_id, scheduled_at_fixed_datetime:, telnyx_agent_target:, telnyx_conversation_channel:, telnyx_end_user_target:, conversation_metadata: nil, text: nil, request_options: {})
          #
          # @param assistant_id [String]
          #
          # @param scheduled_at_fixed_datetime [Time] The datetime at which the event should be scheduled. Formatted as ISO 8601.
          #
          # @param telnyx_agent_target [String] The phone number, SIP URI, to schedule the call or text from.
          #
          # @param telnyx_conversation_channel [Symbol, Telnyx::Models::AI::Assistants::ConversationChannelType]
          #
          # @param telnyx_end_user_target [String] The phone number, SIP URI, to schedule the call or text to.
          #
          # @param conversation_metadata [Hash{Symbol=>String, Integer, Boolean}] Metadata associated with the conversation. Telnyx provides several pieces of met
          #
          # @param text [String] Required for sms scheduled events. The text to be sent to the end user.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Assistants::ScheduledPhoneCallEventResponse, Telnyx::Models::AI::Assistants::ScheduledSMSEventResponse]
          #
          # @see Telnyx::Models::AI::Assistants::ScheduledEventCreateParams
          def create(assistant_id, params)
            parsed, options = Telnyx::AI::Assistants::ScheduledEventCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["ai/assistants/%1$s/scheduled_events", assistant_id],
              body: parsed,
              model: Telnyx::AI::Assistants::ScheduledEventResponse,
              options: options
            )
          end

          # Retrieve a scheduled event by event ID
          #
          # @overload retrieve(event_id, assistant_id:, request_options: {})
          #
          # @param event_id [String]
          # @param assistant_id [String]
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Assistants::ScheduledPhoneCallEventResponse, Telnyx::Models::AI::Assistants::ScheduledSMSEventResponse]
          #
          # @see Telnyx::Models::AI::Assistants::ScheduledEventRetrieveParams
          def retrieve(event_id, params)
            parsed, options = Telnyx::AI::Assistants::ScheduledEventRetrieveParams.dump_request(params)
            assistant_id =
              parsed.delete(:assistant_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["ai/assistants/%1$s/scheduled_events/%2$s", assistant_id, event_id],
              model: Telnyx::AI::Assistants::ScheduledEventResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::AI::Assistants::ScheduledEventListParams} for more details.
          #
          # Get scheduled events for an assistant with pagination and filtering
          #
          # @overload list(assistant_id, conversation_channel: nil, from_date: nil, page: nil, to_date: nil, request_options: {})
          #
          # @param assistant_id [String]
          #
          # @param conversation_channel [Symbol, Telnyx::Models::AI::Assistants::ConversationChannelType]
          #
          # @param from_date [Time]
          #
          # @param page [Telnyx::Models::AI::Assistants::ScheduledEventListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
          #
          # @param to_date [Time]
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Assistants::ScheduledEventListResponse]
          #
          # @see Telnyx::Models::AI::Assistants::ScheduledEventListParams
          def list(assistant_id, params = {})
            parsed, options = Telnyx::AI::Assistants::ScheduledEventListParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["ai/assistants/%1$s/scheduled_events", assistant_id],
              query: parsed,
              model: Telnyx::Models::AI::Assistants::ScheduledEventListResponse,
              options: options
            )
          end

          # If the event is pending, this will cancel the event. Otherwise, this will simply
          # remove the record of the event.
          #
          # @overload delete(event_id, assistant_id:, request_options: {})
          #
          # @param event_id [String]
          # @param assistant_id [String]
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see Telnyx::Models::AI::Assistants::ScheduledEventDeleteParams
          def delete(event_id, params)
            parsed, options = Telnyx::AI::Assistants::ScheduledEventDeleteParams.dump_request(params)
            assistant_id =
              parsed.delete(:assistant_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: ["ai/assistants/%1$s/scheduled_events/%2$s", assistant_id, event_id],
              model: NilClass,
              options: options
            )
          end

          # @api private
          #
          # @param client [Telnyx::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
