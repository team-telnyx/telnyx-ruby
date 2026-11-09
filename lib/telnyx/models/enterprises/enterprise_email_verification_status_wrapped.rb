# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      # @see Telnyx::Resources::Enterprises::VerifyEmail#create
      class EnterpriseEmailVerificationStatusWrapped < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #   Verification state for an enterprise account's contact email.
        #
        #   @return [Telnyx::Models::Enterprises::EnterpriseEmailVerificationStatus]
        required :data, -> { Telnyx::Enterprises::EnterpriseEmailVerificationStatus }

        # @!method initialize(data:)
        #   @param data [Telnyx::Models::Enterprises::EnterpriseEmailVerificationStatus] Verification state for an enterprise account's contact email.
      end
    end

    EnterpriseEmailVerificationStatusWrapped = Enterprises::EnterpriseEmailVerificationStatusWrapped
  end
end
