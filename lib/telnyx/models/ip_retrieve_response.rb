# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::IPs#retrieve
    class IPRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::IP, nil]
      optional :data, -> { Telnyx::IP }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::IP]
    end
  end
end
