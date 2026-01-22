# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::FaxApplications#list
    class FaxApplicationListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally:
      #   filter[application_name][contains], filter[outbound_voice_profile_id]
      #
      #   @return [Telnyx::Models::FaxApplicationListParams::Filter, nil]
      optional :filter, -> { Telnyx::FaxApplicationListParams::Filter }

      # @!attribute page
      #   Consolidated page parameter (deepObject style). Originally: page[number],
      #   page[size]
      #
      #   @return [Telnyx::Models::FaxApplicationListParams::Page, nil]
      optional :page, -> { Telnyx::FaxApplicationListParams::Page }

      # @!attribute sort
      #   Specifies the sort order for results. By default sorting direction is ascending.
      #   To have the results sorted in descending order add the <code> -</code>
      #   prefix.<br/><br/> That is: <ul>
      #
      #     <li>
      #       <code>application_name</code>: sorts the result by the
      #       <code>application_name</code> field in ascending order.
      #     </li>
      #
      #     <li>
      #       <code>-application_name</code>: sorts the result by the
      #       <code>application_name</code> field in descending order.
      #     </li>
      #   </ul> <br/> If not given, results are sorted by <code>created_at</code> in descending order.
      #
      #   @return [Symbol, Telnyx::Models::FaxApplicationListParams::Sort, nil]
      optional :sort, enum: -> { Telnyx::FaxApplicationListParams::Sort }

      # @!method initialize(filter: nil, page: nil, sort: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::FaxApplicationListParams} for more details.
      #
      #   @param filter [Telnyx::Models::FaxApplicationListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[application
      #
      #   @param page [Telnyx::Models::FaxApplicationListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
      #
      #   @param sort [Symbol, Telnyx::Models::FaxApplicationListParams::Sort] Specifies the sort order for results. By default sorting direction is ascending.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute application_name
        #   Application name filtering operations
        #
        #   @return [Telnyx::Models::FaxApplicationListParams::Filter::ApplicationName, nil]
        optional :application_name, -> { Telnyx::FaxApplicationListParams::Filter::ApplicationName }

        # @!attribute outbound_voice_profile_id
        #   Identifies the associated outbound voice profile.
        #
        #   @return [String, nil]
        optional :outbound_voice_profile_id, String

        # @!method initialize(application_name: nil, outbound_voice_profile_id: nil)
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[application_name][contains], filter[outbound_voice_profile_id]
        #
        #   @param application_name [Telnyx::Models::FaxApplicationListParams::Filter::ApplicationName] Application name filtering operations
        #
        #   @param outbound_voice_profile_id [String] Identifies the associated outbound voice profile.

        # @see Telnyx::Models::FaxApplicationListParams::Filter#application_name
        class ApplicationName < Telnyx::Internal::Type::BaseModel
          # @!attribute contains
          #   If present, applications with <code>application_name</code> containing the given
          #   value will be returned. Matching is not case-sensitive. Requires at least three
          #   characters.
          #
          #   @return [String, nil]
          optional :contains, String

          # @!method initialize(contains: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::FaxApplicationListParams::Filter::ApplicationName} for more
          #   details.
          #
          #   Application name filtering operations
          #
          #   @param contains [String] If present, applications with <code>application_name</code> containing the given
        end
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
        #   Consolidated page parameter (deepObject style). Originally: page[number],
        #   page[size]
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
      #     <code>application_name</code>: sorts the result by the
      #     <code>application_name</code> field in ascending order.
      #   </li>
      #
      #   <li>
      #     <code>-application_name</code>: sorts the result by the
      #     <code>application_name</code> field in descending order.
      #   </li>
      # </ul> <br/> If not given, results are sorted by <code>created_at</code> in descending order.
      module Sort
        extend Telnyx::Internal::Type::Enum

        CREATED_AT = :created_at
        APPLICATION_NAME = :application_name
        ACTIVE = :active

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
