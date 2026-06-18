# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Networks#retrieve
    class NetworkRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::Network, nil]
      optional :data, -> { Telnyx::Network }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::Network]
    end
  end
end
