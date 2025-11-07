# frozen_string_literal: true

module Telnyx
  module Models
    module Conferences
      # @see Telnyx::Resources::Conferences::Actions#hold
      class ActionHoldParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute audio_url
        #   The URL of a file to be played to the participants when they are put on hold.
        #   media_name and audio_url cannot be used together in one request.
        #
        #   @return [String, nil]
        optional :audio_url, String

        # @!attribute call_control_ids
        #   List of unique identifiers and tokens for controlling the call. When empty all
        #   participants will be placed on hold.
        #
        #   @return [Array<String>, nil]
        optional :call_control_ids, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute media_name
        #   The media_name of a file to be played to the participants when they are put on
        #   hold. The media_name must point to a file previously uploaded to
        #   api.telnyx.com/v2/media by the same user/organization. The file must either be a
        #   WAV or MP3 file.
        #
        #   @return [String, nil]
        optional :media_name, String

        # @!attribute region
        #   Region where the conference data is located. Defaults to the region defined in
        #   user's data locality settings (Europe or US).
        #
        #   @return [Symbol, Telnyx::Models::Conferences::ActionHoldParams::Region, nil]
        optional :region, enum: -> { Telnyx::Conferences::ActionHoldParams::Region }

        # @!method initialize(audio_url: nil, call_control_ids: nil, media_name: nil, region: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Conferences::ActionHoldParams} for more details.
        #
        #   @param audio_url [String] The URL of a file to be played to the participants when they are put on hold. me
        #
        #   @param call_control_ids [Array<String>] List of unique identifiers and tokens for controlling the call. When empty all p
        #
        #   @param media_name [String] The media_name of a file to be played to the participants when they are put on h
        #
        #   @param region [Symbol, Telnyx::Models::Conferences::ActionHoldParams::Region] Region where the conference data is located. Defaults to the region defined in u
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Region where the conference data is located. Defaults to the region defined in
        # user's data locality settings (Europe or US).
        module Region
          extend Telnyx::Internal::Type::Enum

          AUSTRALIA = :Australia
          EUROPE = :Europe
          MIDDLE_EAST = :"Middle East"
          US = :US

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
