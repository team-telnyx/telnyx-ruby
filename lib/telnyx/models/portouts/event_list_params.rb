# frozen_string_literal: true

module Telnyx
  module Models
    module Portouts
      # @see Telnyx::Resources::Portouts::Events#list
      class EventListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute filter
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[event_type], filter[portout_id], filter[created_at]
        #
        #   @return [Telnyx::Models::Portouts::EventListParams::Filter, nil]
        optional :filter, -> { Telnyx::Portouts::EventListParams::Filter }

        # @!attribute page
        #   Consolidated page parameter (deepObject style). Originally: page[number],
        #   page[size]
        #
        #   @return [Telnyx::Models::Portouts::EventListParams::Page, nil]
        optional :page, -> { Telnyx::Portouts::EventListParams::Page }

        # @!method initialize(filter: nil, page: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Portouts::EventListParams} for more details.
        #
        #   @param filter [Telnyx::Models::Portouts::EventListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[event_type]
        #
        #   @param page [Telnyx::Models::Portouts::EventListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class Filter < Telnyx::Internal::Type::BaseModel
          # @!attribute created_at
          #   Filter by created_at date range using nested operations
          #
          #   @return [Telnyx::Models::Portouts::EventListParams::Filter::CreatedAt, nil]
          optional :created_at, -> { Telnyx::Portouts::EventListParams::Filter::CreatedAt }

          # @!attribute event_type
          #   Filter by event type.
          #
          #   @return [Symbol, Telnyx::Models::Portouts::EventListParams::Filter::EventType, nil]
          optional :event_type, enum: -> { Telnyx::Portouts::EventListParams::Filter::EventType }

          # @!attribute portout_id
          #   Filter by port-out order ID.
          #
          #   @return [String, nil]
          optional :portout_id, String

          # @!method initialize(created_at: nil, event_type: nil, portout_id: nil)
          #   Consolidated filter parameter (deepObject style). Originally:
          #   filter[event_type], filter[portout_id], filter[created_at]
          #
          #   @param created_at [Telnyx::Models::Portouts::EventListParams::Filter::CreatedAt] Filter by created_at date range using nested operations
          #
          #   @param event_type [Symbol, Telnyx::Models::Portouts::EventListParams::Filter::EventType] Filter by event type.
          #
          #   @param portout_id [String] Filter by port-out order ID.

          # @see Telnyx::Models::Portouts::EventListParams::Filter#created_at
          class CreatedAt < Telnyx::Internal::Type::BaseModel
            # @!attribute gte
            #   Filter by created at greater than or equal to.
            #
            #   @return [Time, nil]
            optional :gte, Time

            # @!attribute lte
            #   Filter by created at less than or equal to.
            #
            #   @return [Time, nil]
            optional :lte, Time

            # @!method initialize(gte: nil, lte: nil)
            #   Filter by created_at date range using nested operations
            #
            #   @param gte [Time] Filter by created at greater than or equal to.
            #
            #   @param lte [Time] Filter by created at less than or equal to.
          end

          # Filter by event type.
          #
          # @see Telnyx::Models::Portouts::EventListParams::Filter#event_type
          module EventType
            extend Telnyx::Internal::Type::Enum

            PORTOUT_STATUS_CHANGED = :"portout.status_changed"
            PORTOUT_NEW_COMMENT = :"portout.new_comment"
            PORTOUT_FOC_DATE_CHANGED = :"portout.foc_date_changed"

            # @!method self.values
            #   @return [Array<Symbol>]
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
      end
    end
  end
end
