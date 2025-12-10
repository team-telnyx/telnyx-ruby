# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AvailablePhoneNumberBlocks#list
    class AvailablePhoneNumberBlockListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data>, nil]
      optional :data,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::AvailablePhoneNumbersMetadata, nil]
      optional :meta, -> { Telnyx::AvailablePhoneNumbersMetadata }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data>]
      #   @param meta [Telnyx::Models::AvailablePhoneNumbersMetadata]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute cost_information
        #
        #   @return [Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::CostInformation, nil]
        optional :cost_information,
                 -> { Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::CostInformation }

        # @!attribute features
        #
        #   @return [Array<Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::Feature>, nil]
        optional :features,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::Feature] }

        # @!attribute range
        #
        #   @return [Integer, nil]
        optional :range, Integer

        # @!attribute record_type
        #
        #   @return [Symbol, Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::RecordType, nil]
        optional :record_type,
                 enum: -> { Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::RecordType }

        # @!attribute region_information
        #
        #   @return [Array<Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::RegionInformation>, nil]
        optional :region_information,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::RegionInformation] }

        # @!attribute starting_number
        #
        #   @return [String, nil]
        optional :starting_number, String

        # @!method initialize(cost_information: nil, features: nil, range: nil, record_type: nil, region_information: nil, starting_number: nil)
        #   @param cost_information [Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::CostInformation]
        #   @param features [Array<Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::Feature>]
        #   @param range [Integer]
        #   @param record_type [Symbol, Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::RecordType]
        #   @param region_information [Array<Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::RegionInformation>]
        #   @param starting_number [String]

        # @see Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data#cost_information
        class CostInformation < Telnyx::Internal::Type::BaseModel
          # @!attribute currency
          #   The ISO 4217 code for the currency.
          #
          #   @return [String, nil]
          optional :currency, String

          # @!attribute monthly_cost
          #
          #   @return [String, nil]
          optional :monthly_cost, String

          # @!attribute upfront_cost
          #
          #   @return [String, nil]
          optional :upfront_cost, String

          # @!method initialize(currency: nil, monthly_cost: nil, upfront_cost: nil)
          #   @param currency [String] The ISO 4217 code for the currency.
          #
          #   @param monthly_cost [String]
          #
          #   @param upfront_cost [String]
        end

        class Feature < Telnyx::Internal::Type::BaseModel
          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(name: nil)
          #   @param name [String]
        end

        # @see Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          AVAILABLE_PHONE_NUMBER_BLOCK = :available_phone_number_block

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class RegionInformation < Telnyx::Internal::Type::BaseModel
          # @!attribute region_name
          #
          #   @return [String, nil]
          optional :region_name, String

          # @!attribute region_type
          #
          #   @return [Symbol, Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::RegionInformation::RegionType, nil]
          optional :region_type,
                   enum: -> { Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::RegionInformation::RegionType }

          # @!method initialize(region_name: nil, region_type: nil)
          #   @param region_name [String]
          #   @param region_type [Symbol, Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::RegionInformation::RegionType]

          # @see Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::RegionInformation#region_type
          module RegionType
            extend Telnyx::Internal::Type::Enum

            COUNTRY_CODE = :country_code
            RATE_CENTER = :rate_center
            STATE = :state
            LOCATION = :location

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
