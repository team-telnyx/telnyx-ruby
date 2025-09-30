# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::OAuth#grants
    class OAuthGrantsParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute allowed
      #   Whether the grant is allowed
      #
      #   @return [Boolean]
      required :allowed, Telnyx::Internal::Type::Boolean

      # @!attribute consent_token
      #   Consent token
      #
      #   @return [String]
      required :consent_token, String

      # @!method initialize(allowed:, consent_token:, request_options: {})
      #   @param allowed [Boolean] Whether the grant is allowed
      #
      #   @param consent_token [String] Consent token
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
