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
      #   @return [Telnyx::Models::AvailablePhoneNumberListResponse::Meta, nil]
      optional :meta, -> { Telnyx::Models::AvailablePhoneNumberListResponse::Meta }

      # @!attribute metadata
      #
      #   @return [Telnyx::Models::AvailablePhoneNumberListResponse::Metadata, nil]
      optional :metadata, -> { Telnyx::Models::AvailablePhoneNumberListResponse::Metadata }

      # @!method initialize(data: nil, meta: nil, metadata: nil)
      #   @param data [Array<Telnyx::Models::AvailablePhoneNumberListResponse::Data>]
      #   @param meta [Telnyx::Models::AvailablePhoneNumberListResponse::Meta]
      #   @param metadata [Telnyx::Models::AvailablePhoneNumberListResponse::Metadata]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute best_effort
        #   Specifies whether the phone number is an exact match based on the search
        #   criteria or not.
        #
        #   @return [Boolean, nil]
        optional :best_effort, Telnyx::Internal::Type::Boolean

        # @!attribute cost_information
        #
        #   @return [Telnyx::Models::AvailablePhoneNumberListResponse::Data::CostInformation, nil]
        optional :cost_information, -> { Telnyx::Models::AvailablePhoneNumberListResponse::Data::CostInformation }

        # @!attribute features
        #
        #   @return [Array<Telnyx::Models::AvailablePhoneNumberListResponse::Data::Feature>, nil]
        optional :features,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AvailablePhoneNumberListResponse::Data::Feature] }

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
        #   @return [Array<Telnyx::Models::AvailablePhoneNumberListResponse::Data::RegionInformation>, nil]
        optional :region_information,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AvailablePhoneNumberListResponse::Data::RegionInformation] }

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
        #   @param cost_information [Telnyx::Models::AvailablePhoneNumberListResponse::Data::CostInformation]
        #
        #   @param features [Array<Telnyx::Models::AvailablePhoneNumberListResponse::Data::Feature>]
        #
        #   @param phone_number [String]
        #
        #   @param quickship [Boolean] Specifies whether the phone number can receive calls immediately after purchase
        #
        #   @param record_type [Symbol, Telnyx::Models::AvailablePhoneNumberListResponse::Data::RecordType]
        #
        #   @param region_information [Array<Telnyx::Models::AvailablePhoneNumberListResponse::Data::RegionInformation>]
        #
        #   @param reservable [Boolean] Specifies whether the phone number can be reserved before purchase or not.
        #
        #   @param vanity_format [String]

        # @see Telnyx::Models::AvailablePhoneNumberListResponse::Data#cost_information
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

        # @see Telnyx::Models::AvailablePhoneNumberListResponse::Data#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          AVAILABLE_PHONE_NUMBER = :available_phone_number

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
          #   @return [Symbol, Telnyx::Models::AvailablePhoneNumberListResponse::Data::RegionInformation::RegionType, nil]
          optional :region_type,
                   enum: -> { Telnyx::Models::AvailablePhoneNumberListResponse::Data::RegionInformation::RegionType }

          # @!method initialize(region_name: nil, region_type: nil)
          #   @param region_name [String]
          #   @param region_type [Symbol, Telnyx::Models::AvailablePhoneNumberListResponse::Data::RegionInformation::RegionType]

          # @see Telnyx::Models::AvailablePhoneNumberListResponse::Data::RegionInformation#region_type
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

      # @see Telnyx::Models::AvailablePhoneNumberListResponse#meta
      class Meta < Telnyx::Internal::Type::BaseModel
        # @!attribute best_effort_results
        #
        #   @return [Integer, nil]
        optional :best_effort_results, Integer

        # @!attribute total_results
        #
        #   @return [Integer, nil]
        optional :total_results, Integer

        # @!method initialize(best_effort_results: nil, total_results: nil)
        #   @param best_effort_results [Integer]
        #   @param total_results [Integer]
      end

      # @see Telnyx::Models::AvailablePhoneNumberListResponse#metadata
      class Metadata < Telnyx::Internal::Type::BaseModel
        # @!attribute best_effort_results
        #
        #   @return [Integer, nil]
        optional :best_effort_results, Integer

        # @!attribute total_results
        #
        #   @return [Integer, nil]
        optional :total_results, Integer

        # @!method initialize(best_effort_results: nil, total_results: nil)
        #   @param best_effort_results [Integer]
        #   @param total_results [Integer]
      end
    end
  end
end
