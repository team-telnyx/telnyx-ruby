# typed: strong

module Telnyx
  module Models
    class CallStreamingFailedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::CallStreamingFailedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::CallStreamingFailedWebhookEvent::Data)) }
      attr_reader :data

      sig do
        params(data: Telnyx::CallStreamingFailedWebhookEvent::Data::OrHash).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::CallStreamingFailedWebhookEvent::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::CallStreamingFailedWebhookEvent::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::CallStreamingFailedWebhookEvent::Data,
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
              Telnyx::CallStreamingFailedWebhookEvent::Data::EventType::TaggedSymbol
            )
          )
        end
        attr_reader :event_type

        sig do
          params(
            event_type:
              Telnyx::CallStreamingFailedWebhookEvent::Data::EventType::OrSymbol
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
            T.nilable(Telnyx::CallStreamingFailedWebhookEvent::Data::Payload)
          )
        end
        attr_reader :payload

        sig do
          params(
            payload:
              Telnyx::CallStreamingFailedWebhookEvent::Data::Payload::OrHash
          ).void
        end
        attr_writer :payload

        # Identifies the resource.
        sig do
          returns(
            T.nilable(
              Telnyx::CallStreamingFailedWebhookEvent::Data::RecordType::TaggedSymbol
            )
          )
        end
        attr_reader :record_type

        sig do
          params(
            record_type:
              Telnyx::CallStreamingFailedWebhookEvent::Data::RecordType::OrSymbol
          ).void
        end
        attr_writer :record_type

        sig do
          params(
            id: String,
            event_type:
              Telnyx::CallStreamingFailedWebhookEvent::Data::EventType::OrSymbol,
            occurred_at: Time,
            payload:
              Telnyx::CallStreamingFailedWebhookEvent::Data::Payload::OrHash,
            record_type:
              Telnyx::CallStreamingFailedWebhookEvent::Data::RecordType::OrSymbol
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
          # Identifies the resource.
          record_type: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              event_type:
                Telnyx::CallStreamingFailedWebhookEvent::Data::EventType::TaggedSymbol,
              occurred_at: Time,
              payload: Telnyx::CallStreamingFailedWebhookEvent::Data::Payload,
              record_type:
                Telnyx::CallStreamingFailedWebhookEvent::Data::RecordType::TaggedSymbol
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
                Telnyx::CallStreamingFailedWebhookEvent::Data::EventType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STREAMING_FAILED =
            T.let(
              :"streaming.failed",
              Telnyx::CallStreamingFailedWebhookEvent::Data::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CallStreamingFailedWebhookEvent::Data::EventType::TaggedSymbol
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
                Telnyx::CallStreamingFailedWebhookEvent::Data::Payload,
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

          # A short description explaning why the media streaming failed.
          sig { returns(T.nilable(String)) }
          attr_reader :failure_reason

          sig { params(failure_reason: String).void }
          attr_writer :failure_reason

          # Identifies the streaming.
          sig { returns(T.nilable(String)) }
          attr_reader :stream_id

          sig { params(stream_id: String).void }
          attr_writer :stream_id

          # Streaming parameters as they were originally given to the Call Control API.
          sig do
            returns(
              T.nilable(
                Telnyx::CallStreamingFailedWebhookEvent::Data::Payload::StreamParams
              )
            )
          end
          attr_reader :stream_params

          sig do
            params(
              stream_params:
                Telnyx::CallStreamingFailedWebhookEvent::Data::Payload::StreamParams::OrHash
            ).void
          end
          attr_writer :stream_params

          # The type of stream connection the stream is performing.
          sig do
            returns(
              T.nilable(
                Telnyx::CallStreamingFailedWebhookEvent::Data::Payload::StreamType::TaggedSymbol
              )
            )
          end
          attr_reader :stream_type

          sig do
            params(
              stream_type:
                Telnyx::CallStreamingFailedWebhookEvent::Data::Payload::StreamType::OrSymbol
            ).void
          end
          attr_writer :stream_type

          sig do
            params(
              call_control_id: String,
              call_leg_id: String,
              call_session_id: String,
              client_state: String,
              connection_id: String,
              failure_reason: String,
              stream_id: String,
              stream_params:
                Telnyx::CallStreamingFailedWebhookEvent::Data::Payload::StreamParams::OrHash,
              stream_type:
                Telnyx::CallStreamingFailedWebhookEvent::Data::Payload::StreamType::OrSymbol
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
            # State received from a command.
            client_state: nil,
            # Call Control App ID (formerly Telnyx connection ID) used in the call.
            connection_id: nil,
            # A short description explaning why the media streaming failed.
            failure_reason: nil,
            # Identifies the streaming.
            stream_id: nil,
            # Streaming parameters as they were originally given to the Call Control API.
            stream_params: nil,
            # The type of stream connection the stream is performing.
            stream_type: nil
          )
          end

          sig do
            override.returns(
              {
                call_control_id: String,
                call_leg_id: String,
                call_session_id: String,
                client_state: String,
                connection_id: String,
                failure_reason: String,
                stream_id: String,
                stream_params:
                  Telnyx::CallStreamingFailedWebhookEvent::Data::Payload::StreamParams,
                stream_type:
                  Telnyx::CallStreamingFailedWebhookEvent::Data::Payload::StreamType::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          class StreamParams < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::CallStreamingFailedWebhookEvent::Data::Payload::StreamParams,
                  Telnyx::Internal::AnyHash
                )
              end

            # The destination WebSocket address where the stream is going to be delivered.
            sig { returns(T.nilable(String)) }
            attr_reader :stream_url

            sig { params(stream_url: String).void }
            attr_writer :stream_url

            # Specifies which track should be streamed.
            sig do
              returns(
                T.nilable(
                  Telnyx::CallStreamingFailedWebhookEvent::Data::Payload::StreamParams::Track::TaggedSymbol
                )
              )
            end
            attr_reader :track

            sig do
              params(
                track:
                  Telnyx::CallStreamingFailedWebhookEvent::Data::Payload::StreamParams::Track::OrSymbol
              ).void
            end
            attr_writer :track

            # Streaming parameters as they were originally given to the Call Control API.
            sig do
              params(
                stream_url: String,
                track:
                  Telnyx::CallStreamingFailedWebhookEvent::Data::Payload::StreamParams::Track::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The destination WebSocket address where the stream is going to be delivered.
              stream_url: nil,
              # Specifies which track should be streamed.
              track: nil
            )
            end

            sig do
              override.returns(
                {
                  stream_url: String,
                  track:
                    Telnyx::CallStreamingFailedWebhookEvent::Data::Payload::StreamParams::Track::TaggedSymbol
                }
              )
            end
            def to_hash
            end

            # Specifies which track should be streamed.
            module Track
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::CallStreamingFailedWebhookEvent::Data::Payload::StreamParams::Track
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              INBOUND_TRACK =
                T.let(
                  :inbound_track,
                  Telnyx::CallStreamingFailedWebhookEvent::Data::Payload::StreamParams::Track::TaggedSymbol
                )
              OUTBOUND_TRACK =
                T.let(
                  :outbound_track,
                  Telnyx::CallStreamingFailedWebhookEvent::Data::Payload::StreamParams::Track::TaggedSymbol
                )
              BOTH_TRACKS =
                T.let(
                  :both_tracks,
                  Telnyx::CallStreamingFailedWebhookEvent::Data::Payload::StreamParams::Track::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::CallStreamingFailedWebhookEvent::Data::Payload::StreamParams::Track::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          # The type of stream connection the stream is performing.
          module StreamType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::CallStreamingFailedWebhookEvent::Data::Payload::StreamType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            WEBSOCKET =
              T.let(
                :websocket,
                Telnyx::CallStreamingFailedWebhookEvent::Data::Payload::StreamType::TaggedSymbol
              )
            DIALOGFLOW =
              T.let(
                :dialogflow,
                Telnyx::CallStreamingFailedWebhookEvent::Data::Payload::StreamType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::CallStreamingFailedWebhookEvent::Data::Payload::StreamType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        # Identifies the resource.
        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::CallStreamingFailedWebhookEvent::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EVENT =
            T.let(
              :event,
              Telnyx::CallStreamingFailedWebhookEvent::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CallStreamingFailedWebhookEvent::Data::RecordType::TaggedSymbol
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
