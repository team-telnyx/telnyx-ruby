# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::GlobalIPHealthChecks#retrieve
    class GlobalIPHealthCheckRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::GlobalIPHealthCheck, nil]
      optional :data, -> { Telnyx::GlobalIPHealthCheck }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::GlobalIPHealthCheck]
    end
  end
end
