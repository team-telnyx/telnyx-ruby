# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PortingOrders#list
    class PortingOrderListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally:
      #   filter[customer_reference], filter[customer_group_reference],
      #   filter[parent_support_key], filter[phone_numbers.country_code],
      #   filter[phone_numbers.carrier_name], filter[misc.type],
      #   filter[end_user.admin.entity_name], filter[end_user.admin.auth_person_name],
      #   filter[activation_settings.fast_port_eligible],
      #   filter[activation_settings.foc_datetime_requested][gt],
      #   filter[activation_settings.foc_datetime_requested][lt],
      #   filter[phone_numbers.phone_number][contains]
      #
      #   @return [Telnyx::Models::PortingOrderListParams::Filter, nil]
      optional :filter, -> { Telnyx::PortingOrderListParams::Filter }

      # @!attribute include_phone_numbers
      #   Include the first 50 phone number objects in the results
      #
      #   @return [Boolean, nil]
      optional :include_phone_numbers, Telnyx::Internal::Type::Boolean

      # @!attribute page
      #   Consolidated page parameter (deepObject style). Originally: page[size],
      #   page[number]
      #
      #   @return [Telnyx::Models::PortingOrderListParams::Page, nil]
      optional :page, -> { Telnyx::PortingOrderListParams::Page }

      # @!attribute sort
      #   Consolidated sort parameter (deepObject style). Originally: sort[value]
      #
      #   @return [Telnyx::Models::PortingOrderListParams::Sort, nil]
      optional :sort, -> { Telnyx::PortingOrderListParams::Sort }

      # @!method initialize(filter: nil, include_phone_numbers: nil, page: nil, sort: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::PortingOrderListParams} for more details.
      #
      #   @param filter [Telnyx::Models::PortingOrderListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[customer_re
      #
      #   @param include_phone_numbers [Boolean] Include the first 50 phone number objects in the results
      #
      #   @param page [Telnyx::Models::PortingOrderListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
      #
      #   @param sort [Telnyx::Models::PortingOrderListParams::Sort] Consolidated sort parameter (deepObject style). Originally: sort[value]
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute activation_settings
        #
        #   @return [Telnyx::Models::PortingOrderListParams::Filter::ActivationSettings, nil]
        optional :activation_settings, -> { Telnyx::PortingOrderListParams::Filter::ActivationSettings }

        # @!attribute customer_group_reference
        #   Filter results by customer_group_reference
        #
        #   @return [String, nil]
        optional :customer_group_reference, String

        # @!attribute customer_reference
        #   Filter results by customer_reference
        #
        #   @return [String, nil]
        optional :customer_reference, String

        # @!attribute end_user
        #
        #   @return [Telnyx::Models::PortingOrderListParams::Filter::EndUser, nil]
        optional :end_user, -> { Telnyx::PortingOrderListParams::Filter::EndUser }

        # @!attribute misc
        #
        #   @return [Telnyx::Models::PortingOrderListParams::Filter::Misc, nil]
        optional :misc, -> { Telnyx::PortingOrderListParams::Filter::Misc }

        # @!attribute parent_support_key
        #   Filter results by parent_support_key
        #
        #   @return [String, nil]
        optional :parent_support_key, String

        # @!attribute phone_numbers
        #
        #   @return [Telnyx::Models::PortingOrderListParams::Filter::PhoneNumbers, nil]
        optional :phone_numbers, -> { Telnyx::PortingOrderListParams::Filter::PhoneNumbers }

        # @!method initialize(activation_settings: nil, customer_group_reference: nil, customer_reference: nil, end_user: nil, misc: nil, parent_support_key: nil, phone_numbers: nil)
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[customer_reference], filter[customer_group_reference],
        #   filter[parent_support_key], filter[phone_numbers.country_code],
        #   filter[phone_numbers.carrier_name], filter[misc.type],
        #   filter[end_user.admin.entity_name], filter[end_user.admin.auth_person_name],
        #   filter[activation_settings.fast_port_eligible],
        #   filter[activation_settings.foc_datetime_requested][gt],
        #   filter[activation_settings.foc_datetime_requested][lt],
        #   filter[phone_numbers.phone_number][contains]
        #
        #   @param activation_settings [Telnyx::Models::PortingOrderListParams::Filter::ActivationSettings]
        #
        #   @param customer_group_reference [String] Filter results by customer_group_reference
        #
        #   @param customer_reference [String] Filter results by customer_reference
        #
        #   @param end_user [Telnyx::Models::PortingOrderListParams::Filter::EndUser]
        #
        #   @param misc [Telnyx::Models::PortingOrderListParams::Filter::Misc]
        #
        #   @param parent_support_key [String] Filter results by parent_support_key
        #
        #   @param phone_numbers [Telnyx::Models::PortingOrderListParams::Filter::PhoneNumbers]

        # @see Telnyx::Models::PortingOrderListParams::Filter#activation_settings
        class ActivationSettings < Telnyx::Internal::Type::BaseModel
          # @!attribute fast_port_eligible
          #   Filter results by fast port eligible
          #
          #   @return [Boolean, nil]
          optional :fast_port_eligible, Telnyx::Internal::Type::Boolean

          # @!attribute foc_datetime_requested
          #   FOC datetime range filtering operations
          #
          #   @return [Telnyx::Models::PortingOrderListParams::Filter::ActivationSettings::FocDatetimeRequested, nil]
          optional :foc_datetime_requested,
                   -> { Telnyx::PortingOrderListParams::Filter::ActivationSettings::FocDatetimeRequested }

          # @!method initialize(fast_port_eligible: nil, foc_datetime_requested: nil)
          #   @param fast_port_eligible [Boolean] Filter results by fast port eligible
          #
          #   @param foc_datetime_requested [Telnyx::Models::PortingOrderListParams::Filter::ActivationSettings::FocDatetimeRequested] FOC datetime range filtering operations

          # @see Telnyx::Models::PortingOrderListParams::Filter::ActivationSettings#foc_datetime_requested
          class FocDatetimeRequested < Telnyx::Internal::Type::BaseModel
            # @!attribute gt
            #   Filter results by foc date later than this value
            #
            #   @return [String, nil]
            optional :gt, String

            # @!attribute lt
            #   Filter results by foc date earlier than this value
            #
            #   @return [String, nil]
            optional :lt, String

            # @!method initialize(gt: nil, lt: nil)
            #   FOC datetime range filtering operations
            #
            #   @param gt [String] Filter results by foc date later than this value
            #
            #   @param lt [String] Filter results by foc date earlier than this value
          end
        end

        # @see Telnyx::Models::PortingOrderListParams::Filter#end_user
        class EndUser < Telnyx::Internal::Type::BaseModel
          # @!attribute admin
          #
          #   @return [Telnyx::Models::PortingOrderListParams::Filter::EndUser::Admin, nil]
          optional :admin, -> { Telnyx::PortingOrderListParams::Filter::EndUser::Admin }

          # @!method initialize(admin: nil)
          #   @param admin [Telnyx::Models::PortingOrderListParams::Filter::EndUser::Admin]

          # @see Telnyx::Models::PortingOrderListParams::Filter::EndUser#admin
          class Admin < Telnyx::Internal::Type::BaseModel
            # @!attribute auth_person_name
            #   Filter results by authorized person
            #
            #   @return [String, nil]
            optional :auth_person_name, String

            # @!attribute entity_name
            #   Filter results by person or company name
            #
            #   @return [String, nil]
            optional :entity_name, String

            # @!method initialize(auth_person_name: nil, entity_name: nil)
            #   @param auth_person_name [String] Filter results by authorized person
            #
            #   @param entity_name [String] Filter results by person or company name
          end
        end

        # @see Telnyx::Models::PortingOrderListParams::Filter#misc
        class Misc < Telnyx::Internal::Type::BaseModel
          # @!attribute type
          #   Filter results by porting order type
          #
          #   @return [Symbol, Telnyx::Models::PortingOrderType, nil]
          optional :type, enum: -> { Telnyx::PortingOrderType }

          # @!method initialize(type: nil)
          #   @param type [Symbol, Telnyx::Models::PortingOrderType] Filter results by porting order type
        end

        # @see Telnyx::Models::PortingOrderListParams::Filter#phone_numbers
        class PhoneNumbers < Telnyx::Internal::Type::BaseModel
          # @!attribute carrier_name
          #   Filter results by old service provider
          #
          #   @return [String, nil]
          optional :carrier_name, String

          # @!attribute country_code
          #   Filter results by country ISO 3166-1 alpha-2 code
          #
          #   @return [String, nil]
          optional :country_code, String

          # @!attribute phone_number
          #   Phone number pattern filtering operations
          #
          #   @return [Telnyx::Models::PortingOrderListParams::Filter::PhoneNumbers::PhoneNumber, nil]
          optional :phone_number, -> { Telnyx::PortingOrderListParams::Filter::PhoneNumbers::PhoneNumber }

          # @!method initialize(carrier_name: nil, country_code: nil, phone_number: nil)
          #   @param carrier_name [String] Filter results by old service provider
          #
          #   @param country_code [String] Filter results by country ISO 3166-1 alpha-2 code
          #
          #   @param phone_number [Telnyx::Models::PortingOrderListParams::Filter::PhoneNumbers::PhoneNumber] Phone number pattern filtering operations

          # @see Telnyx::Models::PortingOrderListParams::Filter::PhoneNumbers#phone_number
          class PhoneNumber < Telnyx::Internal::Type::BaseModel
            # @!attribute contains
            #   Filter results by full or partial phone_number
            #
            #   @return [String, nil]
            optional :contains, String

            # @!method initialize(contains: nil)
            #   Phone number pattern filtering operations
            #
            #   @param contains [String] Filter results by full or partial phone_number
          end
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
        #   Consolidated page parameter (deepObject style). Originally: page[size],
        #   page[number]
        #
        #   @param number [Integer] The page number to load
        #
        #   @param size [Integer] The size of the page
      end

      class Sort < Telnyx::Internal::Type::BaseModel
        # @!attribute value
        #   Specifies the sort order for results. If not given, results are sorted by
        #   created_at in descending order.
        #
        #   @return [Symbol, Telnyx::Models::PortingOrderListParams::Sort::Value, nil]
        optional :value, enum: -> { Telnyx::PortingOrderListParams::Sort::Value }

        # @!method initialize(value: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::PortingOrderListParams::Sort} for more details.
        #
        #   Consolidated sort parameter (deepObject style). Originally: sort[value]
        #
        #   @param value [Symbol, Telnyx::Models::PortingOrderListParams::Sort::Value] Specifies the sort order for results. If not given, results are sorted by create

        # Specifies the sort order for results. If not given, results are sorted by
        # created_at in descending order.
        #
        # @see Telnyx::Models::PortingOrderListParams::Sort#value
        module Value
          extend Telnyx::Internal::Type::Enum

          CREATED_AT = :created_at
          CREATED_AT_DESC = :"-created_at"
          ACTIVATION_SETTINGS_FOC_DATETIME_REQUESTED = :"activation_settings.foc_datetime_requested"
          ACTIVATION_SETTINGS_FOC_DATETIME_REQUESTED_DESC = :"-activation_settings.foc_datetime_requested"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
