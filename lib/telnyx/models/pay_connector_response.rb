# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PayConnectors#create
    class PayConnectorResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #   Organization-owned connector. Examples and config properties here describe
      #   generic connectors; listing is not restricted to that type unless
      #   filter[type]=generic is supplied. Passwords and bearer tokens are omitted, not
      #   masked. Defaults for auth_type and timeout need not appear in stored config.
      #
      #   @return [Telnyx::Models::PayConnector, nil]
      optional :data, -> { Telnyx::PayConnector }

      # @!method initialize(data: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::PayConnectorResponse} for more details.
      #
      #   @param data [Telnyx::Models::PayConnector] Organization-owned connector. Examples and config properties here describe gener
    end
  end
end
