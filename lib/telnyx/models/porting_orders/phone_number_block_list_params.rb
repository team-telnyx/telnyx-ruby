# frozen_string_literal: true

module Telnyx
  module Models
    module PortingOrders
      # @see Telnyx::Resources::PortingOrders::PhoneNumberBlocks#list
      class PhoneNumberBlockListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute filter
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[porting_order_id], filter[support_key], filter[status],
        #   filter[phone_number], filter[activation_status], filter[portability_status]
        #
        #   @return [Telnyx::Models::PortingOrders::PhoneNumberBlockListParams::Filter, nil]
        optional :filter, -> { Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter }

        # @!attribute page_number
        #
        #   @return [Integer, nil]
        optional :page_number, Integer

        # @!attribute page_size
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!attribute sort
        #   Consolidated sort parameter (deepObject style). Originally: sort[value]
        #
        #   @return [Telnyx::Models::PortingOrders::PhoneNumberBlockListParams::Sort, nil]
        optional :sort, -> { Telnyx::PortingOrders::PhoneNumberBlockListParams::Sort }

        # @!method initialize(filter: nil, page_number: nil, page_size: nil, sort: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::PortingOrders::PhoneNumberBlockListParams} for more details.
        #
        #   @param filter [Telnyx::Models::PortingOrders::PhoneNumberBlockListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[porting_ord
        #
        #   @param page_number [Integer]
        #
        #   @param page_size [Integer]
        #
        #   @param sort [Telnyx::Models::PortingOrders::PhoneNumberBlockListParams::Sort] Consolidated sort parameter (deepObject style). Originally: sort[value]
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class Filter < Telnyx::Internal::Type::BaseModel
          # @!attribute activation_status
          #   Filter results by activation status
          #
          #   @return [Symbol, Telnyx::Models::PortingOrders::PhoneNumberBlockListParams::Filter::ActivationStatus, nil]
          optional :activation_status,
                   enum: -> { Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::ActivationStatus }

          # @!attribute phone_number
          #   Filter results by a list of phone numbers
          #
          #   @return [Array<String>, nil]
          optional :phone_number, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute portability_status
          #   Filter results by portability status
          #
          #   @return [Symbol, Telnyx::Models::PortingOrders::PhoneNumberBlockListParams::Filter::PortabilityStatus, nil]
          optional :portability_status,
                   enum: -> { Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::PortabilityStatus }

          # @!attribute porting_order_id
          #   Filter results by a list of porting order ids
          #
          #   @return [Array<String>, nil]
          optional :porting_order_id, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute status
          #   Filter porting orders by status(es). Originally: filter[status],
          #   filter[status][in][]
          #
          #   @return [Symbol, Telnyx::Models::PortingOrders::PhoneNumberBlockListParams::Filter::Status::PortingOrderSingleStatus, Array<Symbol, Telnyx::Models::PortingOrders::PhoneNumberBlockListParams::Filter::Status::UnionArrayVariant1>, nil]
          optional :status, union: -> { Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::Status }

          # @!attribute support_key
          #   Filter results by support key(s). Originally: filter[support_key][eq],
          #   filter[support_key][in][]
          #
          #   @return [String, Array<String>, nil]
          optional :support_key, union: -> { Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::SupportKey }

          # @!method initialize(activation_status: nil, phone_number: nil, portability_status: nil, porting_order_id: nil, status: nil, support_key: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::PortingOrders::PhoneNumberBlockListParams::Filter} for more
          #   details.
          #
          #   Consolidated filter parameter (deepObject style). Originally:
          #   filter[porting_order_id], filter[support_key], filter[status],
          #   filter[phone_number], filter[activation_status], filter[portability_status]
          #
          #   @param activation_status [Symbol, Telnyx::Models::PortingOrders::PhoneNumberBlockListParams::Filter::ActivationStatus] Filter results by activation status
          #
          #   @param phone_number [Array<String>] Filter results by a list of phone numbers
          #
          #   @param portability_status [Symbol, Telnyx::Models::PortingOrders::PhoneNumberBlockListParams::Filter::PortabilityStatus] Filter results by portability status
          #
          #   @param porting_order_id [Array<String>] Filter results by a list of porting order ids
          #
          #   @param status [Symbol, Telnyx::Models::PortingOrders::PhoneNumberBlockListParams::Filter::Status::PortingOrderSingleStatus, Array<Symbol, Telnyx::Models::PortingOrders::PhoneNumberBlockListParams::Filter::Status::UnionArrayVariant1>] Filter porting orders by status(es). Originally: filter[status], filter[status]
          #
          #   @param support_key [String, Array<String>] Filter results by support key(s). Originally: filter[support_key][eq], filter[su

          # Filter results by activation status
          #
          # @see Telnyx::Models::PortingOrders::PhoneNumberBlockListParams::Filter#activation_status
          module ActivationStatus
            extend Telnyx::Internal::Type::Enum

            NEW = :New
            PENDING = :Pending
            CONFLICT = :Conflict
            CANCEL_PENDING = :"Cancel Pending"
            FAILED = :Failed
            CONCURRED = :Concurred
            ACTIVATE_RDY = :"Activate RDY"
            DISCONNECT_PENDING = :"Disconnect Pending"
            CONCURRENCE_SENT = :"Concurrence Sent"
            OLD = :Old
            SENDING = :Sending
            ACTIVE = :Active
            CANCELLED = :Cancelled

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Filter results by portability status
          #
          # @see Telnyx::Models::PortingOrders::PhoneNumberBlockListParams::Filter#portability_status
          module PortabilityStatus
            extend Telnyx::Internal::Type::Enum

            PENDING = :pending
            CONFIRMED = :confirmed
            PROVISIONAL = :provisional

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Filter porting orders by status(es). Originally: filter[status],
          # filter[status][in][]
          #
          # @see Telnyx::Models::PortingOrders::PhoneNumberBlockListParams::Filter#status
          module Status
            extend Telnyx::Internal::Type::Union

            # Filter by single status
            variant enum: -> { Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::Status::PortingOrderSingleStatus }

            # Filter by multiple statuses (in operation)
            variant -> { Telnyx::Models::PortingOrders::PhoneNumberBlockListParams::Filter::Status::UnionArrayVariant1Array }

            # Filter by single status
            module PortingOrderSingleStatus
              extend Telnyx::Internal::Type::Enum

              DRAFT = :draft
              IN_PROCESS = :"in-process"
              SUBMITTED = :submitted
              EXCEPTION = :exception
              FOC_DATE_CONFIRMED = :"foc-date-confirmed"
              CANCEL_PENDING = :"cancel-pending"
              PORTED = :ported
              CANCELLED = :cancelled

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            module UnionArrayVariant1
              extend Telnyx::Internal::Type::Enum

              DRAFT = :draft
              IN_PROCESS = :"in-process"
              SUBMITTED = :submitted
              EXCEPTION = :exception
              FOC_DATE_CONFIRMED = :"foc-date-confirmed"
              CANCEL_PENDING = :"cancel-pending"
              PORTED = :ported
              CANCELLED = :cancelled

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @!method self.variants
            #   @return [Array(Symbol, Telnyx::Models::PortingOrders::PhoneNumberBlockListParams::Filter::Status::PortingOrderSingleStatus, Array<Symbol, Telnyx::Models::PortingOrders::PhoneNumberBlockListParams::Filter::Status::UnionArrayVariant1>)]

            # @type [Telnyx::Internal::Type::Converter]
            UnionArrayVariant1Array =
              Telnyx::Internal::Type::ArrayOf[enum: -> {
                Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::Status::UnionArrayVariant1
              }]
          end

          # Filter results by support key(s). Originally: filter[support_key][eq],
          # filter[support_key][in][]
          #
          # @see Telnyx::Models::PortingOrders::PhoneNumberBlockListParams::Filter#support_key
          module SupportKey
            extend Telnyx::Internal::Type::Union

            # Filter by exact support key match (eq operation)
            variant String

            # Filter by multiple support keys (in operation)
            variant -> { Telnyx::Models::PortingOrders::PhoneNumberBlockListParams::Filter::SupportKey::StringArray }

            # @!method self.variants
            #   @return [Array(String, Array<String>)]

            # @type [Telnyx::Internal::Type::Converter]
            StringArray = Telnyx::Internal::Type::ArrayOf[String]
          end
        end

        class Sort < Telnyx::Internal::Type::BaseModel
          # @!attribute value
          #   Specifies the sort order for results. If not given, results are sorted by
          #   created_at in descending order
          #
          #   @return [Symbol, Telnyx::Models::PortingOrders::PhoneNumberBlockListParams::Sort::Value, nil]
          optional :value, enum: -> { Telnyx::PortingOrders::PhoneNumberBlockListParams::Sort::Value }

          # @!method initialize(value: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::PortingOrders::PhoneNumberBlockListParams::Sort} for more
          #   details.
          #
          #   Consolidated sort parameter (deepObject style). Originally: sort[value]
          #
          #   @param value [Symbol, Telnyx::Models::PortingOrders::PhoneNumberBlockListParams::Sort::Value] Specifies the sort order for results. If not given, results are sorted by create

          # Specifies the sort order for results. If not given, results are sorted by
          # created_at in descending order
          #
          # @see Telnyx::Models::PortingOrders::PhoneNumberBlockListParams::Sort#value
          module Value
            extend Telnyx::Internal::Type::Enum

            CREATED_AT_DESC = :"-created_at"
            CREATED_AT = :created_at

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
