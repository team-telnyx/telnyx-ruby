# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VerifyProfiles#delete
    class VerifyProfileDeleteParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute verify_profile_id
      #
      #   @return [String]
      required :verify_profile_id, String

      # @!method initialize(verify_profile_id:, request_options: {})
      #   @param verify_profile_id [String]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
