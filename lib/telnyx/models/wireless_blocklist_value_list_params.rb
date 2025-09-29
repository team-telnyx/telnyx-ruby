# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::WirelessBlocklistValues#list
    class WirelessBlocklistValueListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute type
      #   The Wireless Blocklist type for which to list possible values (e.g., `country`,
      #   `mcc`, `plmn`).
      #
      #   @return [Symbol, Telnyx::Models::WirelessBlocklistValueListParams::Type]
      required :type, enum: -> { Telnyx::WirelessBlocklistValueListParams::Type }

      # @!method initialize(type:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::WirelessBlocklistValueListParams} for more details.
      #
      #   @param type [Symbol, Telnyx::Models::WirelessBlocklistValueListParams::Type] The Wireless Blocklist type for which to list possible values (e.g., `country`,
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # The Wireless Blocklist type for which to list possible values (e.g., `country`,
      # `mcc`, `plmn`).
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
