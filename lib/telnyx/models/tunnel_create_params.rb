# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Tunnels#create
    class TunnelCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute name
      #   A user specified name for the tunnel.
      #
      #   @return [String]
      required :name, String

      # @!method initialize(name:, request_options: {})
      #   @param name [String] A user specified name for the tunnel.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
