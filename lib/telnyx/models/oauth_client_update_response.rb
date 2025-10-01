# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::OAuthClients#update
    class OAuthClientUpdateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::OAuthClient, nil]
      optional :data, -> { Telnyx::OAuthClient }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::OAuthClient]
    end
  end
end
