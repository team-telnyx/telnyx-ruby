# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Connections#retrieve
    class ConnectionRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::Connection, nil]
      optional :data, -> { Telnyx::Connection }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::Connection]
    end
  end
end
