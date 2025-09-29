# frozen_string_literal: true

module Telnyx
  module Models
    module Texml
      module Accounts
        module Conferences
          # @see Telnyx::Resources::Texml::Accounts::Conferences::Participants#update
          class ParticipantUpdateParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            # @!attribute account_sid
            #
            #   @return [String]
            required :account_sid, String

            # @!attribute conference_sid
            #
            #   @return [String]
            required :conference_sid, String

            # @!attribute announce_method
            #   The HTTP method used to call the `AnnounceUrl`. Defaults to `POST`.
            #
            #   @return [Symbol, Telnyx::Models::Texml::Accounts::Conferences::ParticipantUpdateParams::AnnounceMethod, nil]
            optional :announce_method,
                     enum: -> {
                       Telnyx::Texml::Accounts::Conferences::ParticipantUpdateParams::AnnounceMethod
                     },
                     api_name: :AnnounceMethod

            # @!attribute announce_url
            #   The URL to call to announce something to the participant. The URL may return an
            #   MP3 fileo a WAV file, or a TwiML document that contains `<Play>`, `<Say>`,
            #   `<Pause>`, or `<Redirect>` verbs.
            #
            #   @return [String, nil]
            optional :announce_url, String, api_name: :AnnounceUrl

            # @!attribute beep_on_exit
            #   Whether to play a notification beep to the conference when the participant
            #   exits.
            #
            #   @return [Boolean, nil]
            optional :beep_on_exit, Telnyx::Internal::Type::Boolean, api_name: :BeepOnExit

            # @!attribute call_sid_to_coach
            #   The SID of the participant who is being coached. The participant being coached
            #   is the only participant who can hear the participant who is coaching.
            #
            #   @return [String, nil]
            optional :call_sid_to_coach, String, api_name: :CallSidToCoach

            # @!attribute coaching
            #   Whether the participant is coaching another call. When `true`, `CallSidToCoach`
            #   has to be given.
            #
            #   @return [Boolean, nil]
            optional :coaching, Telnyx::Internal::Type::Boolean, api_name: :Coaching

            # @!attribute end_conference_on_exit
            #   Whether to end the conference when the participant leaves.
            #
            #   @return [Boolean, nil]
            optional :end_conference_on_exit, Telnyx::Internal::Type::Boolean, api_name: :EndConferenceOnExit

            # @!attribute hold
            #   Whether the participant should be on hold.
            #
            #   @return [Boolean, nil]
            optional :hold, Telnyx::Internal::Type::Boolean, api_name: :Hold

            # @!attribute hold_method
            #   The HTTP method to use when calling the `HoldUrl`.
            #
            #   @return [Symbol, Telnyx::Models::Texml::Accounts::Conferences::ParticipantUpdateParams::HoldMethod, nil]
            optional :hold_method,
                     enum: -> { Telnyx::Texml::Accounts::Conferences::ParticipantUpdateParams::HoldMethod },
                     api_name: :HoldMethod

            # @!attribute hold_url
            #   The URL to be called using the `HoldMethod` for music that plays when the
            #   participant is on hold. The URL may return an MP3 file, a WAV file, or a TwiML
            #   document that contains `<Play>`, `<Say>`, `<Pause>`, or `<Redirect>` verbs.
            #
            #   @return [String, nil]
            optional :hold_url, String, api_name: :HoldUrl

            # @!attribute muted
            #   Whether the participant should be muted.
            #
            #   @return [Boolean, nil]
            optional :muted, Telnyx::Internal::Type::Boolean, api_name: :Muted

            # @!attribute wait_url
            #   The URL to call for an audio file to play while the participant is waiting for
            #   the conference to start.
            #
            #   @return [String, nil]
            optional :wait_url, String, api_name: :WaitUrl

            # @!method initialize(account_sid:, conference_sid:, announce_method: nil, announce_url: nil, beep_on_exit: nil, call_sid_to_coach: nil, coaching: nil, end_conference_on_exit: nil, hold: nil, hold_method: nil, hold_url: nil, muted: nil, wait_url: nil, request_options: {})
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::Texml::Accounts::Conferences::ParticipantUpdateParams} for more
            #   details.
            #
            #   @param account_sid [String]
            #
            #   @param conference_sid [String]
            #
            #   @param announce_method [Symbol, Telnyx::Models::Texml::Accounts::Conferences::ParticipantUpdateParams::AnnounceMethod] The HTTP method used to call the `AnnounceUrl`. Defaults to `POST`.
            #
            #   @param announce_url [String] The URL to call to announce something to the participant. The URL may return an
            #
            #   @param beep_on_exit [Boolean] Whether to play a notification beep to the conference when the participant exits
            #
            #   @param call_sid_to_coach [String] The SID of the participant who is being coached. The participant being coached i
            #
            #   @param coaching [Boolean] Whether the participant is coaching another call. When `true`, `CallSidToCoach`
            #
            #   @param end_conference_on_exit [Boolean] Whether to end the conference when the participant leaves.
            #
            #   @param hold [Boolean] Whether the participant should be on hold.
            #
            #   @param hold_method [Symbol, Telnyx::Models::Texml::Accounts::Conferences::ParticipantUpdateParams::HoldMethod] The HTTP method to use when calling the `HoldUrl`.
            #
            #   @param hold_url [String] The URL to be called using the `HoldMethod` for music that plays when the partic
            #
            #   @param muted [Boolean] Whether the participant should be muted.
            #
            #   @param wait_url [String] The URL to call for an audio file to play while the participant is waiting for t
            #
            #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

            # The HTTP method used to call the `AnnounceUrl`. Defaults to `POST`.
            module AnnounceMethod
              extend Telnyx::Internal::Type::Enum

              GET = :GET
              POST = :POST

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # The HTTP method to use when calling the `HoldUrl`.
            module HoldMethod
              extend Telnyx::Internal::Type::Enum

              GET = :GET
              POST = :POST

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
