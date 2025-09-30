# frozen_string_literal: true

module Telnyx
  module Models
    module Messaging
      # @see Telnyx::Resources::Messaging::Rcs#retrieve_capabilities
      class RcRetrieveCapabilitiesResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Messaging::RcsCapabilities, nil]
        optional :data, -> { Telnyx::Messaging::RcsCapabilities }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::Messaging::RcsCapabilities]
      end
    end
  end
end
