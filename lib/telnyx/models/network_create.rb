# frozen_string_literal: true

module Telnyx
  module Models
    class NetworkCreate < Telnyx::Models::Record
      # @!attribute name
      #   A user specified name for the network.
      #
      #   @return [String]
      required :name, String

      response_only do
        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [String, nil]
        optional :record_type, String
      end

      # @!method initialize(name:, record_type: nil)
      #   @param name [String] A user specified name for the network.
      #
      #   @param record_type [String] Identifies the type of the resource.
    end
  end
end
