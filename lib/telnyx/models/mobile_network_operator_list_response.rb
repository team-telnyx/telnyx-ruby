# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MobileNetworkOperators#list
    class MobileNetworkOperatorListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute country_code
      #   The mobile operator two-character (ISO 3166-1 alpha-2) origin country code.
      #
      #   @return [String, nil]
      optional :country_code, String

      # @!attribute mcc
      #   MCC stands for Mobile Country Code. It's a three decimal digit that identifies a
      #   country.<br/><br/> This code is commonly seen joined with a Mobile Network Code
      #   (MNC) in a tuple that allows identifying a carrier known as PLMN (Public Land
      #   Mobile Network) code.
      #
      #   @return [String, nil]
      optional :mcc, String

      # @!attribute mnc
      #   MNC stands for Mobile Network Code. It's a two to three decimal digits that
      #   identify a network.<br/><br/> This code is commonly seen joined with a Mobile
      #   Country Code (MCC) in a tuple that allows identifying a carrier known as PLMN
      #   (Public Land Mobile Network) code.
      #
      #   @return [String, nil]
      optional :mnc, String

      # @!attribute name
      #   The network operator name.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute tadig
      #   TADIG stands for Transferred Account Data Interchange Group. The TADIG code is a
      #   unique identifier for network operators in GSM mobile networks.
      #
      #   @return [String, nil]
      optional :tadig, String

      response_only do
        # @!attribute id
        #   Identifies the resource.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute network_preferences_enabled
        #   Indicate whether the mobile network operator can be set as preferred in the
        #   Network Preferences API.
        #
        #   @return [Boolean, nil]
        optional :network_preferences_enabled, Telnyx::Internal::Type::Boolean

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [String, nil]
        optional :record_type, String
      end

      # @!method initialize(id: nil, country_code: nil, mcc: nil, mnc: nil, name: nil, network_preferences_enabled: nil, record_type: nil, tadig: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::MobileNetworkOperatorListResponse} for more details.
      #
      #   @param id [String] Identifies the resource.
      #
      #   @param country_code [String] The mobile operator two-character (ISO 3166-1 alpha-2) origin country code.
      #
      #   @param mcc [String] MCC stands for Mobile Country Code. It's a three decimal digit that identifies a
      #
      #   @param mnc [String] MNC stands for Mobile Network Code. It's a two to three decimal digits that iden
      #
      #   @param name [String] The network operator name.
      #
      #   @param network_preferences_enabled [Boolean] Indicate whether the mobile network operator can be set as preferred in the Netw
      #
      #   @param record_type [String] Identifies the type of the resource.
      #
      #   @param tadig [String] TADIG stands for Transferred Account Data Interchange Group. The TADIG code is a
    end
  end
end
