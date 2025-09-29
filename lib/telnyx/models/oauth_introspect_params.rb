# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::OAuth#introspect
    class OAuthIntrospectParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute token
      #   The token to introspect
      #
      #   @return [String]
      required :token, String

      # @!method initialize(token:, request_options: {})
      #   @param token [String] The token to introspect
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
