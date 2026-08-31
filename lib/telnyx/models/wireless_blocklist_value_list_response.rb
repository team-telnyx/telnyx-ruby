# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::WirelessBlocklistValues#list
    class WirelessBlocklistValueListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::WirelessBlocklistValueListResponse::Data::Country>, Array<Telnyx::Models::WirelessBlocklistValueListResponse::Data::Mcc>, Array<Telnyx::Models::WirelessBlocklistValueListResponse::Data::Plmn>]
      required :data, union: -> { Telnyx::Models::WirelessBlocklistValueListResponse::Data }

      # @!method initialize(data:)
      #   @param data [Array<Telnyx::Models::WirelessBlocklistValueListResponse::Data::Country>, Array<Telnyx::Models::WirelessBlocklistValueListResponse::Data::Mcc>, Array<Telnyx::Models::WirelessBlocklistValueListResponse::Data::Plmn>]

      # @see Telnyx::Models::WirelessBlocklistValueListResponse#data
      module Data
        extend Telnyx::Internal::Type::Union

        variant -> { Telnyx::Models::WirelessBlocklistValueListResponse::Data::CountryArray }

        variant -> { Telnyx::Models::WirelessBlocklistValueListResponse::Data::MccArray }

        variant -> { Telnyx::Models::WirelessBlocklistValueListResponse::Data::PlmnArray }

        class Country < Telnyx::Internal::Type::BaseModel
          # @!attribute country_code
          #   ISO 3166-1 Alpha-2 Country Code.
          #
          #   @return [String]
          required :country_code, String

          # @!method initialize(country_code:)
          #   @param country_code [String] ISO 3166-1 Alpha-2 Country Code.
        end

        class Mcc < Telnyx::Internal::Type::BaseModel
          # @!attribute mcc
          #   Mobile Country Code.
          #
          #   @return [String]
          required :mcc, String

          # @!method initialize(mcc:)
          #   @param mcc [String] Mobile Country Code.
        end

        class Plmn < Telnyx::Internal::Type::BaseModel
          # @!attribute plmn
          #   Public land mobile network code (MCC + MNC).
          #
          #   @return [String]
          required :plmn, String

          # @!method initialize(plmn:)
          #   @param plmn [String] Public land mobile network code (MCC + MNC).
        end

        # @!method self.variants
        #   @return [Array(Array<Telnyx::Models::WirelessBlocklistValueListResponse::Data::Country>, Array<Telnyx::Models::WirelessBlocklistValueListResponse::Data::Mcc>, Array<Telnyx::Models::WirelessBlocklistValueListResponse::Data::Plmn>)]

        # @type [Telnyx::Internal::Type::Converter]
        CountryArray =
          Telnyx::Internal::Type::ArrayOf[-> { Telnyx::Models::WirelessBlocklistValueListResponse::Data::Country }]

        # @type [Telnyx::Internal::Type::Converter]
        MccArray =
          Telnyx::Internal::Type::ArrayOf[-> { Telnyx::Models::WirelessBlocklistValueListResponse::Data::Mcc }]

        # @type [Telnyx::Internal::Type::Converter]
        PlmnArray =
          Telnyx::Internal::Type::ArrayOf[-> { Telnyx::Models::WirelessBlocklistValueListResponse::Data::Plmn }]
      end
    end
  end
end
