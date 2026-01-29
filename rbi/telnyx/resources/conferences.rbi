# typed: strong

module Telnyx
  module Resources
    class Conferences
      sig { returns(Telnyx::Resources::Conferences::Actions) }
      attr_reader :actions

      # Create a conference from an existing call leg using a `call_control_id` and a
      # conference name. Upon creating the conference, the call will be automatically
      # bridged to the conference. Conferences will expire after all participants have
      # left the conference or after 4 hours regardless of the number of active
      # participants.
      #
      # **Expected Webhooks:**
      #
      # - `conference.created`
      # - `conference.participant.joined`
      # - `conference.participant.left`
      # - `conference.ended`
      # - `conference.recording.saved`
      # - `conference.floor.changed`
      sig do
        params(
          call_control_id: String,
          name: String,
          beep_enabled: Telnyx::ConferenceCreateParams::BeepEnabled::OrSymbol,
          client_state: String,
          comfort_noise: T::Boolean,
          command_id: String,
          duration_minutes: Integer,
          hold_audio_url: String,
          hold_media_name: String,
          max_participants: Integer,
          region: Telnyx::ConferenceCreateParams::Region::OrSymbol,
          start_conference_on_create: T::Boolean,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::ConferenceCreateResponse)
      end
      def create(
        # Unique identifier and token for controlling the call
        call_control_id:,
        # Name of the conference
        name:,
        # Whether a beep sound should be played when participants join and/or leave the
        # conference.
        beep_enabled: nil,
        # Use this field to add state to every subsequent webhook. It must be a valid
        # Base-64 encoded string. The client_state will be updated for the creator call
        # leg and will be used for all webhooks related to the created conference.
        client_state: nil,
        # Toggle background comfort noise.
        comfort_noise: nil,
        # Use this field to avoid execution of duplicate commands. Telnyx will ignore
        # subsequent commands with the same `command_id` as one that has already been
        # executed.
        command_id: nil,
        # Time length (minutes) after which the conference will end.
        duration_minutes: nil,
        # The URL of a file to be played to participants joining the conference. The URL
        # can point to either a WAV or MP3 file. hold_media_name and hold_audio_url cannot
        # be used together in one request. Takes effect only when
        # "start_conference_on_create" is set to "false".
        hold_audio_url: nil,
        # The media_name of a file to be played to participants joining the conference.
        # The media_name must point to a file previously uploaded to
        # api.telnyx.com/v2/media by the same user/organization. The file must either be a
        # WAV or MP3 file. Takes effect only when "start_conference_on_create" is set to
        # "false".
        hold_media_name: nil,
        # The maximum number of active conference participants to allow. Must be between 2
        # and 800. Defaults to 250
        max_participants: nil,
        # Sets the region where the conference data will be hosted. Defaults to the region
        # defined in user's data locality settings (Europe or US).
        region: nil,
        # Whether the conference should be started on creation. If the conference isn't
        # started all participants that join are automatically put on hold. Defaults to
        # "true".
        start_conference_on_create: nil,
        request_options: {}
      )
      end

      # Retrieve an existing conference
      sig do
        params(
          id: String,
          region: Telnyx::ConferenceRetrieveParams::Region::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::ConferenceRetrieveResponse)
      end
      def retrieve(
        # Uniquely identifies the conference by id
        id,
        # Region where the conference data is located
        region: nil,
        request_options: {}
      )
      end

      # Lists conferences. Conferences are created on demand, and will expire after all
      # participants have left the conference or after 4 hours regardless of the number
      # of active participants. Conferences are listed in descending order by
      # `expires_at`.
      sig do
        params(
          filter: Telnyx::ConferenceListParams::Filter::OrHash,
          page: Telnyx::ConferenceListParams::Page::OrHash,
          page_number: Integer,
          page_size: Integer,
          region: Telnyx::ConferenceListParams::Region::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Internal::DefaultFlatPagination[Telnyx::Conference])
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[application_name][contains], filter[outbound.outbound_voice_profile_id],
        # filter[leg_id], filter[application_session_id], filter[connection_id],
        # filter[product], filter[failed], filter[from], filter[to], filter[name],
        # filter[type], filter[occurred_at][eq/gt/gte/lt/lte], filter[status]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[after],
        # page[before], page[limit], page[size], page[number]
        page: nil,
        page_number: nil,
        page_size: nil,
        # Region where the conference data is located
        region: nil,
        request_options: {}
      )
      end

      # Lists conference participants
      sig do
        params(
          conference_id: String,
          filter: Telnyx::ConferenceListParticipantsParams::Filter::OrHash,
          page: Telnyx::ConferenceListParticipantsParams::Page::OrHash,
          page_number: Integer,
          page_size: Integer,
          region: Telnyx::ConferenceListParticipantsParams::Region::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[
            Telnyx::Models::ConferenceListParticipantsResponse
          ]
        )
      end
      def list_participants(
        # Uniquely identifies the conference by id
        conference_id,
        # Consolidated filter parameter (deepObject style). Originally: filter[muted],
        # filter[on_hold], filter[whispering]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[after],
        # page[before], page[limit], page[size], page[number]
        page: nil,
        page_number: nil,
        page_size: nil,
        # Region where the conference data is located
        region: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
