# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Networks#list
    class NetworkListResponse < Telnyx::Models::Record
      # @!attribute name
      #   A user specified name for the network.
      #
      #   @return [String, nil]
      optional :name, String

      # @!method initialize(name: nil)
      #   @param name [String] A user specified name for the network.
    end
  end
end
