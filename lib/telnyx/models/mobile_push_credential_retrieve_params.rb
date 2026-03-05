# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MobilePushCredentials#retrieve
    class MobilePushCredentialRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute push_credential_id
      #
      #   @return [String]
      required :push_credential_id, String

      # @!method initialize(push_credential_id:, request_options: {})
      #   @param push_credential_id [String]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
