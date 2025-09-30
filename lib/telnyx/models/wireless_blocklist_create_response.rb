# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::WirelessBlocklists#create
    class WirelessBlocklistCreateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::WirelessBlocklist, nil]
      optional :data, -> { Telnyx::WirelessBlocklist }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::WirelessBlocklist]
    end
  end
end
