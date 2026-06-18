# frozen_string_literal: true

module Telnyx
  module Models
    module Conferences
      # @see Telnyx::Resources::Conferences::Actions#unhold
      class ActionUnholdParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute call_control_ids
        #   List of unique identifiers and tokens for controlling the call. Enter each call
        #   control ID to be unheld.
        #
        #   @return [Array<String>]
        required :call_control_ids, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute region
        #   Region where the conference data is located. Defaults to the region defined in
        #   user's data locality settings (Europe or US).
        #
        #   @return [Symbol, Telnyx::Models::Conferences::ConferenceRegion, nil]
        optional :region, enum: -> { Telnyx::Conferences::ConferenceRegion }

        # @!method initialize(id:, call_control_ids:, region: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Conferences::ActionUnholdParams} for more details.
        #
        #   @param id [String]
        #
        #   @param call_control_ids [Array<String>] List of unique identifiers and tokens for controlling the call. Enter each call
        #
        #   @param region [Symbol, Telnyx::Models::Conferences::ConferenceRegion] Region where the conference data is located. Defaults to the region defined in u
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
