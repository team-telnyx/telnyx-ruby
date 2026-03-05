# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Networks#update
    class NetworkUpdateParams < Telnyx::Models::NetworkCreate
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute network_id
      #
      #   @return [String]
      required :network_id, String

      # @!method initialize(network_id:, request_options: {})
      #   @param network_id [String]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
