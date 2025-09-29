# typed: strong

module Telnyx
  module Models
    module Texml
      class AccountRetrieveTranscriptionsJsonResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Texml::AccountRetrieveTranscriptionsJsonResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # The number of the last element on the page, zero-indexed
        sig { returns(T.nilable(Integer)) }
        attr_reader :end_

        sig { params(end_: Integer).void }
        attr_writer :end_

        # Relative uri to the first page of the query results
        sig { returns(T.nilable(String)) }
        attr_reader :first_page_uri

        sig { params(first_page_uri: String).void }
        attr_writer :first_page_uri

        # Relative uri to the next page of the query results
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

        # Relative uri to the previous page of the query results
        sig { returns(T.nilable(String)) }
        attr_reader :previous_page_uri

        sig { params(previous_page_uri: String).void }
        attr_writer :previous_page_uri

        # The number of the first element on the page, zero-indexed.
        sig { returns(T.nilable(Integer)) }
        attr_reader :start

        sig { params(start: Integer).void }
        attr_writer :start

        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::Models::Texml::AccountRetrieveTranscriptionsJsonResponse::Transcription
              ]
            )
          )
        end
        attr_reader :transcriptions

        sig do
          params(
            transcriptions:
              T::Array[
                Telnyx::Models::Texml::AccountRetrieveTranscriptionsJsonResponse::Transcription::OrHash
              ]
          ).void
        end
        attr_writer :transcriptions

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
            previous_page_uri: String,
            start: Integer,
            transcriptions:
              T::Array[
                Telnyx::Models::Texml::AccountRetrieveTranscriptionsJsonResponse::Transcription::OrHash
              ],
            uri: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The number of the last element on the page, zero-indexed
          end_: nil,
          # Relative uri to the first page of the query results
          first_page_uri: nil,
          # Relative uri to the next page of the query results
          next_page_uri: nil,
          # Current page number, zero-indexed.
          page: nil,
          # The number of items on the page
          page_size: nil,
          # Relative uri to the previous page of the query results
          previous_page_uri: nil,
          # The number of the first element on the page, zero-indexed.
          start: nil,
          transcriptions: nil,
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
              previous_page_uri: String,
              start: Integer,
              transcriptions:
                T::Array[
                  Telnyx::Models::Texml::AccountRetrieveTranscriptionsJsonResponse::Transcription
                ],
              uri: String
            }
          )
        end
        def to_hash
        end

        class Transcription < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Texml::AccountRetrieveTranscriptionsJsonResponse::Transcription,
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
                Telnyx::Models::Texml::AccountRetrieveTranscriptionsJsonResponse::Transcription::Status::TaggedSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                Telnyx::Models::Texml::AccountRetrieveTranscriptionsJsonResponse::Transcription::Status::OrSymbol
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
                Telnyx::Models::Texml::AccountRetrieveTranscriptionsJsonResponse::Transcription::Status::OrSymbol,
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
                  Telnyx::Models::Texml::AccountRetrieveTranscriptionsJsonResponse::Transcription::Status::TaggedSymbol,
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
                  Telnyx::Models::Texml::AccountRetrieveTranscriptionsJsonResponse::Transcription::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            IN_PROGRESS =
              T.let(
                :"in-progress",
                Telnyx::Models::Texml::AccountRetrieveTranscriptionsJsonResponse::Transcription::Status::TaggedSymbol
              )
            COMPLETED =
              T.let(
                :completed,
                Telnyx::Models::Texml::AccountRetrieveTranscriptionsJsonResponse::Transcription::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::Texml::AccountRetrieveTranscriptionsJsonResponse::Transcription::Status::TaggedSymbol
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
