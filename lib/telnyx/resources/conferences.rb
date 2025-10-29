# frozen_string_literal: true

module Telnyx
  module Resources
    class Conferences
      # @return [Telnyx::Resources::Conferences::Actions]
      attr_reader :actions

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::ConferenceCreateParams} for more details.
      #
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
      #
      # @overload create(call_control_id:, name:, beep_enabled: nil, client_state: nil, comfort_noise: nil, command_id: nil, duration_minutes: nil, hold_audio_url: nil, hold_media_name: nil, max_participants: nil, region: nil, start_conference_on_create: nil, request_options: {})
      #
      # @param call_control_id [String] Unique identifier and token for controlling the call
      #
      # @param name [String] Name of the conference
      #
      # @param beep_enabled [Symbol, Telnyx::Models::ConferenceCreateParams::BeepEnabled] Whether a beep sound should be played when participants join and/or leave the co
      #
      # @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
      #
      # @param comfort_noise [Boolean] Toggle background comfort noise.
      #
      # @param command_id [String] Use this field to avoid execution of duplicate commands. Telnyx will ignore subs
      #
      # @param duration_minutes [Integer] Time length (minutes) after which the conference will end.
      #
      # @param hold_audio_url [String] The URL of a file to be played to participants joining the conference. The URL c
      #
      # @param hold_media_name [String] The media_name of a file to be played to participants joining the conference. Th
      #
      # @param max_participants [Integer] The maximum number of active conference participants to allow. Must be between 2
      #
      # @param region [Symbol, Telnyx::Models::ConferenceCreateParams::Region] Sets the region where the conference data will be hosted. Defaults to the region
      #
      # @param start_conference_on_create [Boolean] Whether the conference should be started on creation. If the conference isn't st
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::ConferenceCreateResponse]
      #
      # @see Telnyx::Models::ConferenceCreateParams
      def create(params)
        parsed, options = Telnyx::ConferenceCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "conferences",
          body: parsed,
          model: Telnyx::Models::ConferenceCreateResponse,
          options: options
        )
      end

      # Retrieve an existing conference
      #
      # @overload retrieve(id, region: nil, request_options: {})
      #
      # @param id [String] Uniquely identifies the conference by id
      #
      # @param region [Symbol, Telnyx::Models::ConferenceRetrieveParams::Region] Region where the conference data is located
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::ConferenceRetrieveResponse]
      #
      # @see Telnyx::Models::ConferenceRetrieveParams
      def retrieve(id, params = {})
        parsed, options = Telnyx::ConferenceRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["conferences/%1$s", id],
          query: parsed,
          model: Telnyx::Models::ConferenceRetrieveResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::ConferenceListParams} for more details.
      #
      # Lists conferences. Conferences are created on demand, and will expire after all
      # participants have left the conference or after 4 hours regardless of the number
      # of active participants. Conferences are listed in descending order by
      # `expires_at`.
      #
      # @overload list(filter: nil, page: nil, region: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::ConferenceListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[application
      #
      # @param page [Telnyx::Models::ConferenceListParams::Page] Consolidated page parameter (deepObject style). Originally: page[after], page[be
      #
      # @param region [Symbol, Telnyx::Models::ConferenceListParams::Region] Region where the conference data is located
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::ConferenceListResponse]
      #
      # @see Telnyx::Models::ConferenceListParams
      def list(params = {})
        parsed, options = Telnyx::ConferenceListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "conferences",
          query: parsed,
          model: Telnyx::Models::ConferenceListResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::ConferenceListParticipantsParams} for more details.
      #
      # Lists conference participants
      #
      # @overload list_participants(conference_id, filter: nil, page: nil, region: nil, request_options: {})
      #
      # @param conference_id [String] Uniquely identifies the conference by id
      #
      # @param filter [Telnyx::Models::ConferenceListParticipantsParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[muted], fil
      #
      # @param page [Telnyx::Models::ConferenceListParticipantsParams::Page] Consolidated page parameter (deepObject style). Originally: page[after], page[be
      #
      # @param region [Symbol, Telnyx::Models::ConferenceListParticipantsParams::Region] Region where the conference data is located
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::ConferenceListParticipantsResponse]
      #
      # @see Telnyx::Models::ConferenceListParticipantsParams
      def list_participants(conference_id, params = {})
        parsed, options = Telnyx::ConferenceListParticipantsParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["conferences/%1$s/participants", conference_id],
          query: parsed,
          model: Telnyx::Models::ConferenceListParticipantsResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @actions = Telnyx::Resources::Conferences::Actions.new(client: client)
      end
    end
  end
end
