# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::WireguardInterfaces#create
    class WireguardInterfaceCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute body
      #
      #   @return [Telnyx::Models::WireguardInterfaceCreateParams::Body]
      required :body, -> { Telnyx::WireguardInterfaceCreateParams::Body }

      # @!method initialize(body:, request_options: {})
      #   @param body [Telnyx::Models::WireguardInterfaceCreateParams::Body]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Body < Telnyx::Models::WireguardInterface
        # @!attribute region_code
        #   The region the interface should be deployed to.
        #
        #   @return [String]
        required :region_code, String

        # @!method initialize(region_code:)
        #   @param region_code [String] The region the interface should be deployed to.
      end
    end
  end
end
