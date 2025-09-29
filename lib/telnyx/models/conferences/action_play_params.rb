# frozen_string_literal: true

module Telnyx
  module Models
    module Conferences
      # @see Telnyx::Resources::Conferences::Actions#play
      class ActionPlayParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute audio_url
        #   The URL of a file to be played back in the conference. media_name and audio_url
        #   cannot be used together in one request.
        #
        #   @return [String, nil]
        optional :audio_url, String

        # @!attribute call_control_ids
        #   List of call control ids identifying participants the audio file should be
        #   played to. If not given, the audio file will be played to the entire conference.
        #
        #   @return [Array<String>, nil]
        optional :call_control_ids, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute loop_
        #   The number of times the audio file should be played. If supplied, the value must
        #   be an integer between 1 and 100, or the special string `infinity` for an endless
        #   loop.
        #
        #   @return [String, Integer, nil]
        optional :loop_, union: -> { Telnyx::Calls::Loopcount }, api_name: :loop

        # @!attribute media_name
        #   The media_name of a file to be played back in the conference. The media_name
        #   must point to a file previously uploaded to api.telnyx.com/v2/media by the same
        #   user/organization. The file must either be a WAV or MP3 file.
        #
        #   @return [String, nil]
        optional :media_name, String

        # @!method initialize(audio_url: nil, call_control_ids: nil, loop_: nil, media_name: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Conferences::ActionPlayParams} for more details.
        #
        #   @param audio_url [String] The URL of a file to be played back in the conference. media_name and audio_url
        #
        #   @param call_control_ids [Array<String>] List of call control ids identifying participants the audio file should be playe
        #
        #   @param loop_ [String, Integer] The number of times the audio file should be played. If supplied, the value must
        #
        #   @param media_name [String] The media_name of a file to be played back in the conference. The media_name mus
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
