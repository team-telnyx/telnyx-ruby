# frozen_string_literal: true

module Telnyx
  module Models
    class NetworkCreate < Telnyx::Models::Record
      # @!attribute name
      #   A user specified name for the network.
      #
      #   @return [String]
      required :name, String

      # @!method initialize(name:)
      #   @param name [String] A user specified name for the network.
    end
  end
end
