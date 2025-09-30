# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::WirelessBlocklists#update
    class WirelessBlocklistUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute name
      #   The name of the Wireless Blocklist.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute type
      #   The type of wireless blocklist.
      #
      #   @return [Symbol, Telnyx::Models::WirelessBlocklistUpdateParams::Type, nil]
      optional :type, enum: -> { Telnyx::WirelessBlocklistUpdateParams::Type }

      # @!attribute values
      #   Values to block. The values here depend on the `type` of Wireless Blocklist.
      #
      #   @return [Array<String>, nil]
      optional :values, Telnyx::Internal::Type::ArrayOf[String]

      # @!method initialize(name: nil, type: nil, values: nil, request_options: {})
      #   @param name [String] The name of the Wireless Blocklist.
      #
      #   @param type [Symbol, Telnyx::Models::WirelessBlocklistUpdateParams::Type] The type of wireless blocklist.
      #
      #   @param values [Array<String>] Values to block. The values here depend on the `type` of Wireless Blocklist.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # The type of wireless blocklist.
      module Type
        extend Telnyx::Internal::Type::Enum

        COUNTRY = :country
        MCC = :mcc
        PLMN = :plmn

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
