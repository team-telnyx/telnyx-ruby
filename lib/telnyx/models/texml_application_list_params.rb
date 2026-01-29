# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::TexmlApplications#list
    class TexmlApplicationListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally:
      #   filter[outbound_voice_profile_id], filter[friendly_name]
      #
      #   @return [Telnyx::Models::TexmlApplicationListParams::Filter, nil]
      optional :filter, -> { Telnyx::TexmlApplicationListParams::Filter }

      # @!attribute page
      #   Consolidated page parameter (deepObject style). Originally: page[size],
      #   page[number]
      #
      #   @return [Telnyx::Models::TexmlApplicationListParams::Page, nil]
      optional :page, -> { Telnyx::TexmlApplicationListParams::Page }

      # @!attribute sort
      #   Specifies the sort order for results. By default sorting direction is ascending.
      #   To have the results sorted in descending order add the <code> -</code>
      #   prefix.<br/><br/> That is: <ul>
      #
      #     <li>
      #       <code>friendly_name</code>: sorts the result by the
      #       <code>friendly_name</code> field in ascending order.
      #     </li>
      #
      #     <li>
      #       <code>-friendly_name</code>: sorts the result by the
      #       <code>friendly_name</code> field in descending order.
      #     </li>
      #   </ul> <br/> If not given, results are sorted by <code>created_at</code> in descending order.
      #
      #   @return [Symbol, Telnyx::Models::TexmlApplicationListParams::Sort, nil]
      optional :sort, enum: -> { Telnyx::TexmlApplicationListParams::Sort }

      # @!method initialize(filter: nil, page: nil, sort: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::TexmlApplicationListParams} for more details.
      #
      #   @param filter [Telnyx::Models::TexmlApplicationListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[outbound_vo
      #
      #   @param page [Telnyx::Models::TexmlApplicationListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
      #
      #   @param sort [Symbol, Telnyx::Models::TexmlApplicationListParams::Sort] Specifies the sort order for results. By default sorting direction is ascending.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute friendly_name
        #   If present, applications with <code>friendly_name</code> containing the given
        #   value will be returned. Matching is not case-sensitive. Requires at least three
        #   characters.
        #
        #   @return [String, nil]
        optional :friendly_name, String

        # @!attribute outbound_voice_profile_id
        #   Identifies the associated outbound voice profile.
        #
        #   @return [String, nil]
        optional :outbound_voice_profile_id, String

        # @!method initialize(friendly_name: nil, outbound_voice_profile_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::TexmlApplicationListParams::Filter} for more details.
        #
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[outbound_voice_profile_id], filter[friendly_name]
        #
        #   @param friendly_name [String] If present, applications with <code>friendly_name</code> containing the given va
        #
        #   @param outbound_voice_profile_id [String] Identifies the associated outbound voice profile.
      end

      class Page < Telnyx::Internal::Type::BaseModel
        # @!attribute number
        #   The page number to load
        #
        #   @return [Integer, nil]
        optional :number, Integer

        # @!attribute size
        #   The size of the page
        #
        #   @return [Integer, nil]
        optional :size, Integer

        # @!method initialize(number: nil, size: nil)
        #   Consolidated page parameter (deepObject style). Originally: page[size],
        #   page[number]
        #
        #   @param number [Integer] The page number to load
        #
        #   @param size [Integer] The size of the page
      end

      # Specifies the sort order for results. By default sorting direction is ascending.
      # To have the results sorted in descending order add the <code> -</code>
      # prefix.<br/><br/> That is: <ul>
      #
      #   <li>
      #     <code>friendly_name</code>: sorts the result by the
      #     <code>friendly_name</code> field in ascending order.
      #   </li>
      #
      #   <li>
      #     <code>-friendly_name</code>: sorts the result by the
      #     <code>friendly_name</code> field in descending order.
      #   </li>
      # </ul> <br/> If not given, results are sorted by <code>created_at</code> in descending order.
      module Sort
        extend Telnyx::Internal::Type::Enum

        CREATED_AT = :created_at
        FRIENDLY_NAME = :friendly_name
        ACTIVE = :active

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
