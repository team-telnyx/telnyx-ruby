# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::WirelessBlocklists#update
    class WirelessBlocklistUpdateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::WirelessWirelessBlocklist, nil]
      optional :data, -> { Telnyx::WirelessWirelessBlocklist }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::WirelessWirelessBlocklist]
    end
  end
end
