# frozen_string_literal: true

module Telnyx
  module Models
    module PhoneNumbers
      # @see Telnyx::Resources::PhoneNumbers::Jobs#list
      class JobListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute filter
        #   Consolidated filter parameter (deepObject style). Originally: filter[type],
        #   filter[phone_number], filter[phone_number][], filter[status][]
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
        #   @param filter [Telnyx::Models::PhoneNumbers::JobListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[type], filt
        #
        #   @param page_number [Integer]
        #
        #   @param page_size [Integer]
        #
        #   @param sort [Symbol, Telnyx::Models::PhoneNumbers::JobListParams::Sort] Specifies the sort order for results. If not given, results are sorted by create
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class Filter < Telnyx::Internal::Type::BaseModel
          # @!attribute phone_number
          #   Returns jobs that targeted any of the supplied account-owned phone numbers.
          #   Values beginning with `+` must contain 1 to 20 digits after the plus sign. The
          #   10-value limit is enforced before duplicate values are removed. Unmatched or
          #   non-account-owned identifiers return an empty result. Phone-number filtering
          #   must be enabled for the account.
          #
          #   @return [String, Array<String>, nil]
          optional :phone_number, union: -> { Telnyx::PhoneNumbers::JobListParams::Filter::PhoneNumber }

          # @!attribute status
          #   Returns jobs with any of the supplied statuses. Use repeated `filter[status][]`
          #   parameters; scalar and comma-separated status values are not accepted.
          #
          #   @return [Array<Symbol, Telnyx::Models::PhoneNumbers::JobListParams::Filter::Status>, nil]
          optional :status,
                   -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::PhoneNumbers::JobListParams::Filter::Status] }

          # @!attribute type
          #   Identifies the type of the background job.
          #
          #   @return [Symbol, Telnyx::Models::PhoneNumbers::JobListParams::Filter::Type, nil]
          optional :type, enum: -> { Telnyx::PhoneNumbers::JobListParams::Filter::Type }

          # @!method initialize(phone_number: nil, status: nil, type: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::PhoneNumbers::JobListParams::Filter} for more details.
          #
          #   Consolidated filter parameter (deepObject style). Originally: filter[type],
          #   filter[phone_number], filter[phone_number][], filter[status][]
          #
          #   @param phone_number [String, Array<String>] Returns jobs that targeted any of the supplied account-owned phone numbers. Valu
          #
          #   @param status [Array<Symbol, Telnyx::Models::PhoneNumbers::JobListParams::Filter::Status>] Returns jobs with any of the supplied statuses. Use repeated `filter[status][]`
          #
          #   @param type [Symbol, Telnyx::Models::PhoneNumbers::JobListParams::Filter::Type] Identifies the type of the background job.

          # Returns jobs that targeted any of the supplied account-owned phone numbers.
          # Values beginning with `+` must contain 1 to 20 digits after the plus sign. The
          # 10-value limit is enforced before duplicate values are removed. Unmatched or
          # non-account-owned identifiers return an empty result. Phone-number filtering
          # must be enabled for the account.
          #
          # @see Telnyx::Models::PhoneNumbers::JobListParams::Filter#phone_number
          module PhoneNumber
            extend Telnyx::Internal::Type::Union

            # One E.164 phone number or Telnyx Phone Number ID, or a comma-separated list of up to 10 values.
            variant String

            # Up to 10 E.164 phone numbers or Telnyx Phone Number IDs. Use repeated `filter[phone_number][]` parameters.
            variant -> { Telnyx::Models::PhoneNumbers::JobListParams::Filter::PhoneNumber::StringArray }

            # @!method self.variants
            #   @return [Array(String, Array<String>)]

            # @type [Telnyx::Internal::Type::Converter]
            StringArray = Telnyx::Internal::Type::ArrayOf[String]
          end

          module Status
            extend Telnyx::Internal::Type::Enum

            PENDING = :pending
            IN_PROGRESS = :in_progress
            COMPLETED = :completed
            FAILED = :failed
            EXPIRED = :expired

            # @!method self.values
            #   @return [Array<Symbol>]
          end

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
