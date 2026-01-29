# frozen_string_literal: true

module Telnyx
  module Models
    module ExternalConnections
      # @see Telnyx::Resources::ExternalConnections::Releases#list
      class ReleaseListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute filter
        #   Filter parameter for releases (deepObject style). Supports filtering by status,
        #   civic_address_id, location_id, and phone_number with eq/contains operations.
        #
        #   @return [Telnyx::Models::ExternalConnections::ReleaseListParams::Filter, nil]
        optional :filter, -> { Telnyx::ExternalConnections::ReleaseListParams::Filter }

        # @!attribute page
        #   Consolidated page parameter (deepObject style). Originally: page[size],
        #   page[number]
        #
        #   @return [Telnyx::Models::ExternalConnections::ReleaseListParams::Page, nil]
        optional :page, -> { Telnyx::ExternalConnections::ReleaseListParams::Page }

        # @!method initialize(filter: nil, page: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::ExternalConnections::ReleaseListParams} for more details.
        #
        #   @param filter [Telnyx::Models::ExternalConnections::ReleaseListParams::Filter] Filter parameter for releases (deepObject style). Supports filtering by status,
        #
        #   @param page [Telnyx::Models::ExternalConnections::ReleaseListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class Filter < Telnyx::Internal::Type::BaseModel
          # @!attribute civic_address_id
          #
          #   @return [Telnyx::Models::ExternalConnections::ReleaseListParams::Filter::CivicAddressID, nil]
          optional :civic_address_id, -> { Telnyx::ExternalConnections::ReleaseListParams::Filter::CivicAddressID }

          # @!attribute location_id
          #
          #   @return [Telnyx::Models::ExternalConnections::ReleaseListParams::Filter::LocationID, nil]
          optional :location_id, -> { Telnyx::ExternalConnections::ReleaseListParams::Filter::LocationID }

          # @!attribute phone_number
          #   Phone number filter operations. Use 'eq' for exact matches or 'contains' for
          #   partial matches.
          #
          #   @return [Telnyx::Models::ExternalConnections::ReleaseListParams::Filter::PhoneNumber, nil]
          optional :phone_number, -> { Telnyx::ExternalConnections::ReleaseListParams::Filter::PhoneNumber }

          # @!attribute status
          #
          #   @return [Telnyx::Models::ExternalConnections::ReleaseListParams::Filter::Status, nil]
          optional :status, -> { Telnyx::ExternalConnections::ReleaseListParams::Filter::Status }

          # @!method initialize(civic_address_id: nil, location_id: nil, phone_number: nil, status: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::ExternalConnections::ReleaseListParams::Filter} for more
          #   details.
          #
          #   Filter parameter for releases (deepObject style). Supports filtering by status,
          #   civic_address_id, location_id, and phone_number with eq/contains operations.
          #
          #   @param civic_address_id [Telnyx::Models::ExternalConnections::ReleaseListParams::Filter::CivicAddressID]
          #
          #   @param location_id [Telnyx::Models::ExternalConnections::ReleaseListParams::Filter::LocationID]
          #
          #   @param phone_number [Telnyx::Models::ExternalConnections::ReleaseListParams::Filter::PhoneNumber] Phone number filter operations. Use 'eq' for exact matches or 'contains' for par
          #
          #   @param status [Telnyx::Models::ExternalConnections::ReleaseListParams::Filter::Status]

          # @see Telnyx::Models::ExternalConnections::ReleaseListParams::Filter#civic_address_id
          class CivicAddressID < Telnyx::Internal::Type::BaseModel
            # @!attribute eq
            #   The civic address ID to filter by
            #
            #   @return [String, nil]
            optional :eq, String

            # @!method initialize(eq: nil)
            #   @param eq [String] The civic address ID to filter by
          end

          # @see Telnyx::Models::ExternalConnections::ReleaseListParams::Filter#location_id
          class LocationID < Telnyx::Internal::Type::BaseModel
            # @!attribute eq
            #   The location ID to filter by
            #
            #   @return [String, nil]
            optional :eq, String

            # @!method initialize(eq: nil)
            #   @param eq [String] The location ID to filter by
          end

          # @see Telnyx::Models::ExternalConnections::ReleaseListParams::Filter#phone_number
          class PhoneNumber < Telnyx::Internal::Type::BaseModel
            # @!attribute contains
            #   The partial phone number to filter by. Requires 3-15 digits.
            #
            #   @return [String, nil]
            optional :contains, String

            # @!attribute eq
            #   The phone number to filter by
            #
            #   @return [String, nil]
            optional :eq, String

            # @!method initialize(contains: nil, eq: nil)
            #   Phone number filter operations. Use 'eq' for exact matches or 'contains' for
            #   partial matches.
            #
            #   @param contains [String] The partial phone number to filter by. Requires 3-15 digits.
            #
            #   @param eq [String] The phone number to filter by
          end

          # @see Telnyx::Models::ExternalConnections::ReleaseListParams::Filter#status
          class Status < Telnyx::Internal::Type::BaseModel
            # @!attribute eq
            #   The status of the release to filter by
            #
            #   @return [Array<Symbol, Telnyx::Models::ExternalConnections::ReleaseListParams::Filter::Status::Eq>, nil]
            optional :eq,
                     -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::ExternalConnections::ReleaseListParams::Filter::Status::Eq] }

            # @!method initialize(eq: nil)
            #   @param eq [Array<Symbol, Telnyx::Models::ExternalConnections::ReleaseListParams::Filter::Status::Eq>] The status of the release to filter by

            module Eq
              extend Telnyx::Internal::Type::Enum

              PENDING_UPLOAD = :pending_upload
              PENDING = :pending
              IN_PROGRESS = :in_progress
              COMPLETE = :complete
              FAILED = :failed
              EXPIRED = :expired
              UNKNOWN = :unknown

              # @!method self.values
              #   @return [Array<Symbol>]
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
      end
    end
  end
end
