# frozen_string_literal: true

module Telnyx
  module Resources
    class Texml
      class Accounts
        class Conferences
          class Participants
            # Gets conference participant resource
            #
            # @overload retrieve(call_sid_or_participant_label, account_sid:, conference_sid:, request_options: {})
            #
            # @param call_sid_or_participant_label [String] CallSid or Label of the Participant to update.
            #
            # @param account_sid [String] The id of the account the resource belongs to.
            #
            # @param conference_sid [String] The ConferenceSid that uniquely identifies a conference.
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::Texml::Accounts::Conferences::ParticipantRetrieveResponse]
            #
            # @see Telnyx::Models::Texml::Accounts::Conferences::ParticipantRetrieveParams
            def retrieve(call_sid_or_participant_label, params)
              parsed, options = Telnyx::Texml::Accounts::Conferences::ParticipantRetrieveParams.dump_request(params)
              account_sid =
                parsed.delete(:account_sid) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              conference_sid =
                parsed.delete(:conference_sid) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :get,
                path: [
                  "texml/Accounts/%1$s/Conferences/%2$s/Participants/%3$s",
                  account_sid,
                  conference_sid,
                  call_sid_or_participant_label
                ],
                model: Telnyx::Models::Texml::Accounts::Conferences::ParticipantRetrieveResponse,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {Telnyx::Models::Texml::Accounts::Conferences::ParticipantUpdateParams} for more
            # details.
            #
            # Updates a conference participant
            #
            # @overload update(call_sid_or_participant_label, account_sid:, conference_sid:, announce_method: nil, announce_url: nil, beep_on_exit: nil, call_sid_to_coach: nil, coaching: nil, end_conference_on_exit: nil, hold: nil, hold_method: nil, hold_url: nil, muted: nil, wait_url: nil, request_options: {})
            #
            # @param call_sid_or_participant_label [String] Path param: CallSid or Label of the Participant to update.
            #
            # @param account_sid [String] Path param: The id of the account the resource belongs to.
            #
            # @param conference_sid [String] Path param: The ConferenceSid that uniquely identifies a conference.
            #
            # @param announce_method [Symbol, Telnyx::Models::Texml::Accounts::Conferences::ParticipantUpdateParams::AnnounceMethod] Body param: The HTTP method used to call the `AnnounceUrl`. Defaults to `POST`.
            #
            # @param announce_url [String] Body param: The URL to call to announce something to the participant. The URL ma
            #
            # @param beep_on_exit [Boolean] Body param: Whether to play a notification beep to the conference when the parti
            #
            # @param call_sid_to_coach [String] Body param: The SID of the participant who is being coached. The participant bei
            #
            # @param coaching [Boolean] Body param: Whether the participant is coaching another call. When `true`, `Call
            #
            # @param end_conference_on_exit [Boolean] Body param: Whether to end the conference when the participant leaves.
            #
            # @param hold [Boolean] Body param: Whether the participant should be on hold.
            #
            # @param hold_method [Symbol, Telnyx::Models::Texml::Accounts::Conferences::ParticipantUpdateParams::HoldMethod] Body param: The HTTP method to use when calling the `HoldUrl`.
            #
            # @param hold_url [String] Body param: The URL to be called using the `HoldMethod` for music that plays whe
            #
            # @param muted [Boolean] Body param: Whether the participant should be muted.
            #
            # @param wait_url [String] Body param: The URL to call for an audio file to play while the participant is w
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::Texml::Accounts::Conferences::ParticipantUpdateResponse]
            #
            # @see Telnyx::Models::Texml::Accounts::Conferences::ParticipantUpdateParams
            def update(call_sid_or_participant_label, params)
              parsed, options = Telnyx::Texml::Accounts::Conferences::ParticipantUpdateParams.dump_request(params)
              account_sid =
                parsed.delete(:account_sid) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              conference_sid =
                parsed.delete(:conference_sid) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :post,
                path: [
                  "texml/Accounts/%1$s/Conferences/%2$s/Participants/%3$s",
                  account_sid,
                  conference_sid,
                  call_sid_or_participant_label
                ],
                headers: {"content-type" => "application/x-www-form-urlencoded"},
                body: parsed,
                model: Telnyx::Models::Texml::Accounts::Conferences::ParticipantUpdateResponse,
                options: options
              )
            end

            # Deletes a conference participant
            #
            # @overload delete(call_sid_or_participant_label, account_sid:, conference_sid:, request_options: {})
            #
            # @param call_sid_or_participant_label [String] CallSid or Label of the Participant to update.
            #
            # @param account_sid [String] The id of the account the resource belongs to.
            #
            # @param conference_sid [String] The ConferenceSid that uniquely identifies a conference.
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [nil]
            #
            # @see Telnyx::Models::Texml::Accounts::Conferences::ParticipantDeleteParams
            def delete(call_sid_or_participant_label, params)
              parsed, options = Telnyx::Texml::Accounts::Conferences::ParticipantDeleteParams.dump_request(params)
              account_sid =
                parsed.delete(:account_sid) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              conference_sid =
                parsed.delete(:conference_sid) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :delete,
                path: [
                  "texml/Accounts/%1$s/Conferences/%2$s/Participants/%3$s",
                  account_sid,
                  conference_sid,
                  call_sid_or_participant_label
                ],
                model: NilClass,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsParams}
            # for more details.
            #
            # Dials a new conference participant
            #
            # @overload participants(conference_sid, account_sid:, amd_status_callback: nil, amd_status_callback_method: nil, beep: nil, caller_id: nil, call_sid_to_coach: nil, cancel_playback_on_detect_message_end: nil, cancel_playback_on_machine_detection: nil, coaching: nil, conference_record: nil, conference_recording_status_callback: nil, conference_recording_status_callback_event: nil, conference_recording_status_callback_method: nil, conference_recording_timeout: nil, conference_status_callback: nil, conference_status_callback_event: nil, conference_status_callback_method: nil, conference_trim: nil, custom_headers: nil, early_media: nil, end_conference_on_exit: nil, from: nil, machine_detection: nil, machine_detection_silence_timeout: nil, machine_detection_speech_end_threshold: nil, machine_detection_speech_threshold: nil, machine_detection_timeout: nil, max_participants: nil, muted: nil, preferred_codecs: nil, record: nil, recording_channels: nil, recording_status_callback: nil, recording_status_callback_event: nil, recording_status_callback_method: nil, recording_track: nil, sip_auth_password: nil, sip_auth_username: nil, start_conference_on_enter: nil, status_callback: nil, status_callback_event: nil, status_callback_method: nil, time_limit: nil, timeout_seconds: nil, to: nil, trim: nil, wait_url: nil, request_options: {})
            #
            # @param conference_sid [String] Path param: The ConferenceSid that uniquely identifies a conference.
            #
            # @param account_sid [String] Path param: The id of the account the resource belongs to.
            #
            # @param amd_status_callback [String] Body param: The URL the result of answering machine detection will be sent to.
            #
            # @param amd_status_callback_method [Symbol, Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsParams::AmdStatusCallbackMethod] Body param: HTTP request type used for `AmdStatusCallback`. Defaults to `POST`.
            #
            # @param beep [Symbol, Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsParams::Beep] Body param: Whether to play a notification beep to the conference when the parti
            #
            # @param caller_id [String] Body param: To be used as the caller id name (SIP From Display Name) presented t
            #
            # @param call_sid_to_coach [String] Body param: The SID of the participant who is being coached. The participant bei
            #
            # @param cancel_playback_on_detect_message_end [Boolean] Body param: Whether to cancel ongoing playback on `greeting ended` detection. De
            #
            # @param cancel_playback_on_machine_detection [Boolean] Body param: Whether to cancel ongoing playback on `machine` detection. Defaults
            #
            # @param coaching [Boolean] Body param: Whether the participant is coaching another call. When `true`, `Call
            #
            # @param conference_record [Symbol, Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceRecord] Body param: Whether to record the conference the participant is joining. Defualt
            #
            # @param conference_recording_status_callback [String] Body param: The URL the conference recording callbacks will be sent to.
            #
            # @param conference_recording_status_callback_event [String] Body param: The changes to the conference recording's state that should generate
            #
            # @param conference_recording_status_callback_method [Symbol, Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceRecordingStatusCallbackMethod] Body param: HTTP request type used for `ConferenceRecordingStatusCallback`. Defa
            #
            # @param conference_recording_timeout [Integer] Body param: The number of seconds that Telnyx will wait for the recording to be
            #
            # @param conference_status_callback [String] Body param: The URL the conference callbacks will be sent to.
            #
            # @param conference_status_callback_event [String] Body param: The changes to the conference's state that should generate a call to
            #
            # @param conference_status_callback_method [Symbol, Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceStatusCallbackMethod] Body param: HTTP request type used for `ConferenceStatusCallback`. Defaults to `
            #
            # @param conference_trim [Symbol, Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsParams::ConferenceTrim] Body param: Whether to trim any leading and trailing silence from the conference
            #
            # @param custom_headers [Array<Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsParams::CustomHeader>] Body param: Custom HTTP headers to be sent with the call. Each header should be
            #
            # @param early_media [Boolean] Body param: Whether participant shall be bridged to conference before the partic
            #
            # @param end_conference_on_exit [Boolean] Body param: Whether to end the conference when the participant leaves. Defaults
            #
            # @param from [String] Body param: The phone number of the party that initiated the call. Phone numbers
            #
            # @param machine_detection [Symbol, Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsParams::MachineDetection] Body param: Whether to detect if a human or an answering machine picked up the c
            #
            # @param machine_detection_silence_timeout [Integer] Body param: If initial silence duration is greater than this value, consider it
            #
            # @param machine_detection_speech_end_threshold [Integer] Body param: Silence duration threshold after a greeting message or voice for it
            #
            # @param machine_detection_speech_threshold [Integer] Body param: Maximum threshold of a human greeting. If greeting longer than this
            #
            # @param machine_detection_timeout [Integer] Body param: How long answering machine detection should go on for before sending
            #
            # @param max_participants [Integer] Body param: The maximum number of participants in the conference. Can be a posit
            #
            # @param muted [Boolean] Body param: Whether the participant should be muted.
            #
            # @param preferred_codecs [String] Body param: The list of comma-separated codecs to be offered on a call.
            #
            # @param record [Boolean] Body param: Whether to record the entire participant's call leg. Defaults to `fa
            #
            # @param recording_channels [Symbol, Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsParams::RecordingChannels] Body param: The number of channels in the final recording. Defaults to `mono`.
            #
            # @param recording_status_callback [String] Body param: The URL the recording callbacks will be sent to.
            #
            # @param recording_status_callback_event [String] Body param: The changes to the recording's state that should generate a call to
            #
            # @param recording_status_callback_method [Symbol, Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsParams::RecordingStatusCallbackMethod] Body param: HTTP request type used for `RecordingStatusCallback`. Defaults to `P
            #
            # @param recording_track [Symbol, Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsParams::RecordingTrack] Body param: The audio track to record for the call. The default is `both`.
            #
            # @param sip_auth_password [String] Body param: The password to use for SIP authentication.
            #
            # @param sip_auth_username [String] Body param: The username to use for SIP authentication.
            #
            # @param start_conference_on_enter [Boolean] Body param: Whether to start the conference when the participant enters. Default
            #
            # @param status_callback [String] Body param: URL destination for Telnyx to send status callback events to for the
            #
            # @param status_callback_event [String] Body param: The changes to the call's state that should generate a call to `Stat
            #
            # @param status_callback_method [Symbol, Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsParams::StatusCallbackMethod] Body param: HTTP request type used for `StatusCallback`.
            #
            # @param time_limit [Integer] Body param: The maximum duration of the call in seconds.
            #
            # @param timeout_seconds [Integer] Body param: The number of seconds that we should allow the phone to ring before
            #
            # @param to [String] Body param: The phone number of the called party. Phone numbers are formatted wi
            #
            # @param trim [Symbol, Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsParams::Trim] Body param: Whether to trim any leading and trailing silence from the recording.
            #
            # @param wait_url [String] Body param: The URL to call for an audio file to play while the participant is w
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsResponse]
            #
            # @see Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsParams
            def participants(conference_sid, params)
              parsed, options =
                Telnyx::Texml::Accounts::Conferences::ParticipantParticipantsParams.dump_request(params)
              account_sid =
                parsed.delete(:account_sid) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :post,
                path: ["texml/Accounts/%1$s/Conferences/%2$s/Participants", account_sid, conference_sid],
                headers: {"content-type" => "application/x-www-form-urlencoded"},
                body: parsed,
                model: Telnyx::Models::Texml::Accounts::Conferences::ParticipantParticipantsResponse,
                options: options
              )
            end

            # Lists conference participants
            #
            # @overload retrieve_participants(conference_sid, account_sid:, request_options: {})
            #
            # @param conference_sid [String] The ConferenceSid that uniquely identifies a conference.
            #
            # @param account_sid [String] The id of the account the resource belongs to.
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::Texml::Accounts::Conferences::ParticipantRetrieveParticipantsResponse]
            #
            # @see Telnyx::Models::Texml::Accounts::Conferences::ParticipantRetrieveParticipantsParams
            def retrieve_participants(conference_sid, params)
              parsed, options =
                Telnyx::Texml::Accounts::Conferences::ParticipantRetrieveParticipantsParams.dump_request(params)
              account_sid =
                parsed.delete(:account_sid) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :get,
                path: ["texml/Accounts/%1$s/Conferences/%2$s/Participants", account_sid, conference_sid],
                model: Telnyx::Models::Texml::Accounts::Conferences::ParticipantRetrieveParticipantsResponse,
                options: options
              )
            end

            # @api private
            #
            # @param client [Telnyx::Client]
            def initialize(client:)
              @client = client
            end
          end
        end
      end
    end
  end
end
