# frozen_string_literal: true

module Telnyx
  module Models
    module TermsOfService
      # @see Telnyx::Resources::TermsOfService::Agreements#retrieve
      class TosAgreementWrapped < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #   A recorded user agreement to a product's Terms of Service. The `user_id` is
        #   intentionally NOT echoed back on this public surface - the caller already knows
        #   their own identity.
        #
        #   @return [Telnyx::Models::TermsOfService::TosAgreement]
        required :data, -> { Telnyx::TermsOfService::TosAgreement }

        # @!method initialize(data:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::TermsOfService::TosAgreementWrapped} for more details.
        #
        #   @param data [Telnyx::Models::TermsOfService::TosAgreement] A recorded user agreement to a product's Terms of Service. The `user_id` is inte
      end
    end
  end
end
