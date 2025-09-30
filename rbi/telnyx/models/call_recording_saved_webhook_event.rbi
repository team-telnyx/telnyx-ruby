# typed: strong

module Telnyx
  module Models
    class CallRecordingSavedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::CallRecordingSavedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::CallRecordingSavedWebhookEvent::Data)) }
      attr_reader :data

      sig do
        params(data: Telnyx::CallRecordingSavedWebhookEvent::Data::OrHash).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::CallRecordingSavedWebhookEvent::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns({ data: Telnyx::CallRecordingSavedWebhookEvent::Data })
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::CallRecordingSavedWebhookEvent::Data,
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
              Telnyx::CallRecordingSavedWebhookEvent::Data::EventType::TaggedSymbol
            )
          )
        end
        attr_reader :event_type

        sig do
          params(
            event_type:
              Telnyx::CallRecordingSavedWebhookEvent::Data::EventType::OrSymbol
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
            T.nilable(Telnyx::CallRecordingSavedWebhookEvent::Data::Payload)
          )
        end
        attr_reader :payload

        sig do
          params(
            payload:
              Telnyx::CallRecordingSavedWebhookEvent::Data::Payload::OrHash
          ).void
        end
        attr_writer :payload

        # Identifies the type of the resource.
        sig do
          returns(
            T.nilable(
              Telnyx::CallRecordingSavedWebhookEvent::Data::RecordType::TaggedSymbol
            )
          )
        end
        attr_reader :record_type

        sig do
          params(
            record_type:
              Telnyx::CallRecordingSavedWebhookEvent::Data::RecordType::OrSymbol
          ).void
        end
        attr_writer :record_type

        sig do
          params(
            id: String,
            event_type:
              Telnyx::CallRecordingSavedWebhookEvent::Data::EventType::OrSymbol,
            occurred_at: Time,
            payload:
              Telnyx::CallRecordingSavedWebhookEvent::Data::Payload::OrHash,
            record_type:
              Telnyx::CallRecordingSavedWebhookEvent::Data::RecordType::OrSymbol
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
                Telnyx::CallRecordingSavedWebhookEvent::Data::EventType::TaggedSymbol,
              occurred_at: Time,
              payload: Telnyx::CallRecordingSavedWebhookEvent::Data::Payload,
              record_type:
                Telnyx::CallRecordingSavedWebhookEvent::Data::RecordType::TaggedSymbol
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
                Telnyx::CallRecordingSavedWebhookEvent::Data::EventType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CALL_RECORDING_SAVED =
            T.let(
              :"call.recording.saved",
              Telnyx::CallRecordingSavedWebhookEvent::Data::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CallRecordingSavedWebhookEvent::Data::EventType::TaggedSymbol
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
                Telnyx::CallRecordingSavedWebhookEvent::Data::Payload,
                Telnyx::Internal::AnyHash
              )
            end

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

          # Whether recording was recorded in `single` or `dual` channel.
          sig do
            returns(
              T.nilable(
                Telnyx::CallRecordingSavedWebhookEvent::Data::Payload::Channels::TaggedSymbol
              )
            )
          end
          attr_reader :channels

          sig do
            params(
              channels:
                Telnyx::CallRecordingSavedWebhookEvent::Data::Payload::Channels::OrSymbol
            ).void
          end
          attr_writer :channels

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

          # Recording URLs in requested format. The URL is valid for as long as the file
          # exists. For security purposes, this feature is activated on a per request basis.
          # Please contact customer support with your Account ID to request activation.
          sig do
            returns(
              T.nilable(
                Telnyx::CallRecordingSavedWebhookEvent::Data::Payload::PublicRecordingURLs
              )
            )
          end
          attr_reader :public_recording_urls

          sig do
            params(
              public_recording_urls:
                Telnyx::CallRecordingSavedWebhookEvent::Data::Payload::PublicRecordingURLs::OrHash
            ).void
          end
          attr_writer :public_recording_urls

          # ISO 8601 datetime of when recording ended.
          sig { returns(T.nilable(Time)) }
          attr_reader :recording_ended_at

          sig { params(recording_ended_at: Time).void }
          attr_writer :recording_ended_at

          # ISO 8601 datetime of when recording started.
          sig { returns(T.nilable(Time)) }
          attr_reader :recording_started_at

          sig { params(recording_started_at: Time).void }
          attr_writer :recording_started_at

          # Recording URLs in requested format. These URLs are valid for 10 minutes. After
          # 10 minutes, you may retrieve recordings via API using Reports -> Call Recordings
          # documentation, or via Mission Control under Reporting -> Recordings.
          sig do
            returns(
              T.nilable(
                Telnyx::CallRecordingSavedWebhookEvent::Data::Payload::RecordingURLs
              )
            )
          end
          attr_reader :recording_urls

          sig do
            params(
              recording_urls:
                Telnyx::CallRecordingSavedWebhookEvent::Data::Payload::RecordingURLs::OrHash
            ).void
          end
          attr_writer :recording_urls

          sig do
            params(
              call_leg_id: String,
              call_session_id: String,
              channels:
                Telnyx::CallRecordingSavedWebhookEvent::Data::Payload::Channels::OrSymbol,
              client_state: String,
              connection_id: String,
              public_recording_urls:
                Telnyx::CallRecordingSavedWebhookEvent::Data::Payload::PublicRecordingURLs::OrHash,
              recording_ended_at: Time,
              recording_started_at: Time,
              recording_urls:
                Telnyx::CallRecordingSavedWebhookEvent::Data::Payload::RecordingURLs::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # ID that is unique to the call and can be used to correlate webhook events.
            call_leg_id: nil,
            # ID that is unique to the call session and can be used to correlate webhook
            # events. Call session is a group of related call legs that logically belong to
            # the same phone call, e.g. an inbound and outbound leg of a transferred call.
            call_session_id: nil,
            # Whether recording was recorded in `single` or `dual` channel.
            channels: nil,
            # State received from a command.
            client_state: nil,
            # Call Control App ID (formerly Telnyx connection ID) used in the call.
            connection_id: nil,
            # Recording URLs in requested format. The URL is valid for as long as the file
            # exists. For security purposes, this feature is activated on a per request basis.
            # Please contact customer support with your Account ID to request activation.
            public_recording_urls: nil,
            # ISO 8601 datetime of when recording ended.
            recording_ended_at: nil,
            # ISO 8601 datetime of when recording started.
            recording_started_at: nil,
            # Recording URLs in requested format. These URLs are valid for 10 minutes. After
            # 10 minutes, you may retrieve recordings via API using Reports -> Call Recordings
            # documentation, or via Mission Control under Reporting -> Recordings.
            recording_urls: nil
          )
          end

          sig do
            override.returns(
              {
                call_leg_id: String,
                call_session_id: String,
                channels:
                  Telnyx::CallRecordingSavedWebhookEvent::Data::Payload::Channels::TaggedSymbol,
                client_state: String,
                connection_id: String,
                public_recording_urls:
                  Telnyx::CallRecordingSavedWebhookEvent::Data::Payload::PublicRecordingURLs,
                recording_ended_at: Time,
                recording_started_at: Time,
                recording_urls:
                  Telnyx::CallRecordingSavedWebhookEvent::Data::Payload::RecordingURLs
              }
            )
          end
          def to_hash
          end

          # Whether recording was recorded in `single` or `dual` channel.
          module Channels
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::CallRecordingSavedWebhookEvent::Data::Payload::Channels
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SINGLE =
              T.let(
                :single,
                Telnyx::CallRecordingSavedWebhookEvent::Data::Payload::Channels::TaggedSymbol
              )
            DUAL =
              T.let(
                :dual,
                Telnyx::CallRecordingSavedWebhookEvent::Data::Payload::Channels::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::CallRecordingSavedWebhookEvent::Data::Payload::Channels::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class PublicRecordingURLs < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::CallRecordingSavedWebhookEvent::Data::Payload::PublicRecordingURLs,
                  Telnyx::Internal::AnyHash
                )
              end

            # Recording URL in requested `mp3` format.
            sig { returns(T.nilable(String)) }
            attr_accessor :mp3

            # Recording URL in requested `wav` format.
            sig { returns(T.nilable(String)) }
            attr_accessor :wav

            # Recording URLs in requested format. The URL is valid for as long as the file
            # exists. For security purposes, this feature is activated on a per request basis.
            # Please contact customer support with your Account ID to request activation.
            sig do
              params(mp3: T.nilable(String), wav: T.nilable(String)).returns(
                T.attached_class
              )
            end
            def self.new(
              # Recording URL in requested `mp3` format.
              mp3: nil,
              # Recording URL in requested `wav` format.
              wav: nil
            )
            end

            sig do
              override.returns(
                { mp3: T.nilable(String), wav: T.nilable(String) }
              )
            end
            def to_hash
            end
          end

          class RecordingURLs < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::CallRecordingSavedWebhookEvent::Data::Payload::RecordingURLs,
                  Telnyx::Internal::AnyHash
                )
              end

            # Recording URL in requested `mp3` format.
            sig { returns(T.nilable(String)) }
            attr_accessor :mp3

            # Recording URL in requested `wav` format.
            sig { returns(T.nilable(String)) }
            attr_accessor :wav

            # Recording URLs in requested format. These URLs are valid for 10 minutes. After
            # 10 minutes, you may retrieve recordings via API using Reports -> Call Recordings
            # documentation, or via Mission Control under Reporting -> Recordings.
            sig do
              params(mp3: T.nilable(String), wav: T.nilable(String)).returns(
                T.attached_class
              )
            end
            def self.new(
              # Recording URL in requested `mp3` format.
              mp3: nil,
              # Recording URL in requested `wav` format.
              wav: nil
            )
            end

            sig do
              override.returns(
                { mp3: T.nilable(String), wav: T.nilable(String) }
              )
            end
            def to_hash
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
                Telnyx::CallRecordingSavedWebhookEvent::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EVENT =
            T.let(
              :event,
              Telnyx::CallRecordingSavedWebhookEvent::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CallRecordingSavedWebhookEvent::Data::RecordType::TaggedSymbol
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
