# frozen_string_literal: true

module Telnyx
  module Models
    module Conferences
      # @see Telnyx::Resources::Conferences::Actions#mute
      class ActionMuteParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute call_control_ids
        #   Array of unique identifiers and tokens for controlling the call. When empty all
        #   participants will be muted.
        #
        #   @return [Array<String>, nil]
        optional :call_control_ids, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute region
        #   Region where the conference data is located. Defaults to the region defined in
        #   user's data locality settings (Europe or US).
        #
        #   @return [Symbol, Telnyx::Models::Conferences::ConferenceRegion, nil]
        optional :region, enum: -> { Telnyx::Conferences::ConferenceRegion }

        # @!method initialize(id:, call_control_ids: nil, region: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Conferences::ActionMuteParams} for more details.
        #
        #   @param id [String]
        #
        #   @param call_control_ids [Array<String>] Array of unique identifiers and tokens for controlling the call. When empty all
        #
        #   @param region [Symbol, Telnyx::Models::Conferences::ConferenceRegion] Region where the conference data is located. Defaults to the region defined in u
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
