# typed: strong

module Telnyx
  module Models
    module Texml
      module Accounts
        module Transcriptions
          class JsonRetrieveRecordingTranscriptionSidJsonResponse < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Texml::Accounts::Transcriptions::JsonRetrieveRecordingTranscriptionSidJsonResponse,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :account_sid

            sig { params(account_sid: String).void }
            attr_writer :account_sid

            # The version of the API that was used to make the request.
            sig { returns(T.nilable(String)) }
            attr_reader :api_version

            sig { params(api_version: String).void }
            attr_writer :api_version

            sig { returns(T.nilable(String)) }
            attr_reader :call_sid

            sig { params(call_sid: String).void }
            attr_writer :call_sid

            sig { returns(T.nilable(Time)) }
            attr_reader :date_created

            sig { params(date_created: Time).void }
            attr_writer :date_created

            sig { returns(T.nilable(Time)) }
            attr_reader :date_updated

            sig { params(date_updated: Time).void }
            attr_writer :date_updated

            # The duration of this recording, given in seconds.
            sig { returns(T.nilable(String)) }
            attr_accessor :duration

            # Identifier of a resource.
            sig { returns(T.nilable(String)) }
            attr_reader :recording_sid

            sig { params(recording_sid: String).void }
            attr_writer :recording_sid

            # Identifier of a resource.
            sig { returns(T.nilable(String)) }
            attr_reader :sid

            sig { params(sid: String).void }
            attr_writer :sid

            # The status of the recording transcriptions. The transcription text will be
            # available only when the status is completed.
            sig do
              returns(
                T.nilable(
                  Telnyx::Models::Texml::Accounts::Transcriptions::JsonRetrieveRecordingTranscriptionSidJsonResponse::Status::TaggedSymbol
                )
              )
            end
            attr_reader :status

            sig do
              params(
                status:
                  Telnyx::Models::Texml::Accounts::Transcriptions::JsonRetrieveRecordingTranscriptionSidJsonResponse::Status::OrSymbol
              ).void
            end
            attr_writer :status

            # The recording's transcribed text
            sig { returns(T.nilable(String)) }
            attr_reader :transcription_text

            sig { params(transcription_text: String).void }
            attr_writer :transcription_text

            # The relative URI for the recording transcription resource.
            sig { returns(T.nilable(String)) }
            attr_reader :uri

            sig { params(uri: String).void }
            attr_writer :uri

            sig do
              params(
                account_sid: String,
                api_version: String,
                call_sid: String,
                date_created: Time,
                date_updated: Time,
                duration: T.nilable(String),
                recording_sid: String,
                sid: String,
                status:
                  Telnyx::Models::Texml::Accounts::Transcriptions::JsonRetrieveRecordingTranscriptionSidJsonResponse::Status::OrSymbol,
                transcription_text: String,
                uri: String
              ).returns(T.attached_class)
            end
            def self.new(
              account_sid: nil,
              # The version of the API that was used to make the request.
              api_version: nil,
              call_sid: nil,
              date_created: nil,
              date_updated: nil,
              # The duration of this recording, given in seconds.
              duration: nil,
              # Identifier of a resource.
              recording_sid: nil,
              # Identifier of a resource.
              sid: nil,
              # The status of the recording transcriptions. The transcription text will be
              # available only when the status is completed.
              status: nil,
              # The recording's transcribed text
              transcription_text: nil,
              # The relative URI for the recording transcription resource.
              uri: nil
            )
            end

            sig do
              override.returns(
                {
                  account_sid: String,
                  api_version: String,
                  call_sid: String,
                  date_created: Time,
                  date_updated: Time,
                  duration: T.nilable(String),
                  recording_sid: String,
                  sid: String,
                  status:
                    Telnyx::Models::Texml::Accounts::Transcriptions::JsonRetrieveRecordingTranscriptionSidJsonResponse::Status::TaggedSymbol,
                  transcription_text: String,
                  uri: String
                }
              )
            end
            def to_hash
            end

            # The status of the recording transcriptions. The transcription text will be
            # available only when the status is completed.
            module Status
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Models::Texml::Accounts::Transcriptions::JsonRetrieveRecordingTranscriptionSidJsonResponse::Status
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              IN_PROGRESS =
                T.let(
                  :"in-progress",
                  Telnyx::Models::Texml::Accounts::Transcriptions::JsonRetrieveRecordingTranscriptionSidJsonResponse::Status::TaggedSymbol
                )
              COMPLETED =
                T.let(
                  :completed,
                  Telnyx::Models::Texml::Accounts::Transcriptions::JsonRetrieveRecordingTranscriptionSidJsonResponse::Status::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::Texml::Accounts::Transcriptions::JsonRetrieveRecordingTranscriptionSidJsonResponse::Status::TaggedSymbol
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
end
