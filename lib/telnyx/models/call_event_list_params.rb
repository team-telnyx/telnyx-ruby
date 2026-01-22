# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::CallEvents#list
    class CallEventListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally:
      #   filter[application_name][contains], filter[outbound.outbound_voice_profile_id],
      #   filter[leg_id], filter[application_session_id], filter[connection_id],
      #   filter[product], filter[failed], filter[from], filter[to], filter[name],
      #   filter[type], filter[occurred_at][eq/gt/gte/lt/lte], filter[status]
      #
      #   @return [Telnyx::Models::CallEventListParams::Filter, nil]
      optional :filter, -> { Telnyx::CallEventListParams::Filter }

      # @!attribute page
      #   Consolidated page parameter (deepObject style). Originally: page[after],
      #   page[before], page[limit], page[size], page[number]
      #
      #   @return [Telnyx::Models::CallEventListParams::Page, nil]
      optional :page, -> { Telnyx::CallEventListParams::Page }

      # @!attribute page_number
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!method initialize(filter: nil, page: nil, page_number: nil, page_size: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::CallEventListParams} for more details.
      #
      #   @param filter [Telnyx::Models::CallEventListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[application
      #
      #   @param page [Telnyx::Models::CallEventListParams::Page] Consolidated page parameter (deepObject style). Originally: page[after], page[be
      #
      #   @param page_number [Integer]
      #
      #   @param page_size [Integer]
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute application_name
        #   Application name filters
        #
        #   @return [Telnyx::Models::CallEventListParams::Filter::ApplicationName, nil]
        optional :application_name, -> { Telnyx::CallEventListParams::Filter::ApplicationName }

        # @!attribute application_session_id
        #   The unique identifier of the call session. A session may include multiple call
        #   leg events.
        #
        #   @return [String, nil]
        optional :application_session_id, String

        # @!attribute connection_id
        #   The unique identifier of the conection.
        #
        #   @return [String, nil]
        optional :connection_id, String

        # @!attribute failed
        #   Delivery failed or not.
        #
        #   @return [Boolean, nil]
        optional :failed, Telnyx::Internal::Type::Boolean

        # @!attribute from
        #   Filter by From number.
        #
        #   @return [String, nil]
        optional :from, String

        # @!attribute leg_id
        #   The unique identifier of an individual call leg.
        #
        #   @return [String, nil]
        optional :leg_id, String

        # @!attribute name
        #   If present, conferences will be filtered to those with a matching `name`
        #   attribute. Matching is case-sensitive
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute occurred_at
        #   Event occurred_at filters
        #
        #   @return [Telnyx::Models::CallEventListParams::Filter::OccurredAt, nil]
        optional :occurred_at, -> { Telnyx::CallEventListParams::Filter::OccurredAt }

        # @!attribute outbound_outbound_voice_profile_id
        #   Identifies the associated outbound voice profile.
        #
        #   @return [String, nil]
        optional :outbound_outbound_voice_profile_id, String, api_name: :"outbound.outbound_voice_profile_id"

        # @!attribute product
        #   Filter by product.
        #
        #   @return [Symbol, Telnyx::Models::CallEventListParams::Filter::Product, nil]
        optional :product, enum: -> { Telnyx::CallEventListParams::Filter::Product }

        # @!attribute status
        #   If present, conferences will be filtered by status.
        #
        #   @return [Symbol, Telnyx::Models::CallEventListParams::Filter::Status, nil]
        optional :status, enum: -> { Telnyx::CallEventListParams::Filter::Status }

        # @!attribute to
        #   Filter by To number.
        #
        #   @return [String, nil]
        optional :to, String

        # @!attribute type
        #   Event type
        #
        #   @return [Symbol, Telnyx::Models::CallEventListParams::Filter::Type, nil]
        optional :type, enum: -> { Telnyx::CallEventListParams::Filter::Type }

        # @!method initialize(application_name: nil, application_session_id: nil, connection_id: nil, failed: nil, from: nil, leg_id: nil, name: nil, occurred_at: nil, outbound_outbound_voice_profile_id: nil, product: nil, status: nil, to: nil, type: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::CallEventListParams::Filter} for more details.
        #
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[application_name][contains], filter[outbound.outbound_voice_profile_id],
        #   filter[leg_id], filter[application_session_id], filter[connection_id],
        #   filter[product], filter[failed], filter[from], filter[to], filter[name],
        #   filter[type], filter[occurred_at][eq/gt/gte/lt/lte], filter[status]
        #
        #   @param application_name [Telnyx::Models::CallEventListParams::Filter::ApplicationName] Application name filters
        #
        #   @param application_session_id [String] The unique identifier of the call session. A session may include multiple call l
        #
        #   @param connection_id [String] The unique identifier of the conection.
        #
        #   @param failed [Boolean] Delivery failed or not.
        #
        #   @param from [String] Filter by From number.
        #
        #   @param leg_id [String] The unique identifier of an individual call leg.
        #
        #   @param name [String] If present, conferences will be filtered to those with a matching `name` attribu
        #
        #   @param occurred_at [Telnyx::Models::CallEventListParams::Filter::OccurredAt] Event occurred_at filters
        #
        #   @param outbound_outbound_voice_profile_id [String] Identifies the associated outbound voice profile.
        #
        #   @param product [Symbol, Telnyx::Models::CallEventListParams::Filter::Product] Filter by product.
        #
        #   @param status [Symbol, Telnyx::Models::CallEventListParams::Filter::Status] If present, conferences will be filtered by status.
        #
        #   @param to [String] Filter by To number.
        #
        #   @param type [Symbol, Telnyx::Models::CallEventListParams::Filter::Type] Event type

        # @see Telnyx::Models::CallEventListParams::Filter#application_name
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
          #   {Telnyx::Models::CallEventListParams::Filter::ApplicationName} for more details.
          #
          #   Application name filters
          #
          #   @param contains [String] If present, applications with <code>application_name</code> containing the given
        end

        # @see Telnyx::Models::CallEventListParams::Filter#occurred_at
        class OccurredAt < Telnyx::Internal::Type::BaseModel
          # @!attribute eq
          #   Event occurred_at: equal
          #
          #   @return [String, nil]
          optional :eq, String

          # @!attribute gt
          #   Event occurred_at: greater than
          #
          #   @return [String, nil]
          optional :gt, String

          # @!attribute gte
          #   Event occurred_at: greater than or equal
          #
          #   @return [String, nil]
          optional :gte, String

          # @!attribute lt
          #   Event occurred_at: lower than
          #
          #   @return [String, nil]
          optional :lt, String

          # @!attribute lte
          #   Event occurred_at: lower than or equal
          #
          #   @return [String, nil]
          optional :lte, String

          # @!method initialize(eq: nil, gt: nil, gte: nil, lt: nil, lte: nil)
          #   Event occurred_at filters
          #
          #   @param eq [String] Event occurred_at: equal
          #
          #   @param gt [String] Event occurred_at: greater than
          #
          #   @param gte [String] Event occurred_at: greater than or equal
          #
          #   @param lt [String] Event occurred_at: lower than
          #
          #   @param lte [String] Event occurred_at: lower than or equal
        end

        # Filter by product.
        #
        # @see Telnyx::Models::CallEventListParams::Filter#product
        module Product
          extend Telnyx::Internal::Type::Enum

          CALL_CONTROL = :call_control
          FAX = :fax
          TEXML = :texml

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # If present, conferences will be filtered by status.
        #
        # @see Telnyx::Models::CallEventListParams::Filter#status
        module Status
          extend Telnyx::Internal::Type::Enum

          INIT = :init
          IN_PROGRESS = :in_progress
          COMPLETED = :completed

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Event type
        #
        # @see Telnyx::Models::CallEventListParams::Filter#type
        module Type
          extend Telnyx::Internal::Type::Enum

          COMMAND = :command
          WEBHOOK = :webhook

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class Page < Telnyx::Internal::Type::BaseModel
        # @!attribute after
        #   Opaque identifier of next page
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute before
        #   Opaque identifier of previous page
        #
        #   @return [String, nil]
        optional :before, String

        # @!attribute limit
        #   Limit of records per single page
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!method initialize(after: nil, before: nil, limit: nil)
        #   Consolidated page parameter (deepObject style). Originally: page[after],
        #   page[before], page[limit], page[size], page[number]
        #
        #   @param after [String] Opaque identifier of next page
        #
        #   @param before [String] Opaque identifier of previous page
        #
        #   @param limit [Integer] Limit of records per single page
      end
    end
  end
end
