# typed: strong

module Telnyx
  module Models
    module Texml
      module Accounts
        class ConferenceRetrieveRecordingsResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse,
                Telnyx::Internal::AnyHash
              )
            end

          # The number of the last element on the page, zero-indexed.
          sig { returns(T.nilable(Integer)) }
          attr_reader :end_

          sig { params(end_: Integer).void }
          attr_writer :end_

          # /v2/texml/Accounts/61bf923e-5e4d-4595-a110-56190ea18a1b/Conferences/6dc6cc1a-1ba1-4351-86b8-4c22c95cd98f/Recordings.json?page=0&pagesize=20
          sig { returns(T.nilable(String)) }
          attr_reader :first_page_uri

          sig { params(first_page_uri: String).void }
          attr_writer :first_page_uri

          # /v2/texml/Accounts/61bf923e-5e4d-4595-a110-56190ea18a1b/Conferences/6dc6cc1a-1ba1-4351-86b8-4c22c95cd98f/Recordings.json?Page=1&PageSize=1&PageToken=MTY4AjgyNDkwNzIxMQ
          sig { returns(T.nilable(String)) }
          attr_reader :next_page_uri

          sig { params(next_page_uri: String).void }
          attr_writer :next_page_uri

          # Current page number, zero-indexed.
          sig { returns(T.nilable(Integer)) }
          attr_reader :page

          sig { params(page: Integer).void }
          attr_writer :page

          # The number of items on the page
          sig { returns(T.nilable(Integer)) }
          attr_reader :page_size

          sig { params(page_size: Integer).void }
          attr_writer :page_size

          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse::Recording
                ]
              )
            )
          end
          attr_reader :recordings

          sig do
            params(
              recordings:
                T::Array[
                  Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse::Recording::OrHash
                ]
            ).void
          end
          attr_writer :recordings

          # The number of the first element on the page, zero-indexed.
          sig { returns(T.nilable(Integer)) }
          attr_reader :start

          sig { params(start: Integer).void }
          attr_writer :start

          # The URI of the current page.
          sig { returns(T.nilable(String)) }
          attr_reader :uri

          sig { params(uri: String).void }
          attr_writer :uri

          sig do
            params(
              end_: Integer,
              first_page_uri: String,
              next_page_uri: String,
              page: Integer,
              page_size: Integer,
              recordings:
                T::Array[
                  Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse::Recording::OrHash
                ],
              start: Integer,
              uri: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The number of the last element on the page, zero-indexed.
            end_: nil,
            # /v2/texml/Accounts/61bf923e-5e4d-4595-a110-56190ea18a1b/Conferences/6dc6cc1a-1ba1-4351-86b8-4c22c95cd98f/Recordings.json?page=0&pagesize=20
            first_page_uri: nil,
            # /v2/texml/Accounts/61bf923e-5e4d-4595-a110-56190ea18a1b/Conferences/6dc6cc1a-1ba1-4351-86b8-4c22c95cd98f/Recordings.json?Page=1&PageSize=1&PageToken=MTY4AjgyNDkwNzIxMQ
            next_page_uri: nil,
            # Current page number, zero-indexed.
            page: nil,
            # The number of items on the page
            page_size: nil,
            recordings: nil,
            # The number of the first element on the page, zero-indexed.
            start: nil,
            # The URI of the current page.
            uri: nil
          )
          end

          sig do
            override.returns(
              {
                end_: Integer,
                first_page_uri: String,
                next_page_uri: String,
                page: Integer,
                page_size: Integer,
                recordings:
                  T::Array[
                    Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse::Recording
                  ],
                start: Integer,
                uri: String
              }
            )
          end
          def to_hash
          end

          class Recording < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse::Recording,
                  Telnyx::Internal::AnyHash
                )
              end

            # The id of the account the resource belongs to.
            sig { returns(T.nilable(String)) }
            attr_reader :account_sid

            sig { params(account_sid: String).void }
            attr_writer :account_sid

            # The identifier of the related participant's call.
            sig { returns(T.nilable(String)) }
            attr_reader :call_sid

            sig { params(call_sid: String).void }
            attr_writer :call_sid

            # The number of channels in the recording.
            sig { returns(T.nilable(Integer)) }
            attr_reader :channels

            sig { params(channels: Integer).void }
            attr_writer :channels

            # The identifier of the related conference.
            sig { returns(T.nilable(String)) }
            attr_reader :conference_sid

            sig { params(conference_sid: String).void }
            attr_writer :conference_sid

            # The timestamp of when the resource was created.
            sig { returns(T.nilable(String)) }
            attr_reader :date_created

            sig { params(date_created: String).void }
            attr_writer :date_created

            # The timestamp of when the resource was last updated.
            sig { returns(T.nilable(String)) }
            attr_reader :date_updated

            sig { params(date_updated: String).void }
            attr_writer :date_updated

            # Duratin of the recording in seconds.
            sig { returns(T.nilable(Integer)) }
            attr_reader :duration

            sig { params(duration: Integer).void }
            attr_writer :duration

            # The recording error, if any.
            sig { returns(T.nilable(String)) }
            attr_reader :error_code

            sig { params(error_code: String).void }
            attr_writer :error_code

            # The URL to use to download the recording.
            sig { returns(T.nilable(String)) }
            attr_reader :media_url

            sig { params(media_url: String).void }
            attr_writer :media_url

            # The unique identifier of the recording.
            sig { returns(T.nilable(String)) }
            attr_reader :sid

            sig { params(sid: String).void }
            attr_writer :sid

            # How the recording was started.
            sig do
              returns(
                T.nilable(
                  Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse::Recording::Source::TaggedSymbol
                )
              )
            end
            attr_reader :source

            sig do
              params(
                source:
                  Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse::Recording::Source::OrSymbol
              ).void
            end
            attr_writer :source

            # The timestamp of when the recording was started.
            sig { returns(T.nilable(String)) }
            attr_reader :start_time

            sig { params(start_time: String).void }
            attr_writer :start_time

            # The status of the recording.
            sig do
              returns(
                T.nilable(
                  Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse::Recording::Status::TaggedSymbol
                )
              )
            end
            attr_reader :status

            sig do
              params(
                status:
                  Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse::Recording::Status::OrSymbol
              ).void
            end
            attr_writer :status

            # A list of related resources identified by their relative URIs.
            sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
            attr_reader :subresource_uris

            sig { params(subresource_uris: T::Hash[Symbol, T.anything]).void }
            attr_writer :subresource_uris

            # The relative URI for this recording.
            sig { returns(T.nilable(String)) }
            attr_reader :uri

            sig { params(uri: String).void }
            attr_writer :uri

            sig do
              params(
                account_sid: String,
                call_sid: String,
                channels: Integer,
                conference_sid: String,
                date_created: String,
                date_updated: String,
                duration: Integer,
                error_code: String,
                media_url: String,
                sid: String,
                source:
                  Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse::Recording::Source::OrSymbol,
                start_time: String,
                status:
                  Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse::Recording::Status::OrSymbol,
                subresource_uris: T::Hash[Symbol, T.anything],
                uri: String
              ).returns(T.attached_class)
            end
            def self.new(
              # The id of the account the resource belongs to.
              account_sid: nil,
              # The identifier of the related participant's call.
              call_sid: nil,
              # The number of channels in the recording.
              channels: nil,
              # The identifier of the related conference.
              conference_sid: nil,
              # The timestamp of when the resource was created.
              date_created: nil,
              # The timestamp of when the resource was last updated.
              date_updated: nil,
              # Duratin of the recording in seconds.
              duration: nil,
              # The recording error, if any.
              error_code: nil,
              # The URL to use to download the recording.
              media_url: nil,
              # The unique identifier of the recording.
              sid: nil,
              # How the recording was started.
              source: nil,
              # The timestamp of when the recording was started.
              start_time: nil,
              # The status of the recording.
              status: nil,
              # A list of related resources identified by their relative URIs.
              subresource_uris: nil,
              # The relative URI for this recording.
              uri: nil
            )
            end

            sig do
              override.returns(
                {
                  account_sid: String,
                  call_sid: String,
                  channels: Integer,
                  conference_sid: String,
                  date_created: String,
                  date_updated: String,
                  duration: Integer,
                  error_code: String,
                  media_url: String,
                  sid: String,
                  source:
                    Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse::Recording::Source::TaggedSymbol,
                  start_time: String,
                  status:
                    Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse::Recording::Status::TaggedSymbol,
                  subresource_uris: T::Hash[Symbol, T.anything],
                  uri: String
                }
              )
            end
            def to_hash
            end

            # How the recording was started.
            module Source
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse::Recording::Source
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              DIAL_VERB =
                T.let(
                  :DialVerb,
                  Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse::Recording::Source::TaggedSymbol
                )
              CONFERENCE =
                T.let(
                  :Conference,
                  Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse::Recording::Source::TaggedSymbol
                )
              OUTBOUND_API =
                T.let(
                  :OutboundAPI,
                  Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse::Recording::Source::TaggedSymbol
                )
              TRUNKING =
                T.let(
                  :Trunking,
                  Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse::Recording::Source::TaggedSymbol
                )
              RECORD_VERB =
                T.let(
                  :RecordVerb,
                  Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse::Recording::Source::TaggedSymbol
                )
              START_CALL_RECORDING_API =
                T.let(
                  :StartCallRecordingAPI,
                  Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse::Recording::Source::TaggedSymbol
                )
              START_CONFERENCE_RECORDING_API =
                T.let(
                  :StartConferenceRecordingAPI,
                  Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse::Recording::Source::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse::Recording::Source::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # The status of the recording.
            module Status
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse::Recording::Status
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PROCESSING =
                T.let(
                  :processing,
                  Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse::Recording::Status::TaggedSymbol
                )
              ABSENT =
                T.let(
                  :absent,
                  Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse::Recording::Status::TaggedSymbol
                )
              COMPLETED =
                T.let(
                  :completed,
                  Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse::Recording::Status::TaggedSymbol
                )
              DELETED =
                T.let(
                  :deleted,
                  Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse::Recording::Status::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse::Recording::Status::TaggedSymbol
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
