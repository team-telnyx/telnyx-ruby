# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::ShortCodes#list
    class ShortCodeListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally:
      #   filter[messaging_profile_id]
      #
      #   @return [Telnyx::Models::ShortCodeListParams::Filter, nil]
      optional :filter, -> { Telnyx::ShortCodeListParams::Filter }

      # @!attribute page_number
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!method initialize(filter: nil, page_number: nil, page_size: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::ShortCodeListParams} for more details.
      #
      #   @param filter [Telnyx::Models::ShortCodeListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[messaging_p
      #
      #   @param page_number [Integer]
      #
      #   @param page_size [Integer]
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute messaging_profile_id
        #   Filter by Messaging Profile ID. Use the string `null` for phone numbers without
        #   assigned profiles. A synonym for the `/messaging_profiles/{id}/short_codes`
        #   endpoint when querying about an extant profile.
        #
        #   @return [String, nil]
        optional :messaging_profile_id, String

        # @!method initialize(messaging_profile_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::ShortCodeListParams::Filter} for more details.
        #
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[messaging_profile_id]
        #
        #   @param messaging_profile_id [String] Filter by Messaging Profile ID. Use the string `null` for phone numbers without
      end
    end
  end
end
