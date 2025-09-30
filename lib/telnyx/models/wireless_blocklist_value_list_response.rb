# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::WirelessBlocklistValues#list
    class WirelessBlocklistValueListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::WirelessBlocklistValueListResponse::Data::Country>, Array<Telnyx::Models::WirelessBlocklistValueListResponse::Data::Mcc>, Array<Telnyx::Models::WirelessBlocklistValueListResponse::Data::Plmn>, nil]
      optional :data, union: -> { Telnyx::Models::WirelessBlocklistValueListResponse::Data }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::WirelessBlocklistValueListResponse::Data::Country>, Array<Telnyx::Models::WirelessBlocklistValueListResponse::Data::Mcc>, Array<Telnyx::Models::WirelessBlocklistValueListResponse::Data::Plmn>]
      #   @param meta [Telnyx::Models::PaginationMeta]

      # @see Telnyx::Models::WirelessBlocklistValueListResponse#data
      module Data
        extend Telnyx::Internal::Type::Union

        variant -> { Telnyx::Models::WirelessBlocklistValueListResponse::Data::CountryArray }

        variant -> { Telnyx::Models::WirelessBlocklistValueListResponse::Data::MccArray }

        variant -> { Telnyx::Models::WirelessBlocklistValueListResponse::Data::PlmnArray }

        class Country < Telnyx::Internal::Type::BaseModel
          # @!attribute code
          #   ISO 3166-1 Alpha-2 Country Code.
          #
          #   @return [String]
          required :code, String

          # @!attribute name
          #   The name of the country.
          #
          #   @return [String]
          required :name, String

          # @!method initialize(code:, name:)
          #   @param code [String] ISO 3166-1 Alpha-2 Country Code.
          #
          #   @param name [String] The name of the country.
        end

        class Mcc < Telnyx::Internal::Type::BaseModel
          # @!attribute code
          #   Mobile Country Code.
          #
          #   @return [String]
          required :code, String

          # @!attribute name
          #   The name of the country.
          #
          #   @return [String]
          required :name, String

          # @!method initialize(code:, name:)
          #   @param code [String] Mobile Country Code.
          #
          #   @param name [String] The name of the country.
        end

        class Plmn < Telnyx::Internal::Type::BaseModel
          # @!attribute code
          #   Public land mobile network code (MCC + MNC).
          #
          #   @return [String]
          required :code, String

          # @!attribute name
          #   The name of the network.
          #
          #   @return [String]
          required :name, String

          # @!method initialize(code:, name:)
          #   @param code [String] Public land mobile network code (MCC + MNC).
          #
          #   @param name [String] The name of the network.
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
