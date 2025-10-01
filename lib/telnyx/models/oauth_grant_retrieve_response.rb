# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::OAuthGrants#retrieve
    class OAuthGrantRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::OAuthGrant, nil]
      optional :data, -> { Telnyx::OAuthGrant }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::OAuthGrant]
    end
  end
end
