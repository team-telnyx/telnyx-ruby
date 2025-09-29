# typed: strong

module Telnyx
  module Models
    class ConferenceRecordingSavedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::ConferenceRecordingSavedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(T.nilable(Telnyx::ConferenceRecordingSavedWebhookEvent::Data))
      end
      attr_reader :data

      sig do
        params(
          data: Telnyx::ConferenceRecordingSavedWebhookEvent::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::ConferenceRecordingSavedWebhookEvent::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::ConferenceRecordingSavedWebhookEvent::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::ConferenceRecordingSavedWebhookEvent::Data,
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
              Telnyx::ConferenceRecordingSavedWebhookEvent::Data::EventType::TaggedSymbol
            )
          )
        end
        attr_reader :event_type

        sig do
          params(
            event_type:
              Telnyx::ConferenceRecordingSavedWebhookEvent::Data::EventType::OrSymbol
          ).void
        end
        attr_writer :event_type

        sig do
          returns(
            T.nilable(
              Telnyx::ConferenceRecordingSavedWebhookEvent::Data::Payload
            )
          )
        end
        attr_reader :payload

        sig do
          params(
            payload:
              Telnyx::ConferenceRecordingSavedWebhookEvent::Data::Payload::OrHash
          ).void
        end
        attr_writer :payload

        # Identifies the type of the resource.
        sig do
          returns(
            T.nilable(
              Telnyx::ConferenceRecordingSavedWebhookEvent::Data::RecordType::TaggedSymbol
            )
          )
        end
        attr_reader :record_type

        sig do
          params(
            record_type:
              Telnyx::ConferenceRecordingSavedWebhookEvent::Data::RecordType::OrSymbol
          ).void
        end
        attr_writer :record_type

        sig do
          params(
            id: String,
            event_type:
              Telnyx::ConferenceRecordingSavedWebhookEvent::Data::EventType::OrSymbol,
            payload:
              Telnyx::ConferenceRecordingSavedWebhookEvent::Data::Payload::OrHash,
            record_type:
              Telnyx::ConferenceRecordingSavedWebhookEvent::Data::RecordType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifies the type of resource.
          id: nil,
          # The type of event being delivered.
          event_type: nil,
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
                Telnyx::ConferenceRecordingSavedWebhookEvent::Data::EventType::TaggedSymbol,
              payload:
                Telnyx::ConferenceRecordingSavedWebhookEvent::Data::Payload,
              record_type:
                Telnyx::ConferenceRecordingSavedWebhookEvent::Data::RecordType::TaggedSymbol
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
                Telnyx::ConferenceRecordingSavedWebhookEvent::Data::EventType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONFERENCE_RECORDING_SAVED =
            T.let(
              :"conference.recording.saved",
              Telnyx::ConferenceRecordingSavedWebhookEvent::Data::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::ConferenceRecordingSavedWebhookEvent::Data::EventType::TaggedSymbol
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
                Telnyx::ConferenceRecordingSavedWebhookEvent::Data::Payload,
                Telnyx::Internal::AnyHash
              )
            end

          # Participant's call ID used to issue commands via Call Control API.
          sig { returns(T.nilable(String)) }
          attr_reader :call_control_id

          sig { params(call_control_id: String).void }
          attr_writer :call_control_id

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
                Telnyx::ConferenceRecordingSavedWebhookEvent::Data::Payload::Channels::TaggedSymbol
              )
            )
          end
          attr_reader :channels

          sig do
            params(
              channels:
                Telnyx::ConferenceRecordingSavedWebhookEvent::Data::Payload::Channels::OrSymbol
            ).void
          end
          attr_writer :channels

          # State received from a command.
          sig { returns(T.nilable(String)) }
          attr_reader :client_state

          sig { params(client_state: String).void }
          attr_writer :client_state

          # ID of the conference that is being recorded.
          sig { returns(T.nilable(String)) }
          attr_reader :conference_id

          sig { params(conference_id: String).void }
          attr_writer :conference_id

          # Call Control App ID (formerly Telnyx connection ID) used in the call.
          sig { returns(T.nilable(String)) }
          attr_reader :connection_id

          sig { params(connection_id: String).void }
          attr_writer :connection_id

          # The audio file format used when storing the call recording. Can be either `mp3`
          # or `wav`.
          sig do
            returns(
              T.nilable(
                Telnyx::ConferenceRecordingSavedWebhookEvent::Data::Payload::Format::TaggedSymbol
              )
            )
          end
          attr_reader :format_

          sig do
            params(
              format_:
                Telnyx::ConferenceRecordingSavedWebhookEvent::Data::Payload::Format::OrSymbol
            ).void
          end
          attr_writer :format_

          # Recording URLs in requested format. The URL is valid for as long as the file
          # exists. For security purposes, this feature is activated on a per request basis.
          # Please contact customer support with your Account ID to request activation.
          sig do
            returns(
              T.nilable(
                Telnyx::ConferenceRecordingSavedWebhookEvent::Data::Payload::PublicRecordingURLs
              )
            )
          end
          attr_reader :public_recording_urls

          sig do
            params(
              public_recording_urls:
                Telnyx::ConferenceRecordingSavedWebhookEvent::Data::Payload::PublicRecordingURLs::OrHash
            ).void
          end
          attr_writer :public_recording_urls

          # ISO 8601 datetime of when recording ended.
          sig { returns(T.nilable(Time)) }
          attr_reader :recording_ended_at

          sig { params(recording_ended_at: Time).void }
          attr_writer :recording_ended_at

          # ID of the conference recording.
          sig { returns(T.nilable(String)) }
          attr_reader :recording_id

          sig { params(recording_id: String).void }
          attr_writer :recording_id

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
                Telnyx::ConferenceRecordingSavedWebhookEvent::Data::Payload::RecordingURLs
              )
            )
          end
          attr_reader :recording_urls

          sig do
            params(
              recording_urls:
                Telnyx::ConferenceRecordingSavedWebhookEvent::Data::Payload::RecordingURLs::OrHash
            ).void
          end
          attr_writer :recording_urls

          sig do
            params(
              call_control_id: String,
              call_session_id: String,
              channels:
                Telnyx::ConferenceRecordingSavedWebhookEvent::Data::Payload::Channels::OrSymbol,
              client_state: String,
              conference_id: String,
              connection_id: String,
              format_:
                Telnyx::ConferenceRecordingSavedWebhookEvent::Data::Payload::Format::OrSymbol,
              public_recording_urls:
                Telnyx::ConferenceRecordingSavedWebhookEvent::Data::Payload::PublicRecordingURLs::OrHash,
              recording_ended_at: Time,
              recording_id: String,
              recording_started_at: Time,
              recording_urls:
                Telnyx::ConferenceRecordingSavedWebhookEvent::Data::Payload::RecordingURLs::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Participant's call ID used to issue commands via Call Control API.
            call_control_id: nil,
            # ID that is unique to the call session and can be used to correlate webhook
            # events. Call session is a group of related call legs that logically belong to
            # the same phone call, e.g. an inbound and outbound leg of a transferred call.
            call_session_id: nil,
            # Whether recording was recorded in `single` or `dual` channel.
            channels: nil,
            # State received from a command.
            client_state: nil,
            # ID of the conference that is being recorded.
            conference_id: nil,
            # Call Control App ID (formerly Telnyx connection ID) used in the call.
            connection_id: nil,
            # The audio file format used when storing the call recording. Can be either `mp3`
            # or `wav`.
            format_: nil,
            # Recording URLs in requested format. The URL is valid for as long as the file
            # exists. For security purposes, this feature is activated on a per request basis.
            # Please contact customer support with your Account ID to request activation.
            public_recording_urls: nil,
            # ISO 8601 datetime of when recording ended.
            recording_ended_at: nil,
            # ID of the conference recording.
            recording_id: nil,
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
                call_control_id: String,
                call_session_id: String,
                channels:
                  Telnyx::ConferenceRecordingSavedWebhookEvent::Data::Payload::Channels::TaggedSymbol,
                client_state: String,
                conference_id: String,
                connection_id: String,
                format_:
                  Telnyx::ConferenceRecordingSavedWebhookEvent::Data::Payload::Format::TaggedSymbol,
                public_recording_urls:
                  Telnyx::ConferenceRecordingSavedWebhookEvent::Data::Payload::PublicRecordingURLs,
                recording_ended_at: Time,
                recording_id: String,
                recording_started_at: Time,
                recording_urls:
                  Telnyx::ConferenceRecordingSavedWebhookEvent::Data::Payload::RecordingURLs
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
                  Telnyx::ConferenceRecordingSavedWebhookEvent::Data::Payload::Channels
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SINGLE =
              T.let(
                :single,
                Telnyx::ConferenceRecordingSavedWebhookEvent::Data::Payload::Channels::TaggedSymbol
              )
            DUAL =
              T.let(
                :dual,
                Telnyx::ConferenceRecordingSavedWebhookEvent::Data::Payload::Channels::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::ConferenceRecordingSavedWebhookEvent::Data::Payload::Channels::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The audio file format used when storing the call recording. Can be either `mp3`
          # or `wav`.
          module Format
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::ConferenceRecordingSavedWebhookEvent::Data::Payload::Format
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            WAV =
              T.let(
                :wav,
                Telnyx::ConferenceRecordingSavedWebhookEvent::Data::Payload::Format::TaggedSymbol
              )
            MP3 =
              T.let(
                :mp3,
                Telnyx::ConferenceRecordingSavedWebhookEvent::Data::Payload::Format::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::ConferenceRecordingSavedWebhookEvent::Data::Payload::Format::TaggedSymbol
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
                  Telnyx::ConferenceRecordingSavedWebhookEvent::Data::Payload::PublicRecordingURLs,
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
                  Telnyx::ConferenceRecordingSavedWebhookEvent::Data::Payload::RecordingURLs,
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
                Telnyx::ConferenceRecordingSavedWebhookEvent::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EVENT =
            T.let(
              :event,
              Telnyx::ConferenceRecordingSavedWebhookEvent::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::ConferenceRecordingSavedWebhookEvent::Data::RecordType::TaggedSymbol
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
