# typed: strong

module Telnyx
  module Models
    module Texml
      module Accounts
        module Conferences
          class ParticipantParticipantsResponse < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsResponse,
                  Telnyx::Internal::AnyHash
                )
              end

            # The id of the account the resource belongs to.
            sig { returns(T.nilable(String)) }
            attr_reader :account_sid

            sig { params(account_sid: String).void }
            attr_writer :account_sid

            # The identifier of this participant's call.
            sig { returns(T.nilable(String)) }
            attr_reader :call_sid

            sig { params(call_sid: String).void }
            attr_writer :call_sid

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

            # The unique identifier for the conference.
            sig { returns(T.nilable(String)) }
            attr_reader :conference_sid

            sig { params(conference_sid: String).void }
            attr_writer :conference_sid

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
                  Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsResponse::Status::TaggedSymbol
                )
              )
            end
            attr_reader :status

            sig do
              params(
                status:
                  Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsResponse::Status::OrSymbol
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
                call_sid: String,
                coaching: T::Boolean,
                coaching_call_sid: String,
                conference_sid: String,
                end_conference_on_exit: T::Boolean,
                hold: T::Boolean,
                muted: T::Boolean,
                status:
                  Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsResponse::Status::OrSymbol,
                uri: String
              ).returns(T.attached_class)
            end
            def self.new(
              # The id of the account the resource belongs to.
              account_sid: nil,
              # The identifier of this participant's call.
              call_sid: nil,
              # Whether the participant is coaching another call.
              coaching: nil,
              # The identifier of the coached participant's call.
              coaching_call_sid: nil,
              # The unique identifier for the conference.
              conference_sid: nil,
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
                  call_sid: String,
                  coaching: T::Boolean,
                  coaching_call_sid: String,
                  conference_sid: String,
                  end_conference_on_exit: T::Boolean,
                  hold: T::Boolean,
                  muted: T::Boolean,
                  status:
                    Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsResponse::Status::TaggedSymbol,
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
                    Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsResponse::Status
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CONNECTING =
                T.let(
                  :connecting,
                  Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsResponse::Status::TaggedSymbol
                )
              CONNECTED =
                T.let(
                  :connected,
                  Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsResponse::Status::TaggedSymbol
                )
              COMPLETED =
                T.let(
                  :completed,
                  Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsResponse::Status::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsResponse::Status::TaggedSymbol
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
