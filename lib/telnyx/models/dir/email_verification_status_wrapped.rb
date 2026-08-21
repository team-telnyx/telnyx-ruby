# frozen_string_literal: true

module Telnyx
  module Models
    module Dir
      # @see Telnyx::Resources::Dir::VerifyEmail#create
      class EmailVerificationStatusWrapped < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #   Verification state for a DIR's authorizer email.
        #
        #   @return [Telnyx::Models::Dir::EmailVerificationStatus]
        required :data, -> { Telnyx::Dir::EmailVerificationStatus }

        # @!method initialize(data:)
        #   @param data [Telnyx::Models::Dir::EmailVerificationStatus] Verification state for a DIR's authorizer email.
      end
    end
  end
end
