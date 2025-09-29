# frozen_string_literal: true

module Telnyx
  module Models
    module Verifications
      module ByPhoneNumber
        # @see Telnyx::Resources::Verifications::ByPhoneNumber::Actions#verify
        class ActionVerifyParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute code
          #   This is the code the user submits for verification.
          #
          #   @return [String]
          required :code, String

          # @!attribute verify_profile_id
          #   The identifier of the associated Verify profile.
          #
          #   @return [String]
          required :verify_profile_id, String

          # @!method initialize(code:, verify_profile_id:, request_options: {})
          #   @param code [String] This is the code the user submits for verification.
          #
          #   @param verify_profile_id [String] The identifier of the associated Verify profile.
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
