# frozen_string_literal: true

module Telnyx
  module Models
    module ExternalConnections
      # @see Telnyx::Resources::ExternalConnections::Uploads#list
      class UploadListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute filter
        #   Filter parameter for uploads (deepObject style). Supports filtering by status,
        #   civic_address_id, location_id, and phone_number with eq/contains operations.
        #
        #   @return [Telnyx::Models::ExternalConnections::UploadListParams::Filter, nil]
        optional :filter, -> { Telnyx::ExternalConnections::UploadListParams::Filter }

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
        #   {Telnyx::Models::ExternalConnections::UploadListParams} for more details.
        #
        #   @param filter [Telnyx::Models::ExternalConnections::UploadListParams::Filter] Filter parameter for uploads (deepObject style). Supports filtering by status, c
        #
        #   @param page_number [Integer]
        #
        #   @param page_size [Integer]
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class Filter < Telnyx::Internal::Type::BaseModel
          # @!attribute civic_address_id
          #
          #   @return [Telnyx::Models::ExternalConnections::UploadListParams::Filter::CivicAddressID, nil]
          optional :civic_address_id, -> { Telnyx::ExternalConnections::UploadListParams::Filter::CivicAddressID }

          # @!attribute location_id
          #
          #   @return [Telnyx::Models::ExternalConnections::UploadListParams::Filter::LocationID, nil]
          optional :location_id, -> { Telnyx::ExternalConnections::UploadListParams::Filter::LocationID }

          # @!attribute phone_number
          #
          #   @return [Telnyx::Models::ExternalConnections::UploadListParams::Filter::PhoneNumber, nil]
          optional :phone_number, -> { Telnyx::ExternalConnections::UploadListParams::Filter::PhoneNumber }

          # @!attribute status
          #
          #   @return [Telnyx::Models::ExternalConnections::UploadListParams::Filter::Status, nil]
          optional :status, -> { Telnyx::ExternalConnections::UploadListParams::Filter::Status }

          # @!method initialize(civic_address_id: nil, location_id: nil, phone_number: nil, status: nil)
          #   Filter parameter for uploads (deepObject style). Supports filtering by status,
          #   civic_address_id, location_id, and phone_number with eq/contains operations.
          #
          #   @param civic_address_id [Telnyx::Models::ExternalConnections::UploadListParams::Filter::CivicAddressID]
          #   @param location_id [Telnyx::Models::ExternalConnections::UploadListParams::Filter::LocationID]
          #   @param phone_number [Telnyx::Models::ExternalConnections::UploadListParams::Filter::PhoneNumber]
          #   @param status [Telnyx::Models::ExternalConnections::UploadListParams::Filter::Status]

          # @see Telnyx::Models::ExternalConnections::UploadListParams::Filter#civic_address_id
          class CivicAddressID < Telnyx::Internal::Type::BaseModel
            # @!attribute eq
            #   The civic address ID to filter by
            #
            #   @return [String, nil]
            optional :eq, String

            # @!method initialize(eq: nil)
            #   @param eq [String] The civic address ID to filter by
          end

          # @see Telnyx::Models::ExternalConnections::UploadListParams::Filter#location_id
          class LocationID < Telnyx::Internal::Type::BaseModel
            # @!attribute eq
            #   The location ID to filter by
            #
            #   @return [String, nil]
            optional :eq, String

            # @!method initialize(eq: nil)
            #   @param eq [String] The location ID to filter by
          end

          # @see Telnyx::Models::ExternalConnections::UploadListParams::Filter#phone_number
          class PhoneNumber < Telnyx::Internal::Type::BaseModel
            # @!attribute contains
            #   The phone number to filter by (partial match)
            #
            #   @return [String, nil]
            optional :contains, String

            # @!attribute eq
            #   The phone number to filter by (exact match)
            #
            #   @return [String, nil]
            optional :eq, String

            # @!method initialize(contains: nil, eq: nil)
            #   @param contains [String] The phone number to filter by (partial match)
            #
            #   @param eq [String] The phone number to filter by (exact match)
          end

          # @see Telnyx::Models::ExternalConnections::UploadListParams::Filter#status
          class Status < Telnyx::Internal::Type::BaseModel
            # @!attribute eq
            #   The status of the upload to filter by
            #
            #   @return [Array<Symbol, Telnyx::Models::ExternalConnections::UploadListParams::Filter::Status::Eq>, nil]
            optional :eq,
                     -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::ExternalConnections::UploadListParams::Filter::Status::Eq] }

            # @!method initialize(eq: nil)
            #   @param eq [Array<Symbol, Telnyx::Models::ExternalConnections::UploadListParams::Filter::Status::Eq>] The status of the upload to filter by

            module Eq
              extend Telnyx::Internal::Type::Enum

              PENDING_UPLOAD = :pending_upload
              PENDING = :pending
              IN_PROGRESS = :in_progress
              SUCCESS = :success
              ERROR = :error

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
