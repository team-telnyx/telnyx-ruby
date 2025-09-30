# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::InventoryCoverage#list
    class InventoryCoverageListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::InventoryCoverageListResponse::Data>, nil]
      optional :data,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::InventoryCoverageListResponse::Data] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::InventoryCoverageListResponse::Meta, nil]
      optional :meta, -> { Telnyx::Models::InventoryCoverageListResponse::Meta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::InventoryCoverageListResponse::Data>]
      #   @param meta [Telnyx::Models::InventoryCoverageListResponse::Meta]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute administrative_area
        #
        #   @return [String, nil]
        optional :administrative_area, String

        # @!attribute advance_requirements
        #   Indicates if the phone number requires advance requirements.
        #
        #   @return [Boolean, nil]
        optional :advance_requirements, Telnyx::Internal::Type::Boolean

        # @!attribute count
        #
        #   @return [Integer, nil]
        optional :count, Integer

        # @!attribute coverage_type
        #
        #   @return [Symbol, Telnyx::Models::InventoryCoverageListResponse::Data::CoverageType, nil]
        optional :coverage_type, enum: -> { Telnyx::Models::InventoryCoverageListResponse::Data::CoverageType }

        # @!attribute group
        #
        #   @return [String, nil]
        optional :group, String

        # @!attribute group_type
        #
        #   @return [String, nil]
        optional :group_type, String

        # @!attribute number_range
        #
        #   @return [Integer, nil]
        optional :number_range, Integer

        # @!attribute number_type
        #
        #   @return [Symbol, Telnyx::Models::InventoryCoverageListResponse::Data::NumberType, nil]
        optional :number_type, enum: -> { Telnyx::Models::InventoryCoverageListResponse::Data::NumberType }

        # @!attribute phone_number_type
        #
        #   @return [Symbol, Telnyx::Models::InventoryCoverageListResponse::Data::PhoneNumberType, nil]
        optional :phone_number_type,
                 enum: -> { Telnyx::Models::InventoryCoverageListResponse::Data::PhoneNumberType }

        # @!attribute record_type
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!method initialize(administrative_area: nil, advance_requirements: nil, count: nil, coverage_type: nil, group: nil, group_type: nil, number_range: nil, number_type: nil, phone_number_type: nil, record_type: nil)
        #   @param administrative_area [String]
        #
        #   @param advance_requirements [Boolean] Indicates if the phone number requires advance requirements.
        #
        #   @param count [Integer]
        #
        #   @param coverage_type [Symbol, Telnyx::Models::InventoryCoverageListResponse::Data::CoverageType]
        #
        #   @param group [String]
        #
        #   @param group_type [String]
        #
        #   @param number_range [Integer]
        #
        #   @param number_type [Symbol, Telnyx::Models::InventoryCoverageListResponse::Data::NumberType]
        #
        #   @param phone_number_type [Symbol, Telnyx::Models::InventoryCoverageListResponse::Data::PhoneNumberType]
        #
        #   @param record_type [String]

        # @see Telnyx::Models::InventoryCoverageListResponse::Data#coverage_type
        module CoverageType
          extend Telnyx::Internal::Type::Enum

          NUMBER = :number
          BLOCK = :block

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::InventoryCoverageListResponse::Data#number_type
        module NumberType
          extend Telnyx::Internal::Type::Enum

          DID = :did
          TOLL_FREE = :"toll-free"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::InventoryCoverageListResponse::Data#phone_number_type
        module PhoneNumberType
          extend Telnyx::Internal::Type::Enum

          LOCAL = :local
          TOLL_FREE = :toll_free
          NATIONAL = :national
          LANDLINE = :landline
          SHARED_COST = :shared_cost
          MOBILE = :mobile

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see Telnyx::Models::InventoryCoverageListResponse#meta
      class Meta < Telnyx::Internal::Type::BaseModel
        # @!attribute total_results
        #
        #   @return [Integer, nil]
        optional :total_results, Integer

        # @!method initialize(total_results: nil)
        #   @param total_results [Integer]
      end
    end
  end
end
