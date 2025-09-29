# typed: strong

module Telnyx
  module Models
    module Texml
      module Accounts
        module Conferences
          class ParticipantUpdateParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Texml::Accounts::Conferences::ParticipantUpdateParams,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :account_sid

            sig { returns(String) }
            attr_accessor :conference_sid

            # The HTTP method used to call the `AnnounceUrl`. Defaults to `POST`.
            sig do
              returns(
                T.nilable(
                  Telnyx::Texml::Accounts::Conferences::ParticipantUpdateParams::AnnounceMethod::OrSymbol
                )
              )
            end
            attr_reader :announce_method

            sig do
              params(
                announce_method:
                  Telnyx::Texml::Accounts::Conferences::ParticipantUpdateParams::AnnounceMethod::OrSymbol
              ).void
            end
            attr_writer :announce_method

            # The URL to call to announce something to the participant. The URL may return an
            # MP3 fileo a WAV file, or a TwiML document that contains `<Play>`, `<Say>`,
            # `<Pause>`, or `<Redirect>` verbs.
            sig { returns(T.nilable(String)) }
            attr_reader :announce_url

            sig { params(announce_url: String).void }
            attr_writer :announce_url

            # Whether to play a notification beep to the conference when the participant
            # exits.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :beep_on_exit

            sig { params(beep_on_exit: T::Boolean).void }
            attr_writer :beep_on_exit

            # The SID of the participant who is being coached. The participant being coached
            # is the only participant who can hear the participant who is coaching.
            sig { returns(T.nilable(String)) }
            attr_reader :call_sid_to_coach

            sig { params(call_sid_to_coach: String).void }
            attr_writer :call_sid_to_coach

            # Whether the participant is coaching another call. When `true`, `CallSidToCoach`
            # has to be given.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :coaching

            sig { params(coaching: T::Boolean).void }
            attr_writer :coaching

            # Whether to end the conference when the participant leaves.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :end_conference_on_exit

            sig { params(end_conference_on_exit: T::Boolean).void }
            attr_writer :end_conference_on_exit

            # Whether the participant should be on hold.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :hold

            sig { params(hold: T::Boolean).void }
            attr_writer :hold

            # The HTTP method to use when calling the `HoldUrl`.
            sig do
              returns(
                T.nilable(
                  Telnyx::Texml::Accounts::Conferences::ParticipantUpdateParams::HoldMethod::OrSymbol
                )
              )
            end
            attr_reader :hold_method

            sig do
              params(
                hold_method:
                  Telnyx::Texml::Accounts::Conferences::ParticipantUpdateParams::HoldMethod::OrSymbol
              ).void
            end
            attr_writer :hold_method

            # The URL to be called using the `HoldMethod` for music that plays when the
            # participant is on hold. The URL may return an MP3 file, a WAV file, or a TwiML
            # document that contains `<Play>`, `<Say>`, `<Pause>`, or `<Redirect>` verbs.
            sig { returns(T.nilable(String)) }
            attr_reader :hold_url

            sig { params(hold_url: String).void }
            attr_writer :hold_url

            # Whether the participant should be muted.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :muted

            sig { params(muted: T::Boolean).void }
            attr_writer :muted

            # The URL to call for an audio file to play while the participant is waiting for
            # the conference to start.
            sig { returns(T.nilable(String)) }
            attr_reader :wait_url

            sig { params(wait_url: String).void }
            attr_writer :wait_url

            sig do
              params(
                account_sid: String,
                conference_sid: String,
                announce_method:
                  Telnyx::Texml::Accounts::Conferences::ParticipantUpdateParams::AnnounceMethod::OrSymbol,
                announce_url: String,
                beep_on_exit: T::Boolean,
                call_sid_to_coach: String,
                coaching: T::Boolean,
                end_conference_on_exit: T::Boolean,
                hold: T::Boolean,
                hold_method:
                  Telnyx::Texml::Accounts::Conferences::ParticipantUpdateParams::HoldMethod::OrSymbol,
                hold_url: String,
                muted: T::Boolean,
                wait_url: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              account_sid:,
              conference_sid:,
              # The HTTP method used to call the `AnnounceUrl`. Defaults to `POST`.
              announce_method: nil,
              # The URL to call to announce something to the participant. The URL may return an
              # MP3 fileo a WAV file, or a TwiML document that contains `<Play>`, `<Say>`,
              # `<Pause>`, or `<Redirect>` verbs.
              announce_url: nil,
              # Whether to play a notification beep to the conference when the participant
              # exits.
              beep_on_exit: nil,
              # The SID of the participant who is being coached. The participant being coached
              # is the only participant who can hear the participant who is coaching.
              call_sid_to_coach: nil,
              # Whether the participant is coaching another call. When `true`, `CallSidToCoach`
              # has to be given.
              coaching: nil,
              # Whether to end the conference when the participant leaves.
              end_conference_on_exit: nil,
              # Whether the participant should be on hold.
              hold: nil,
              # The HTTP method to use when calling the `HoldUrl`.
              hold_method: nil,
              # The URL to be called using the `HoldMethod` for music that plays when the
              # participant is on hold. The URL may return an MP3 file, a WAV file, or a TwiML
              # document that contains `<Play>`, `<Say>`, `<Pause>`, or `<Redirect>` verbs.
              hold_url: nil,
              # Whether the participant should be muted.
              muted: nil,
              # The URL to call for an audio file to play while the participant is waiting for
              # the conference to start.
              wait_url: nil,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  account_sid: String,
                  conference_sid: String,
                  announce_method:
                    Telnyx::Texml::Accounts::Conferences::ParticipantUpdateParams::AnnounceMethod::OrSymbol,
                  announce_url: String,
                  beep_on_exit: T::Boolean,
                  call_sid_to_coach: String,
                  coaching: T::Boolean,
                  end_conference_on_exit: T::Boolean,
                  hold: T::Boolean,
                  hold_method:
                    Telnyx::Texml::Accounts::Conferences::ParticipantUpdateParams::HoldMethod::OrSymbol,
                  hold_url: String,
                  muted: T::Boolean,
                  wait_url: String,
                  request_options: Telnyx::RequestOptions
                }
              )
            end
            def to_hash
            end

            # The HTTP method used to call the `AnnounceUrl`. Defaults to `POST`.
            module AnnounceMethod
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Texml::Accounts::Conferences::ParticipantUpdateParams::AnnounceMethod
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              GET =
                T.let(
                  :GET,
                  Telnyx::Texml::Accounts::Conferences::ParticipantUpdateParams::AnnounceMethod::TaggedSymbol
                )
              POST =
                T.let(
                  :POST,
                  Telnyx::Texml::Accounts::Conferences::ParticipantUpdateParams::AnnounceMethod::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Texml::Accounts::Conferences::ParticipantUpdateParams::AnnounceMethod::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # The HTTP method to use when calling the `HoldUrl`.
            module HoldMethod
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Texml::Accounts::Conferences::ParticipantUpdateParams::HoldMethod
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              GET =
                T.let(
                  :GET,
                  Telnyx::Texml::Accounts::Conferences::ParticipantUpdateParams::HoldMethod::TaggedSymbol
                )
              POST =
                T.let(
                  :POST,
                  Telnyx::Texml::Accounts::Conferences::ParticipantUpdateParams::HoldMethod::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Texml::Accounts::Conferences::ParticipantUpdateParams::HoldMethod::TaggedSymbol
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
