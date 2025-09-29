# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::FqdnConnections#delete
    class FqdnConnectionDeleteResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::FqdnConnection, nil]
      optional :data, -> { Telnyx::FqdnConnection }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::FqdnConnection]
    end
  end
end
