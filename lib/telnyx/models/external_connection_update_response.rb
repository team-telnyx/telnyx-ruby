# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::ExternalConnections#update
    class ExternalConnectionUpdateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::ExternalConnection, nil]
      optional :data, -> { Telnyx::ExternalConnection }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::ExternalConnection]
    end
  end
end
