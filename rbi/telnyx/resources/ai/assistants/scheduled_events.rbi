# typed: strong

module Telnyx
  module Resources
    class AI
      class Assistants
        # Configure AI assistant specifications
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
              call_settings:
                Telnyx::AI::Assistants::ScheduledCallSettings::OrHash,
              conversation_metadata:
                T::Hash[
                  Symbol,
                  Telnyx::AI::Assistants::ScheduledEventCreateParams::ConversationMetadata::Variants
                ],
              dynamic_variables: T::Hash[Symbol, String],
              max_retries_client_errors: Integer,
              retry_interval_secs: Integer,
              text: String,
              idempotency_key: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::AI::Assistants::ScheduledEventResponse::Variants)
          end
          def create(
            # Path param: Unique identifier of the assistant.
            assistant_id,
            # Body param: The datetime at which the event should be scheduled. Formatted as
            # ISO 8601.
            scheduled_at_fixed_datetime:,
            # Body param: The phone number, SIP URI, to schedule the call or text from.
            telnyx_agent_target:,
            # Body param
            telnyx_conversation_channel:,
            # Body param: The phone number, SIP URI, to schedule the call or text to.
            telnyx_end_user_target:,
            # Body param: Per-call telephony overrides applied when a scheduled phone-call
            # event dispatches. Phone-call events only. New per-call dispatch options should
            # be added here rather than as top-level event fields.
            call_settings: nil,
            # Body param: Metadata associated with the conversation. Telnyx provides several
            # pieces of metadata, but customers can also add their own.
            conversation_metadata: nil,
            # Body param: A map of dynamic variable names to values. These variables can be
            # referenced in the assistant's instructions and messages using {{variable_name}}
            # syntax.
            dynamic_variables: nil,
            # Body param: Configure number of retries on client errors: busy, no-answer,
            # failed, canceled (caller hung up before the callee answered)
            max_retries_client_errors: nil,
            # Body param
            retry_interval_secs: nil,
            # Body param: Required for sms scheduled events. The text to be sent to the end
            # user.
            text: nil,
            # Header param: Optional opaque, unquoted key for safely retrying the same logical
            # request. Keys must contain 1 to 255 letters, numbers, hyphens, or underscores.
            # Generate a unique UUID v4 for each operation and reuse it only when retrying
            # that operation with the same request. Invalid headers—including duplicate,
            # empty, malformed, or overlong values—return 400 with error code 10015. A request
            # already in progress with the same key returns 409; reusing the key with a
            # different request returns 422. Only successful responses are replayed, for up to
            # 24 hours. Do not include sensitive data in the key.
            idempotency_key: nil,
            request_options: {}
          )
          end

          # Returns the details of a single scheduled event configured for the specified
          # assistant.
          sig do
            params(
              event_id: String,
              assistant_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::AI::Assistants::ScheduledEventResponse::Variants)
          end
          def retrieve(
            # Unique identifier of the event.
            event_id,
            # Unique identifier of the assistant.
            assistant_id:,
            request_options: {}
          )
          end

          # Get scheduled events for an assistant with pagination and filtering
          sig do
            params(
              assistant_id: String,
              conversation_channel:
                Telnyx::AI::Assistants::ConversationChannelType::OrSymbol,
              from_date: Time,
              page_number: Integer,
              page_size: Integer,
              to_date: Time,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Internal::DefaultFlatPagination[
                Telnyx::Models::AI::Assistants::ScheduledEventListResponse::Variants
              ]
            )
          end
          def list(
            # Unique identifier of the assistant.
            assistant_id,
            # Filter results by conversation channel.
            conversation_channel: nil,
            # Start of the date range filter (inclusive, ISO 8601).
            from_date: nil,
            page_number: nil,
            page_size: nil,
            # End of the date range filter (inclusive, ISO 8601).
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
            ).void
          end
          def delete(
            # Unique identifier of the event.
            event_id,
            # Unique identifier of the assistant.
            assistant_id:,
            request_options: {}
          )
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
