# frozen_string_literal: true

module Telnyx
  module Models
    module FqdnConnections
      # @see Telnyx::Resources::FqdnConnections::FqdnAuthentication#patch_all
      class FqdnAuthenticationPatchAllResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::FqdnConnections::FqdnConnectionsFqdnAuthentication, nil]
        optional :data, -> { Telnyx::FqdnConnections::FqdnConnectionsFqdnAuthentication }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::FqdnConnections::FqdnConnectionsFqdnAuthentication]
      end
    end
  end
end
