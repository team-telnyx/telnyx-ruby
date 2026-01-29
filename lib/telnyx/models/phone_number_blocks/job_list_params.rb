# frozen_string_literal: true

module Telnyx
  module Models
    module PhoneNumberBlocks
      # @see Telnyx::Resources::PhoneNumberBlocks::Jobs#list
      class JobListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute filter
        #   Consolidated filter parameter (deepObject style). Originally: filter[type],
        #   filter[status]
        #
        #   @return [Telnyx::Models::PhoneNumberBlocks::JobListParams::Filter, nil]
        optional :filter, -> { Telnyx::PhoneNumberBlocks::JobListParams::Filter }

        # @!attribute page
        #   Consolidated page parameter (deepObject style). Originally: page[size],
        #   page[number]
        #
        #   @return [Telnyx::Models::PhoneNumberBlocks::JobListParams::Page, nil]
        optional :page, -> { Telnyx::PhoneNumberBlocks::JobListParams::Page }

        # @!attribute sort
        #   Specifies the sort order for results. If not given, results are sorted by
        #   created_at in descending order.
        #
        #   @return [Symbol, Telnyx::Models::PhoneNumberBlocks::JobListParams::Sort, nil]
        optional :sort, enum: -> { Telnyx::PhoneNumberBlocks::JobListParams::Sort }

        # @!method initialize(filter: nil, page: nil, sort: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::PhoneNumberBlocks::JobListParams} for more details.
        #
        #   @param filter [Telnyx::Models::PhoneNumberBlocks::JobListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[type], filt
        #
        #   @param page [Telnyx::Models::PhoneNumberBlocks::JobListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
        #
        #   @param sort [Symbol, Telnyx::Models::PhoneNumberBlocks::JobListParams::Sort] Specifies the sort order for results. If not given, results are sorted by create
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class Filter < Telnyx::Internal::Type::BaseModel
          # @!attribute status
          #   Identifies the status of the background job.
          #
          #   @return [Symbol, Telnyx::Models::PhoneNumberBlocks::JobListParams::Filter::Status, nil]
          optional :status, enum: -> { Telnyx::PhoneNumberBlocks::JobListParams::Filter::Status }

          # @!attribute type
          #   Identifies the type of the background job.
          #
          #   @return [Symbol, Telnyx::Models::PhoneNumberBlocks::JobListParams::Filter::Type, nil]
          optional :type, enum: -> { Telnyx::PhoneNumberBlocks::JobListParams::Filter::Type }

          # @!method initialize(status: nil, type: nil)
          #   Consolidated filter parameter (deepObject style). Originally: filter[type],
          #   filter[status]
          #
          #   @param status [Symbol, Telnyx::Models::PhoneNumberBlocks::JobListParams::Filter::Status] Identifies the status of the background job.
          #
          #   @param type [Symbol, Telnyx::Models::PhoneNumberBlocks::JobListParams::Filter::Type] Identifies the type of the background job.

          # Identifies the status of the background job.
          #
          # @see Telnyx::Models::PhoneNumberBlocks::JobListParams::Filter#status
          module Status
            extend Telnyx::Internal::Type::Enum

            PENDING = :pending
            IN_PROGRESS = :in_progress
            COMPLETED = :completed
            FAILED = :failed

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Identifies the type of the background job.
          #
          # @see Telnyx::Models::PhoneNumberBlocks::JobListParams::Filter#type
          module Type
            extend Telnyx::Internal::Type::Enum

            DELETE_PHONE_NUMBER_BLOCK = :delete_phone_number_block

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

          CREATED_AT = :created_at

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
