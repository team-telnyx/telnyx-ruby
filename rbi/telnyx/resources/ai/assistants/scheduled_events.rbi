# typed: strong

module Telnyx
  module Resources
    class AI
      class Assistants
        class ScheduledEvents
          # Create a scheduled event for an assistant
          sig do
            params(
              assistant_id: String,
              scheduled_at_fixed_datetime: Time,
              telnyx_agent_target: String,
              telnyx_conversation_channel:
                Telnyx::AI::Assistants::ConversationChannelType::OrSymbol,
              telnyx_end_user_target: String,
              conversation_metadata:
                T::Hash[
                  Symbol,
                  Telnyx::AI::Assistants::ScheduledEventCreateParams::ConversationMetadata::Variants
                ],
              text: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::AI::Assistants::ScheduledEventResponse::Variants)
          end
          def create(
            assistant_id,
            # The datetime at which the event should be scheduled. Formatted as ISO 8601.
            scheduled_at_fixed_datetime:,
            # The phone number, SIP URI, to schedule the call or text from.
            telnyx_agent_target:,
            telnyx_conversation_channel:,
            # The phone number, SIP URI, to schedule the call or text to.
            telnyx_end_user_target:,
            # Metadata associated with the conversation. Telnyx provides several pieces of
            # metadata, but customers can also add their own.
            conversation_metadata: nil,
            # Required for sms scheduled events. The text to be sent to the end user.
            text: nil,
            request_options: {}
          )
          end

          # Retrieve a scheduled event by event ID
          sig do
            params(
              event_id: String,
              assistant_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::AI::Assistants::ScheduledEventResponse::Variants)
          end
          def retrieve(event_id, assistant_id:, request_options: {})
          end

          # Get scheduled events for an assistant with pagination and filtering
          sig do
            params(
              assistant_id: String,
              conversation_channel:
                Telnyx::AI::Assistants::ConversationChannelType::OrSymbol,
              from_date: Time,
              page:
                Telnyx::AI::Assistants::ScheduledEventListParams::Page::OrHash,
              to_date: Time,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Models::AI::Assistants::ScheduledEventListResponse
            )
          end
          def list(
            assistant_id,
            conversation_channel: nil,
            from_date: nil,
            # Consolidated page parameter (deepObject style). Originally: page[size],
            # page[number]
            page: nil,
            to_date: nil,
            request_options: {}
          )
          end

          # If the event is pending, this will cancel the event. Otherwise, this will simply
          # remove the record of the event.
          sig do
            params(
              event_id: String,
              assistant_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.anything)
          end
          def delete(event_id, assistant_id:, request_options: {})
          end

          # @api private
          sig { params(client: Telnyx::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
