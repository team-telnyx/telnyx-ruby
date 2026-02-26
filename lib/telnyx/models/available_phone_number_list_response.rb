# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AvailablePhoneNumbers#list
    class AvailablePhoneNumberListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::AvailablePhoneNumberListResponse::Data>, nil]
      optional :data,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AvailablePhoneNumberListResponse::Data] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::AvailablePhoneNumbersMetadata, nil]
      optional :meta, -> { Telnyx::AvailablePhoneNumbersMetadata }

      # @!attribute metadata
      #
      #   @return [Telnyx::Models::AvailablePhoneNumbersMetadata, nil]
      optional :metadata, -> { Telnyx::AvailablePhoneNumbersMetadata }

      # @!method initialize(data: nil, meta: nil, metadata: nil)
      #   @param data [Array<Telnyx::Models::AvailablePhoneNumberListResponse::Data>]
      #   @param meta [Telnyx::Models::AvailablePhoneNumbersMetadata]
      #   @param metadata [Telnyx::Models::AvailablePhoneNumbersMetadata]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute best_effort
        #   Specifies whether the phone number is an exact match based on the search
        #   criteria or not.
        #
        #   @return [Boolean, nil]
        optional :best_effort, Telnyx::Internal::Type::Boolean

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

        # @!attribute quickship
        #   Specifies whether the phone number can receive calls immediately after purchase
        #   or not.
        #
        #   @return [Boolean, nil]
        optional :quickship, Telnyx::Internal::Type::Boolean

        # @!attribute record_type
        #
        #   @return [Symbol, Telnyx::Models::AvailablePhoneNumberListResponse::Data::RecordType, nil]
        optional :record_type, enum: -> { Telnyx::Models::AvailablePhoneNumberListResponse::Data::RecordType }

        # @!attribute region_information
        #
        #   @return [Array<Telnyx::Models::RegionInformation>, nil]
        optional :region_information, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::RegionInformation] }

        # @!attribute reservable
        #   Specifies whether the phone number can be reserved before purchase or not.
        #
        #   @return [Boolean, nil]
        optional :reservable, Telnyx::Internal::Type::Boolean

        # @!attribute vanity_format
        #
        #   @return [String, nil]
        optional :vanity_format, String

        # @!method initialize(best_effort: nil, cost_information: nil, features: nil, phone_number: nil, quickship: nil, record_type: nil, region_information: nil, reservable: nil, vanity_format: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AvailablePhoneNumberListResponse::Data} for more details.
        #
        #   @param best_effort [Boolean] Specifies whether the phone number is an exact match based on the search criteri
        #
        #   @param cost_information [Telnyx::Models::CostInformation]
        #
        #   @param features [Array<Telnyx::Models::Feature>]
        #
        #   @param phone_number [String]
        #
        #   @param quickship [Boolean] Specifies whether the phone number can receive calls immediately after purchase
        #
        #   @param record_type [Symbol, Telnyx::Models::AvailablePhoneNumberListResponse::Data::RecordType]
        #
        #   @param region_information [Array<Telnyx::Models::RegionInformation>]
        #
        #   @param reservable [Boolean] Specifies whether the phone number can be reserved before purchase or not.
        #
        #   @param vanity_format [String]

        # @see Telnyx::Models::AvailablePhoneNumberListResponse::Data#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          AVAILABLE_PHONE_NUMBER = :available_phone_number

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
