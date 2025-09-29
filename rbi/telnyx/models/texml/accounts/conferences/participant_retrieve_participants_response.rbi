# typed: strong

module Telnyx
  module Models
    module Texml
      module Accounts
        module Conferences
          class ParticipantRetrieveParticipantsResponse < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Texml::Accounts::Conferences::ParticipantRetrieveParticipantsResponse,
                  Telnyx::Internal::AnyHash
                )
              end

            # The number of the last element on the page, zero-indexed.
            sig { returns(T.nilable(Integer)) }
            attr_reader :end_

            sig { params(end_: Integer).void }
            attr_writer :end_

            # /v2/texml/Accounts/61bf923e-5e4d-4595-a110-56190ea18a1b/Conferences/6dc6cc1a-1ba1-4351-86b8-4c22c95cd98f/Participants.json?page=0&pagesize=20
            sig { returns(T.nilable(String)) }
            attr_reader :first_page_uri

            sig { params(first_page_uri: String).void }
            attr_writer :first_page_uri

            # /v2/texml/Accounts/61bf923e-5e4d-4595-a110-56190ea18a1b/Conferences/6dc6cc1a-1ba1-4351-86b8-4c22c95cd98f/Participants.json?Page=1&PageSize=1&PageToken=MTY4AjgyNDkwNzIxMQ
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
                    Telnyx::Models::Texml::Accounts::Conferences::ParticipantRetrieveParticipantsResponse::Participant
                  ]
                )
              )
            end
            attr_reader :participants

            sig do
              params(
                participants:
                  T::Array[
                    Telnyx::Models::Texml::Accounts::Conferences::ParticipantRetrieveParticipantsResponse::Participant::OrHash
                  ]
              ).void
            end
            attr_writer :participants

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
                participants:
                  T::Array[
                    Telnyx::Models::Texml::Accounts::Conferences::ParticipantRetrieveParticipantsResponse::Participant::OrHash
                  ],
                start: Integer,
                uri: String
              ).returns(T.attached_class)
            end
            def self.new(
              # The number of the last element on the page, zero-indexed.
              end_: nil,
              # /v2/texml/Accounts/61bf923e-5e4d-4595-a110-56190ea18a1b/Conferences/6dc6cc1a-1ba1-4351-86b8-4c22c95cd98f/Participants.json?page=0&pagesize=20
              first_page_uri: nil,
              # /v2/texml/Accounts/61bf923e-5e4d-4595-a110-56190ea18a1b/Conferences/6dc6cc1a-1ba1-4351-86b8-4c22c95cd98f/Participants.json?Page=1&PageSize=1&PageToken=MTY4AjgyNDkwNzIxMQ
              next_page_uri: nil,
              # Current page number, zero-indexed.
              page: nil,
              # The number of items on the page
              page_size: nil,
              participants: nil,
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
                  participants:
                    T::Array[
                      Telnyx::Models::Texml::Accounts::Conferences::ParticipantRetrieveParticipantsResponse::Participant
                    ],
                  start: Integer,
                  uri: String
                }
              )
            end
            def to_hash
            end

            class Participant < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::Texml::Accounts::Conferences::ParticipantRetrieveParticipantsResponse::Participant,
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

              # The identifier of this participant's call.
              sig { returns(T.nilable(String)) }
              attr_reader :call_sid

              sig { params(call_sid: String).void }
              attr_writer :call_sid

              # The identifier of this participant's call.
              sig { returns(T.nilable(String)) }
              attr_reader :call_sid_legacy

              sig { params(call_sid_legacy: String).void }
              attr_writer :call_sid_legacy

              # Whether the participant is coaching another call.
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :coaching

              sig { params(coaching: T::Boolean).void }
              attr_writer :coaching

              # The identifier of the coached participant's call.
              sig { returns(T.nilable(String)) }
              attr_reader :coaching_call_sid

              sig { params(coaching_call_sid: String).void }
              attr_writer :coaching_call_sid

              # The identifier of the coached participant's call.
              sig { returns(T.nilable(String)) }
              attr_reader :coaching_call_sid_legacy

              sig { params(coaching_call_sid_legacy: String).void }
              attr_writer :coaching_call_sid_legacy

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

              # Whether the conference ends when the participant leaves.
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :end_conference_on_exit

              sig { params(end_conference_on_exit: T::Boolean).void }
              attr_writer :end_conference_on_exit

              # Whether the participant is on hold.
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :hold

              sig { params(hold: T::Boolean).void }
              attr_writer :hold

              # Whether the participant is muted.
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :muted

              sig { params(muted: T::Boolean).void }
              attr_writer :muted

              # The status of the participant's call in the conference.
              sig do
                returns(
                  T.nilable(
                    Telnyx::Models::Texml::Accounts::Conferences::ParticipantRetrieveParticipantsResponse::Participant::Status::TaggedSymbol
                  )
                )
              end
              attr_reader :status

              sig do
                params(
                  status:
                    Telnyx::Models::Texml::Accounts::Conferences::ParticipantRetrieveParticipantsResponse::Participant::Status::OrSymbol
                ).void
              end
              attr_writer :status

              # The relative URI for this participant.
              sig { returns(T.nilable(String)) }
              attr_reader :uri

              sig { params(uri: String).void }
              attr_writer :uri

              sig do
                params(
                  account_sid: String,
                  api_version: String,
                  call_sid: String,
                  call_sid_legacy: String,
                  coaching: T::Boolean,
                  coaching_call_sid: String,
                  coaching_call_sid_legacy: String,
                  date_created: String,
                  date_updated: String,
                  end_conference_on_exit: T::Boolean,
                  hold: T::Boolean,
                  muted: T::Boolean,
                  status:
                    Telnyx::Models::Texml::Accounts::Conferences::ParticipantRetrieveParticipantsResponse::Participant::Status::OrSymbol,
                  uri: String
                ).returns(T.attached_class)
              end
              def self.new(
                # The id of the account the resource belongs to.
                account_sid: nil,
                # The version of the API that was used to make the request.
                api_version: nil,
                # The identifier of this participant's call.
                call_sid: nil,
                # The identifier of this participant's call.
                call_sid_legacy: nil,
                # Whether the participant is coaching another call.
                coaching: nil,
                # The identifier of the coached participant's call.
                coaching_call_sid: nil,
                # The identifier of the coached participant's call.
                coaching_call_sid_legacy: nil,
                # The timestamp of when the resource was created.
                date_created: nil,
                # The timestamp of when the resource was last updated.
                date_updated: nil,
                # Whether the conference ends when the participant leaves.
                end_conference_on_exit: nil,
                # Whether the participant is on hold.
                hold: nil,
                # Whether the participant is muted.
                muted: nil,
                # The status of the participant's call in the conference.
                status: nil,
                # The relative URI for this participant.
                uri: nil
              )
              end

              sig do
                override.returns(
                  {
                    account_sid: String,
                    api_version: String,
                    call_sid: String,
                    call_sid_legacy: String,
                    coaching: T::Boolean,
                    coaching_call_sid: String,
                    coaching_call_sid_legacy: String,
                    date_created: String,
                    date_updated: String,
                    end_conference_on_exit: T::Boolean,
                    hold: T::Boolean,
                    muted: T::Boolean,
                    status:
                      Telnyx::Models::Texml::Accounts::Conferences::ParticipantRetrieveParticipantsResponse::Participant::Status::TaggedSymbol,
                    uri: String
                  }
                )
              end
              def to_hash
              end

              # The status of the participant's call in the conference.
              module Status
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::Models::Texml::Accounts::Conferences::ParticipantRetrieveParticipantsResponse::Participant::Status
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                CONNECTING =
                  T.let(
                    :connecting,
                    Telnyx::Models::Texml::Accounts::Conferences::ParticipantRetrieveParticipantsResponse::Participant::Status::TaggedSymbol
                  )
                CONNECTED =
                  T.let(
                    :connected,
                    Telnyx::Models::Texml::Accounts::Conferences::ParticipantRetrieveParticipantsResponse::Participant::Status::TaggedSymbol
                  )
                COMPLETED =
                  T.let(
                    :completed,
                    Telnyx::Models::Texml::Accounts::Conferences::ParticipantRetrieveParticipantsResponse::Participant::Status::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Models::Texml::Accounts::Conferences::ParticipantRetrieveParticipantsResponse::Participant::Status::TaggedSymbol
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
end
