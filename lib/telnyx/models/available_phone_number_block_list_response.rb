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
        #   @return [Telnyx::Models::CostInformation, nil]
        optional :cost_information, -> { Telnyx::CostInformation }

        # @!attribute features
        #
        #   @return [Array<Telnyx::Models::Feature>, nil]
        optional :features, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Feature] }

        # @!attribute phone_number
        #
        #   @return [String, nil]
        optional :phone_number, String

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
        #   @return [Array<Telnyx::Models::RegionInformation>, nil]
        optional :region_information, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::RegionInformation] }

        # @!method initialize(cost_information: nil, features: nil, phone_number: nil, range: nil, record_type: nil, region_information: nil)
        #   @param cost_information [Telnyx::Models::CostInformation]
        #   @param features [Array<Telnyx::Models::Feature>]
        #   @param phone_number [String]
        #   @param range [Integer]
        #   @param record_type [Symbol, Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data::RecordType]
        #   @param region_information [Array<Telnyx::Models::RegionInformation>]

        # @see Telnyx::Models::AvailablePhoneNumberBlockListResponse::Data#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          AVAILABLE_PHONE_NUMBER_BLOCK = :available_phone_number_block

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
