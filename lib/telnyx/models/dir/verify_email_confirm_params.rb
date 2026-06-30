# frozen_string_literal: true

module Telnyx
  module Models
    module Dir
      # @see Telnyx::Resources::Dir::VerifyEmail#confirm
      class VerifyEmailConfirmParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute dir_id
        #
        #   @return [String]
        required :dir_id, String

        # @!attribute code
        #   The 6-digit code sent to the authorizer email.
        #
        #   @return [String]
        required :code, String

        # @!method initialize(dir_id:, code:, request_options: {})
        #   @param dir_id [String]
        #
        #   @param code [String] The 6-digit code sent to the authorizer email.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
