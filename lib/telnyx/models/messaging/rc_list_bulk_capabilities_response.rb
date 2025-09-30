# frozen_string_literal: true

module Telnyx
  module Models
    module Messaging
      # @see Telnyx::Resources::Messaging::Rcs#list_bulk_capabilities
      class RcListBulkCapabilitiesResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::Messaging::RcsCapabilities>, nil]
        optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Messaging::RcsCapabilities] }

        # @!method initialize(data: nil)
        #   @param data [Array<Telnyx::Models::Messaging::RcsCapabilities>]
      end
    end
  end
end
