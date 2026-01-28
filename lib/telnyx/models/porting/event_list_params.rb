# frozen_string_literal: true

module Telnyx
  module Models
    module Porting
      # @see Telnyx::Resources::Porting::Events#list
      class EventListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute filter
        #   Consolidated filter parameter (deepObject style). Originally: filter[type],
        #   filter[porting_order_id], filter[created_at][gte], filter[created_at][lte]
        #
        #   @return [Telnyx::Models::Porting::EventListParams::Filter, nil]
        optional :filter, -> { Telnyx::Porting::EventListParams::Filter }

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
        #   {Telnyx::Models::Porting::EventListParams} for more details.
        #
        #   @param filter [Telnyx::Models::Porting::EventListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[type], filt
        #
        #   @param page_number [Integer]
        #
        #   @param page_size [Integer]
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class Filter < Telnyx::Internal::Type::BaseModel
          # @!attribute created_at
          #   Created at date range filtering operations
          #
          #   @return [Telnyx::Models::Porting::EventListParams::Filter::CreatedAt, nil]
          optional :created_at, -> { Telnyx::Porting::EventListParams::Filter::CreatedAt }

          # @!attribute porting_order_id
          #   Filter by porting order ID.
          #
          #   @return [String, nil]
          optional :porting_order_id, String

          # @!attribute type
          #   Filter by event type.
          #
          #   @return [Symbol, Telnyx::Models::Porting::EventListParams::Filter::Type, nil]
          optional :type, enum: -> { Telnyx::Porting::EventListParams::Filter::Type }

          # @!method initialize(created_at: nil, porting_order_id: nil, type: nil)
          #   Consolidated filter parameter (deepObject style). Originally: filter[type],
          #   filter[porting_order_id], filter[created_at][gte], filter[created_at][lte]
          #
          #   @param created_at [Telnyx::Models::Porting::EventListParams::Filter::CreatedAt] Created at date range filtering operations
          #
          #   @param porting_order_id [String] Filter by porting order ID.
          #
          #   @param type [Symbol, Telnyx::Models::Porting::EventListParams::Filter::Type] Filter by event type.

          # @see Telnyx::Models::Porting::EventListParams::Filter#created_at
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
            #   Created at date range filtering operations
            #
            #   @param gte [Time] Filter by created at greater than or equal to.
            #
            #   @param lte [Time] Filter by created at less than or equal to.
          end

          # Filter by event type.
          #
          # @see Telnyx::Models::Porting::EventListParams::Filter#type
          module Type
            extend Telnyx::Internal::Type::Enum

            PORTING_ORDER_DELETED = :"porting_order.deleted"
            PORTING_ORDER_LOA_UPDATED = :"porting_order.loa_updated"
            PORTING_ORDER_MESSAGING_CHANGED = :"porting_order.messaging_changed"
            PORTING_ORDER_STATUS_CHANGED = :"porting_order.status_changed"
            PORTING_ORDER_SHARING_TOKEN_EXPIRED = :"porting_order.sharing_token_expired"
            PORTING_ORDER_NEW_COMMENT = :"porting_order.new_comment"
            PORTING_ORDER_SPLIT = :"porting_order.split"

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
