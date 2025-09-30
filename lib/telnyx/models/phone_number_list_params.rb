# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PhoneNumbers#list
    class PhoneNumberListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally: filter[tag],
      #   filter[phone_number], filter[status], filter[country_iso_alpha2],
      #   filter[connection_id], filter[voice.connection_name],
      #   filter[voice.usage_payment_method], filter[billing_group_id],
      #   filter[emergency_address_id], filter[customer_reference], filter[number_type],
      #   filter[source]
      #
      #   @return [Telnyx::Models::PhoneNumberListParams::Filter, nil]
      optional :filter, -> { Telnyx::PhoneNumberListParams::Filter }

      # @!attribute page
      #   Consolidated page parameter (deepObject style). Originally: page[size],
      #   page[number]
      #
      #   @return [Telnyx::Models::PhoneNumberListParams::Page, nil]
      optional :page, -> { Telnyx::PhoneNumberListParams::Page }

      # @!attribute sort
      #   Specifies the sort order for results. If not given, results are sorted by
      #   created_at in descending order.
      #
      #   @return [Symbol, Telnyx::Models::PhoneNumberListParams::Sort, nil]
      optional :sort, enum: -> { Telnyx::PhoneNumberListParams::Sort }

      # @!method initialize(filter: nil, page: nil, sort: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::PhoneNumberListParams} for more details.
      #
      #   @param filter [Telnyx::Models::PhoneNumberListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[tag], filte
      #
      #   @param page [Telnyx::Models::PhoneNumberListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
      #
      #   @param sort [Symbol, Telnyx::Models::PhoneNumberListParams::Sort] Specifies the sort order for results. If not given, results are sorted by create
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute billing_group_id
        #   Filter by the billing_group_id associated with phone numbers. To filter to only
        #   phone numbers that have no billing group associated them, set the value of this
        #   filter to the string 'null'.
        #
        #   @return [String, nil]
        optional :billing_group_id, String

        # @!attribute connection_id
        #   Filter by connection_id.
        #
        #   @return [String, nil]
        optional :connection_id, String

        # @!attribute country_iso_alpha2
        #   Filter by phone number country ISO alpha-2 code. Can be a single value or an
        #   array of values.
        #
        #   @return [String, Array<String>, nil]
        optional :country_iso_alpha2, union: -> { Telnyx::PhoneNumberListParams::Filter::CountryISOAlpha2 }

        # @!attribute customer_reference
        #   Filter numbers via the customer_reference set.
        #
        #   @return [String, nil]
        optional :customer_reference, String

        # @!attribute emergency_address_id
        #   Filter by the emergency_address_id associated with phone numbers. To filter only
        #   phone numbers that have no emergency address associated with them, set the value
        #   of this filter to the string 'null'.
        #
        #   @return [String, nil]
        optional :emergency_address_id, String

        # @!attribute number_type
        #   Filter phone numbers by phone number type.
        #
        #   @return [Telnyx::Models::PhoneNumberListParams::Filter::NumberType, nil]
        optional :number_type, -> { Telnyx::PhoneNumberListParams::Filter::NumberType }

        # @!attribute phone_number
        #   Filter by phone number. Requires at least three digits. Non-numerical characters
        #   will result in no values being returned.
        #
        #   @return [String, nil]
        optional :phone_number, String

        # @!attribute source
        #   Filter phone numbers by their source. Use 'ported' for numbers ported from other
        #   carriers, or 'purchased' for numbers bought directly from Telnyx.
        #
        #   @return [Symbol, Telnyx::Models::PhoneNumberListParams::Filter::Source, nil]
        optional :source, enum: -> { Telnyx::PhoneNumberListParams::Filter::Source }

        # @!attribute status
        #   Filter by phone number status.
        #
        #   @return [Symbol, Telnyx::Models::PhoneNumberListParams::Filter::Status, nil]
        optional :status, enum: -> { Telnyx::PhoneNumberListParams::Filter::Status }

        # @!attribute tag
        #   Filter by phone number tags.
        #
        #   @return [String, nil]
        optional :tag, String

        # @!attribute voice_connection_name
        #   Filter by voice connection name pattern matching.
        #
        #   @return [Telnyx::Models::PhoneNumberListParams::Filter::VoiceConnectionName, nil]
        optional :voice_connection_name,
                 -> { Telnyx::PhoneNumberListParams::Filter::VoiceConnectionName },
                 api_name: :"voice.connection_name"

        # @!attribute voice_usage_payment_method
        #   Filter by usage_payment_method.
        #
        #   @return [Symbol, Telnyx::Models::PhoneNumberListParams::Filter::VoiceUsagePaymentMethod, nil]
        optional :voice_usage_payment_method,
                 enum: -> { Telnyx::PhoneNumberListParams::Filter::VoiceUsagePaymentMethod },
                 api_name: :"voice.usage_payment_method"

        # @!attribute without_tags
        #   When set to 'true', filters for phone numbers that do not have any tags applied.
        #   All other values are ignored.
        #
        #   @return [Symbol, Telnyx::Models::PhoneNumberListParams::Filter::WithoutTags, nil]
        optional :without_tags, enum: -> { Telnyx::PhoneNumberListParams::Filter::WithoutTags }

        # @!method initialize(billing_group_id: nil, connection_id: nil, country_iso_alpha2: nil, customer_reference: nil, emergency_address_id: nil, number_type: nil, phone_number: nil, source: nil, status: nil, tag: nil, voice_connection_name: nil, voice_usage_payment_method: nil, without_tags: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::PhoneNumberListParams::Filter} for more details.
        #
        #   Consolidated filter parameter (deepObject style). Originally: filter[tag],
        #   filter[phone_number], filter[status], filter[country_iso_alpha2],
        #   filter[connection_id], filter[voice.connection_name],
        #   filter[voice.usage_payment_method], filter[billing_group_id],
        #   filter[emergency_address_id], filter[customer_reference], filter[number_type],
        #   filter[source]
        #
        #   @param billing_group_id [String] Filter by the billing_group_id associated with phone numbers. To filter to only
        #
        #   @param connection_id [String] Filter by connection_id.
        #
        #   @param country_iso_alpha2 [String, Array<String>] Filter by phone number country ISO alpha-2 code. Can be a single value or an arr
        #
        #   @param customer_reference [String] Filter numbers via the customer_reference set.
        #
        #   @param emergency_address_id [String] Filter by the emergency_address_id associated with phone numbers. To filter only
        #
        #   @param number_type [Telnyx::Models::PhoneNumberListParams::Filter::NumberType] Filter phone numbers by phone number type.
        #
        #   @param phone_number [String] Filter by phone number. Requires at least three digits.
        #
        #   @param source [Symbol, Telnyx::Models::PhoneNumberListParams::Filter::Source] Filter phone numbers by their source. Use 'ported' for numbers ported from other
        #
        #   @param status [Symbol, Telnyx::Models::PhoneNumberListParams::Filter::Status] Filter by phone number status.
        #
        #   @param tag [String] Filter by phone number tags.
        #
        #   @param voice_connection_name [Telnyx::Models::PhoneNumberListParams::Filter::VoiceConnectionName] Filter by voice connection name pattern matching.
        #
        #   @param voice_usage_payment_method [Symbol, Telnyx::Models::PhoneNumberListParams::Filter::VoiceUsagePaymentMethod] Filter by usage_payment_method.
        #
        #   @param without_tags [Symbol, Telnyx::Models::PhoneNumberListParams::Filter::WithoutTags] When set to 'true', filters for phone numbers that do not have any tags applied.

        # Filter by phone number country ISO alpha-2 code. Can be a single value or an
        # array of values.
        #
        # @see Telnyx::Models::PhoneNumberListParams::Filter#country_iso_alpha2
        module CountryISOAlpha2
          extend Telnyx::Internal::Type::Union

          variant String

          variant -> { Telnyx::Models::PhoneNumberListParams::Filter::CountryISOAlpha2::StringArray }

          # @!method self.variants
          #   @return [Array(String, Array<String>)]

          # @type [Telnyx::Internal::Type::Converter]
          StringArray = Telnyx::Internal::Type::ArrayOf[String]
        end

        # @see Telnyx::Models::PhoneNumberListParams::Filter#number_type
        class NumberType < Telnyx::Internal::Type::BaseModel
          # @!attribute eq
          #   Filter phone numbers by phone number type.
          #
          #   @return [Symbol, Telnyx::Models::PhoneNumberListParams::Filter::NumberType::Eq, nil]
          optional :eq, enum: -> { Telnyx::PhoneNumberListParams::Filter::NumberType::Eq }

          # @!method initialize(eq: nil)
          #   Filter phone numbers by phone number type.
          #
          #   @param eq [Symbol, Telnyx::Models::PhoneNumberListParams::Filter::NumberType::Eq] Filter phone numbers by phone number type.

          # Filter phone numbers by phone number type.
          #
          # @see Telnyx::Models::PhoneNumberListParams::Filter::NumberType#eq
          module Eq
            extend Telnyx::Internal::Type::Enum

            LOCAL = :local
            NATIONAL = :national
            TOLL_FREE = :toll_free
            MOBILE = :mobile
            SHARED_COST = :shared_cost

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # Filter phone numbers by their source. Use 'ported' for numbers ported from other
        # carriers, or 'purchased' for numbers bought directly from Telnyx.
        #
        # @see Telnyx::Models::PhoneNumberListParams::Filter#source
        module Source
          extend Telnyx::Internal::Type::Enum

          PORTED = :ported
          PURCHASED = :purchased

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Filter by phone number status.
        #
        # @see Telnyx::Models::PhoneNumberListParams::Filter#status
        module Status
          extend Telnyx::Internal::Type::Enum

          PURCHASE_PENDING = :"purchase-pending"
          PURCHASE_FAILED = :"purchase-failed"
          PORT_PENDING = :"port-pending"
          ACTIVE = :active
          DELETED = :deleted
          PORT_FAILED = :"port-failed"
          EMERGENCY_ONLY = :"emergency-only"
          PORTED_OUT = :"ported-out"
          PORT_OUT_PENDING = :"port-out-pending"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::PhoneNumberListParams::Filter#voice_connection_name
        class VoiceConnectionName < Telnyx::Internal::Type::BaseModel
          # @!attribute contains
          #   Filter contains connection name. Requires at least three characters.
          #
          #   @return [String, nil]
          optional :contains, String

          # @!attribute ends_with
          #   Filter ends with connection name. Requires at least three characters.
          #
          #   @return [String, nil]
          optional :ends_with, String

          # @!attribute eq
          #   Filter by connection name.
          #
          #   @return [String, nil]
          optional :eq, String

          # @!attribute starts_with
          #   Filter starts with connection name. Requires at least three characters.
          #
          #   @return [String, nil]
          optional :starts_with, String

          # @!method initialize(contains: nil, ends_with: nil, eq: nil, starts_with: nil)
          #   Filter by voice connection name pattern matching.
          #
          #   @param contains [String] Filter contains connection name. Requires at least three characters.
          #
          #   @param ends_with [String] Filter ends with connection name. Requires at least three characters.
          #
          #   @param eq [String] Filter by connection name.
          #
          #   @param starts_with [String] Filter starts with connection name. Requires at least three characters.
        end

        # Filter by usage_payment_method.
        #
        # @see Telnyx::Models::PhoneNumberListParams::Filter#voice_usage_payment_method
        module VoiceUsagePaymentMethod
          extend Telnyx::Internal::Type::Enum

          PAY_PER_MINUTE = :"pay-per-minute"
          CHANNEL = :channel

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # When set to 'true', filters for phone numbers that do not have any tags applied.
        # All other values are ignored.
        #
        # @see Telnyx::Models::PhoneNumberListParams::Filter#without_tags
        module WithoutTags
          extend Telnyx::Internal::Type::Enum

          TRUE = :true
          FALSE = :false

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
        #   Consolidated page parameter (deepObject style). Originally: page[size],
        #   page[number]
        #
        #   @param number [Integer] The page number to load
        #
        #   @param size [Integer] The size of the page
      end

      # Specifies the sort order for results. If not given, results are sorted by
      # created_at in descending order.
      module Sort
        extend Telnyx::Internal::Type::Enum

        PURCHASED_AT = :purchased_at
        PHONE_NUMBER = :phone_number
        CONNECTION_NAME = :connection_name
        USAGE_PAYMENT_METHOD = :usage_payment_method

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
