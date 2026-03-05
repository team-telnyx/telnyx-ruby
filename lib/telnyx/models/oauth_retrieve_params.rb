# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::OAuth#retrieve
    class OAuthRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute consent_token
      #
      #   @return [String]
      required :consent_token, String

      # @!method initialize(consent_token:, request_options: {})
      #   @param consent_token [String]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
