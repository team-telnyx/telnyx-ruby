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

      # @!attribute page_number
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

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

      # @!method initialize(filter: nil, page_number: nil, page_size: nil, sort: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::TexmlApplicationListParams} for more details.
      #
      #   @param filter [Telnyx::Models::TexmlApplicationListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[outbound_vo
      #
      #   @param page_number [Integer]
      #
      #   @param page_size [Integer]
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
