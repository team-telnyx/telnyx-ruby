# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::OAuth#grants
    class OAuthGrantsResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute redirect_uri
      #   Redirect URI with authorization code or error
      #
      #   @return [String]
      required :redirect_uri, String

      # @!method initialize(redirect_uri:)
      #   @param redirect_uri [String] Redirect URI with authorization code or error
    end
  end
end
