# frozen_string_literal: true

module Telnyx
  module Models
    module PhoneNumbers
      # @see Telnyx::Resources::PhoneNumbers::Voice#list
      class VoiceListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute filter
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[phone_number], filter[connection_name], filter[customer_reference],
        #   filter[voice.usage_payment_method]
        #
        #   @return [Telnyx::Models::PhoneNumbers::VoiceListParams::Filter, nil]
        optional :filter, -> { Telnyx::PhoneNumbers::VoiceListParams::Filter }

        # @!attribute page
        #   Consolidated page parameter (deepObject style). Originally: page[size],
        #   page[number]
        #
        #   @return [Telnyx::Models::PhoneNumbers::VoiceListParams::Page, nil]
        optional :page, -> { Telnyx::PhoneNumbers::VoiceListParams::Page }

        # @!attribute sort
        #   Specifies the sort order for results. If not given, results are sorted by
        #   created_at in descending order.
        #
        #   @return [Symbol, Telnyx::Models::PhoneNumbers::VoiceListParams::Sort, nil]
        optional :sort, enum: -> { Telnyx::PhoneNumbers::VoiceListParams::Sort }

        # @!method initialize(filter: nil, page: nil, sort: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::PhoneNumbers::VoiceListParams} for more details.
        #
        #   @param filter [Telnyx::Models::PhoneNumbers::VoiceListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[phone_numbe
        #
        #   @param page [Telnyx::Models::PhoneNumbers::VoiceListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
        #
        #   @param sort [Symbol, Telnyx::Models::PhoneNumbers::VoiceListParams::Sort] Specifies the sort order for results. If not given, results are sorted by create
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class Filter < Telnyx::Internal::Type::BaseModel
          # @!attribute connection_name
          #   Filter by connection name pattern matching.
          #
          #   @return [Telnyx::Models::PhoneNumbers::VoiceListParams::Filter::ConnectionName, nil]
          optional :connection_name, -> { Telnyx::PhoneNumbers::VoiceListParams::Filter::ConnectionName }

          # @!attribute customer_reference
          #   Filter numbers via the customer_reference set.
          #
          #   @return [String, nil]
          optional :customer_reference, String

          # @!attribute phone_number
          #   Filter by phone number. Requires at least three digits. Non-numerical characters
          #   will result in no values being returned.
          #
          #   @return [String, nil]
          optional :phone_number, String

          # @!attribute voice_usage_payment_method
          #   Filter by usage_payment_method.
          #
          #   @return [Symbol, Telnyx::Models::PhoneNumbers::VoiceListParams::Filter::VoiceUsagePaymentMethod, nil]
          optional :voice_usage_payment_method,
                   enum: -> { Telnyx::PhoneNumbers::VoiceListParams::Filter::VoiceUsagePaymentMethod },
                   api_name: :"voice.usage_payment_method"

          # @!method initialize(connection_name: nil, customer_reference: nil, phone_number: nil, voice_usage_payment_method: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::PhoneNumbers::VoiceListParams::Filter} for more details.
          #
          #   Consolidated filter parameter (deepObject style). Originally:
          #   filter[phone_number], filter[connection_name], filter[customer_reference],
          #   filter[voice.usage_payment_method]
          #
          #   @param connection_name [Telnyx::Models::PhoneNumbers::VoiceListParams::Filter::ConnectionName] Filter by connection name pattern matching.
          #
          #   @param customer_reference [String] Filter numbers via the customer_reference set.
          #
          #   @param phone_number [String] Filter by phone number. Requires at least three digits.
          #
          #   @param voice_usage_payment_method [Symbol, Telnyx::Models::PhoneNumbers::VoiceListParams::Filter::VoiceUsagePaymentMethod] Filter by usage_payment_method.

          # @see Telnyx::Models::PhoneNumbers::VoiceListParams::Filter#connection_name
          class ConnectionName < Telnyx::Internal::Type::BaseModel
            # @!attribute contains
            #   Filter contains connection name. Requires at least three characters.
            #
            #   @return [String, nil]
            optional :contains, String

            # @!method initialize(contains: nil)
            #   Filter by connection name pattern matching.
            #
            #   @param contains [String] Filter contains connection name. Requires at least three characters.
          end

          # Filter by usage_payment_method.
          #
          # @see Telnyx::Models::PhoneNumbers::VoiceListParams::Filter#voice_usage_payment_method
          module VoiceUsagePaymentMethod
            extend Telnyx::Internal::Type::Enum

            PAY_PER_MINUTE = :"pay-per-minute"
            CHANNEL = :channel

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
end
