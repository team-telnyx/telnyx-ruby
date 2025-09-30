# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::ExternalConnections#update_location
    class ExternalConnectionUpdateLocationParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute static_emergency_address_id
      #   A new static emergency address ID to update the location with
      #
      #   @return [String]
      required :static_emergency_address_id, String

      # @!method initialize(id:, static_emergency_address_id:, request_options: {})
      #   @param id [String]
      #
      #   @param static_emergency_address_id [String] A new static emergency address ID to update the location with
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
