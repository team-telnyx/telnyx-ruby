# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Verifications#retrieve
    class VerificationRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute verification_id
      #
      #   @return [String]
      required :verification_id, String

      # @!method initialize(verification_id:, request_options: {})
      #   @param verification_id [String]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
