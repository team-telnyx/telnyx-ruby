# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::WirelessBlocklists#update
    class WirelessBlocklistUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute name
      #   The name of the Wireless Blocklist.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute values
      #   Values to block. The values here depend on the `type` of Wireless Blocklist.
      #
      #   @return [Array<String>, nil]
      optional :values, Telnyx::Internal::Type::ArrayOf[String]

      # @!method initialize(id:, name: nil, values: nil, request_options: {})
      #   @param id [String]
      #
      #   @param name [String] The name of the Wireless Blocklist.
      #
      #   @param values [Array<String>] Values to block. The values here depend on the `type` of Wireless Blocklist.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
