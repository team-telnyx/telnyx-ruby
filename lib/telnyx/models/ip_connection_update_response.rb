# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::IPConnections#update
    class IPConnectionUpdateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::IPConnection, nil]
      optional :data, -> { Telnyx::IPConnection }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::IPConnection]
    end
  end
end
