# frozen_string_literal: true

module Telnyx
  module Models
    class PublicInternetGateway < Telnyx::Models::Record
      # @!attribute name
      #   A user specified name for the interface.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute network_id
      #   The id of the network associated with the interface.
      #
      #   @return [String, nil]
      optional :network_id, String

      # @!attribute region_code
      #   The region interface is deployed to.
      #
      #   @return [String, nil]
      optional :region_code, String

      # @!method initialize(name: nil, network_id: nil, region_code: nil)
      #   @param name [String] A user specified name for the interface.
      #
      #   @param network_id [String] The id of the network associated with the interface.
      #
      #   @param region_code [String] The region interface is deployed to.
    end
  end
end
