# frozen_string_literal: true

module Telnyx
  module Models
    module PhoneNumbers
      # @see Telnyx::Resources::PhoneNumbers::Jobs#list
      class JobListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute filter
        #   Consolidated filter parameter (deepObject style). Originally: filter[type]
        #
        #   @return [Telnyx::Models::PhoneNumbers::JobListParams::Filter, nil]
        optional :filter, -> { Telnyx::PhoneNumbers::JobListParams::Filter }

        # @!attribute page_number
        #
        #   @return [Integer, nil]
        optional :page_number, Integer

        # @!attribute page_size
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!attribute sort
        #   Specifies the sort order for results. If not given, results are sorted by
        #   created_at in descending order.
        #
        #   @return [Symbol, Telnyx::Models::PhoneNumbers::JobListParams::Sort, nil]
        optional :sort, enum: -> { Telnyx::PhoneNumbers::JobListParams::Sort }

        # @!method initialize(filter: nil, page_number: nil, page_size: nil, sort: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::PhoneNumbers::JobListParams} for more details.
        #
        #   @param filter [Telnyx::Models::PhoneNumbers::JobListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[type]
        #
        #   @param page_number [Integer]
        #
        #   @param page_size [Integer]
        #
        #   @param sort [Symbol, Telnyx::Models::PhoneNumbers::JobListParams::Sort] Specifies the sort order for results. If not given, results are sorted by create
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class Filter < Telnyx::Internal::Type::BaseModel
          # @!attribute type
          #   Identifies the type of the background job.
          #
          #   @return [Symbol, Telnyx::Models::PhoneNumbers::JobListParams::Filter::Type, nil]
          optional :type, enum: -> { Telnyx::PhoneNumbers::JobListParams::Filter::Type }

          # @!method initialize(type: nil)
          #   Consolidated filter parameter (deepObject style). Originally: filter[type]
          #
          #   @param type [Symbol, Telnyx::Models::PhoneNumbers::JobListParams::Filter::Type] Identifies the type of the background job.

          # Identifies the type of the background job.
          #
          # @see Telnyx::Models::PhoneNumbers::JobListParams::Filter#type
          module Type
            extend Telnyx::Internal::Type::Enum

            UPDATE_EMERGENCY_SETTINGS = :update_emergency_settings
            DELETE_PHONE_NUMBERS = :delete_phone_numbers
            UPDATE_PHONE_NUMBERS = :update_phone_numbers

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # Specifies the sort order for results. If not given, results are sorted by
        # created_at in descending order.
        module Sort
          extend Telnyx::Internal::Type::Enum

          CREATED_AT = :created_at

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
