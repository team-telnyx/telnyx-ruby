# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::CountryCoverage#retrieve
    class CountryCoverageRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::CountryCoverageRetrieveResponse::Data>, nil]
      optional :data,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::CountryCoverageRetrieveResponse::Data] }

      # @!method initialize(data: nil)
      #   @param data [Array<Telnyx::Models::CountryCoverageRetrieveResponse::Data>]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute code
        #   Country ISO code
        #
        #   @return [String, nil]
        optional :code, String

        # @!attribute features
        #   Set of features supported
        #
        #   @return [Array<String>, nil]
        optional :features, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute international_sms
        #
        #   @return [Boolean, nil]
        optional :international_sms, Telnyx::Internal::Type::Boolean

        # @!attribute inventory_coverage
        #   Indicates whether country can be queried with inventory coverage endpoint
        #
        #   @return [Boolean, nil]
        optional :inventory_coverage, Telnyx::Internal::Type::Boolean

        # @!attribute local
        #
        #   @return [Telnyx::Models::CountryCoverageRetrieveResponse::Data::Local, nil]
        optional :local, -> { Telnyx::Models::CountryCoverageRetrieveResponse::Data::Local }

        # @!attribute mobile
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :mobile, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!attribute national
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :national, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!attribute numbers
        #
        #   @return [Boolean, nil]
        optional :numbers, Telnyx::Internal::Type::Boolean

        # @!attribute p2p
        #
        #   @return [Boolean, nil]
        optional :p2p, Telnyx::Internal::Type::Boolean

        # @!attribute phone_number_type
        #   Phone number type
        #
        #   @return [Array<String>, nil]
        optional :phone_number_type, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute quickship
        #   Supports quickship
        #
        #   @return [Boolean, nil]
        optional :quickship, Telnyx::Internal::Type::Boolean

        # @!attribute region
        #   Geographic region (e.g., AMER, EMEA, APAC)
        #
        #   @return [String, nil]
        optional :region, String, nil?: true

        # @!attribute reservable
        #   Supports reservable
        #
        #   @return [Boolean, nil]
        optional :reservable, Telnyx::Internal::Type::Boolean

        # @!attribute shared_cost
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :shared_cost, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!attribute toll_free
        #
        #   @return [Telnyx::Models::CountryCoverageRetrieveResponse::Data::TollFree, nil]
        optional :toll_free, -> { Telnyx::Models::CountryCoverageRetrieveResponse::Data::TollFree }

        # @!method initialize(code: nil, features: nil, international_sms: nil, inventory_coverage: nil, local: nil, mobile: nil, national: nil, numbers: nil, p2p: nil, phone_number_type: nil, quickship: nil, region: nil, reservable: nil, shared_cost: nil, toll_free: nil)
        #   @param code [String] Country ISO code
        #
        #   @param features [Array<String>] Set of features supported
        #
        #   @param international_sms [Boolean]
        #
        #   @param inventory_coverage [Boolean] Indicates whether country can be queried with inventory coverage endpoint
        #
        #   @param local [Telnyx::Models::CountryCoverageRetrieveResponse::Data::Local]
        #
        #   @param mobile [Hash{Symbol=>Object}]
        #
        #   @param national [Hash{Symbol=>Object}]
        #
        #   @param numbers [Boolean]
        #
        #   @param p2p [Boolean]
        #
        #   @param phone_number_type [Array<String>] Phone number type
        #
        #   @param quickship [Boolean] Supports quickship
        #
        #   @param region [String, nil] Geographic region (e.g., AMER, EMEA, APAC)
        #
        #   @param reservable [Boolean] Supports reservable
        #
        #   @param shared_cost [Hash{Symbol=>Object}]
        #
        #   @param toll_free [Telnyx::Models::CountryCoverageRetrieveResponse::Data::TollFree]

        # @see Telnyx::Models::CountryCoverageRetrieveResponse::Data#local
        class Local < Telnyx::Internal::Type::BaseModel
          # @!attribute features
          #
          #   @return [Array<String>, nil]
          optional :features, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute full_pstn_replacement
          #
          #   @return [Boolean, nil]
          optional :full_pstn_replacement, Telnyx::Internal::Type::Boolean

          # @!attribute international_sms
          #
          #   @return [Boolean, nil]
          optional :international_sms, Telnyx::Internal::Type::Boolean

          # @!attribute p2p
          #
          #   @return [Boolean, nil]
          optional :p2p, Telnyx::Internal::Type::Boolean

          # @!attribute quickship
          #
          #   @return [Boolean, nil]
          optional :quickship, Telnyx::Internal::Type::Boolean

          # @!attribute reservable
          #
          #   @return [Boolean, nil]
          optional :reservable, Telnyx::Internal::Type::Boolean

          # @!method initialize(features: nil, full_pstn_replacement: nil, international_sms: nil, p2p: nil, quickship: nil, reservable: nil)
          #   @param features [Array<String>]
          #   @param full_pstn_replacement [Boolean]
          #   @param international_sms [Boolean]
          #   @param p2p [Boolean]
          #   @param quickship [Boolean]
          #   @param reservable [Boolean]
        end

        # @see Telnyx::Models::CountryCoverageRetrieveResponse::Data#toll_free
        class TollFree < Telnyx::Internal::Type::BaseModel
          # @!attribute features
          #
          #   @return [Array<String>, nil]
          optional :features, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute full_pstn_replacement
          #
          #   @return [Boolean, nil]
          optional :full_pstn_replacement, Telnyx::Internal::Type::Boolean

          # @!attribute international_sms
          #
          #   @return [Boolean, nil]
          optional :international_sms, Telnyx::Internal::Type::Boolean

          # @!attribute p2p
          #
          #   @return [Boolean, nil]
          optional :p2p, Telnyx::Internal::Type::Boolean

          # @!attribute quickship
          #
          #   @return [Boolean, nil]
          optional :quickship, Telnyx::Internal::Type::Boolean

          # @!attribute reservable
          #
          #   @return [Boolean, nil]
          optional :reservable, Telnyx::Internal::Type::Boolean

          # @!method initialize(features: nil, full_pstn_replacement: nil, international_sms: nil, p2p: nil, quickship: nil, reservable: nil)
          #   @param features [Array<String>]
          #   @param full_pstn_replacement [Boolean]
          #   @param international_sms [Boolean]
          #   @param p2p [Boolean]
          #   @param quickship [Boolean]
          #   @param reservable [Boolean]
        end
      end
    end
  end
end
