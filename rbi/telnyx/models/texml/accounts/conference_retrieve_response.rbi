# typed: strong

module Telnyx
  module Models
    module Texml
      module Accounts
        class ConferenceRetrieveResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Texml::Accounts::ConferenceRetrieveResponse,
                Telnyx::Internal::AnyHash
              )
            end

          # The id of the account the resource belongs to.
          sig { returns(T.nilable(String)) }
          attr_reader :account_sid

          sig { params(account_sid: String).void }
          attr_writer :account_sid

          # The version of the API that was used to make the request.
          sig { returns(T.nilable(String)) }
          attr_reader :api_version

          sig { params(api_version: String).void }
          attr_writer :api_version

          # Caller ID, if present.
          sig { returns(T.nilable(String)) }
          attr_reader :call_sid_ending_conference

          sig { params(call_sid_ending_conference: String).void }
          attr_writer :call_sid_ending_conference

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

          # A string that you assigned to describe this conference room.
          sig { returns(T.nilable(String)) }
          attr_reader :friendly_name

          sig { params(friendly_name: String).void }
          attr_writer :friendly_name

          # The reason why a conference ended. When a conference is in progress, will be
          # null.
          sig do
            returns(
              T.nilable(
                Telnyx::Models::Texml::Accounts::ConferenceRetrieveResponse::ReasonConferenceEnded::TaggedSymbol
              )
            )
          end
          attr_reader :reason_conference_ended

          sig do
            params(
              reason_conference_ended:
                Telnyx::Models::Texml::Accounts::ConferenceRetrieveResponse::ReasonConferenceEnded::OrSymbol
            ).void
          end
          attr_writer :reason_conference_ended

          # A string representing the region where the conference is hosted.
          sig { returns(T.nilable(String)) }
          attr_reader :region

          sig { params(region: String).void }
          attr_writer :region

          # The unique identifier of the conference.
          sig { returns(T.nilable(String)) }
          attr_reader :sid

          sig { params(sid: String).void }
          attr_writer :sid

          # The status of this conference.
          sig do
            returns(
              T.nilable(
                Telnyx::Models::Texml::Accounts::ConferenceRetrieveResponse::Status::TaggedSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                Telnyx::Models::Texml::Accounts::ConferenceRetrieveResponse::Status::OrSymbol
            ).void
          end
          attr_writer :status

          # A list of related resources identified by their relative URIs.
          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :subresource_uris

          sig { params(subresource_uris: T::Hash[Symbol, T.anything]).void }
          attr_writer :subresource_uris

          # The relative URI for this conference.
          sig { returns(T.nilable(String)) }
          attr_reader :uri

          sig { params(uri: String).void }
          attr_writer :uri

          sig do
            params(
              account_sid: String,
              api_version: String,
              call_sid_ending_conference: String,
              date_created: String,
              date_updated: String,
              friendly_name: String,
              reason_conference_ended:
                Telnyx::Models::Texml::Accounts::ConferenceRetrieveResponse::ReasonConferenceEnded::OrSymbol,
              region: String,
              sid: String,
              status:
                Telnyx::Models::Texml::Accounts::ConferenceRetrieveResponse::Status::OrSymbol,
              subresource_uris: T::Hash[Symbol, T.anything],
              uri: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The id of the account the resource belongs to.
            account_sid: nil,
            # The version of the API that was used to make the request.
            api_version: nil,
            # Caller ID, if present.
            call_sid_ending_conference: nil,
            # The timestamp of when the resource was created.
            date_created: nil,
            # The timestamp of when the resource was last updated.
            date_updated: nil,
            # A string that you assigned to describe this conference room.
            friendly_name: nil,
            # The reason why a conference ended. When a conference is in progress, will be
            # null.
            reason_conference_ended: nil,
            # A string representing the region where the conference is hosted.
            region: nil,
            # The unique identifier of the conference.
            sid: nil,
            # The status of this conference.
            status: nil,
            # A list of related resources identified by their relative URIs.
            subresource_uris: nil,
            # The relative URI for this conference.
            uri: nil
          )
          end

          sig do
            override.returns(
              {
                account_sid: String,
                api_version: String,
                call_sid_ending_conference: String,
                date_created: String,
                date_updated: String,
                friendly_name: String,
                reason_conference_ended:
                  Telnyx::Models::Texml::Accounts::ConferenceRetrieveResponse::ReasonConferenceEnded::TaggedSymbol,
                region: String,
                sid: String,
                status:
                  Telnyx::Models::Texml::Accounts::ConferenceRetrieveResponse::Status::TaggedSymbol,
                subresource_uris: T::Hash[Symbol, T.anything],
                uri: String
              }
            )
          end
          def to_hash
          end

          # The reason why a conference ended. When a conference is in progress, will be
          # null.
          module ReasonConferenceEnded
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::Texml::Accounts::ConferenceRetrieveResponse::ReasonConferenceEnded
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PARTICIPANT_WITH_END_CONFERENCE_ON_EXIT_LEFT =
              T.let(
                :"participant-with-end-conference-on-exit-left",
                Telnyx::Models::Texml::Accounts::ConferenceRetrieveResponse::ReasonConferenceEnded::TaggedSymbol
              )
            LAST_PARTICIPANT_LEFT =
              T.let(
                :"last-participant-left",
                Telnyx::Models::Texml::Accounts::ConferenceRetrieveResponse::ReasonConferenceEnded::TaggedSymbol
              )
            CONFERENCE_ENDED_VIA_API =
              T.let(
                :"conference-ended-via-api",
                Telnyx::Models::Texml::Accounts::ConferenceRetrieveResponse::ReasonConferenceEnded::TaggedSymbol
              )
            TIME_EXCEEDED =
              T.let(
                :"time-exceeded",
                Telnyx::Models::Texml::Accounts::ConferenceRetrieveResponse::ReasonConferenceEnded::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::Texml::Accounts::ConferenceRetrieveResponse::ReasonConferenceEnded::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The status of this conference.
          module Status
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::Texml::Accounts::ConferenceRetrieveResponse::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INIT =
              T.let(
                :init,
                Telnyx::Models::Texml::Accounts::ConferenceRetrieveResponse::Status::TaggedSymbol
              )
            IN_PROGRESS =
              T.let(
                :"in-progress",
                Telnyx::Models::Texml::Accounts::ConferenceRetrieveResponse::Status::TaggedSymbol
              )
            COMPLETED =
              T.let(
                :completed,
                Telnyx::Models::Texml::Accounts::ConferenceRetrieveResponse::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::Texml::Accounts::ConferenceRetrieveResponse::Status::TaggedSymbol
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
