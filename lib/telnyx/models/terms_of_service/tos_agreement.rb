# frozen_string_literal: true

module Telnyx
  module Models
    module TermsOfService
      # @see Telnyx::Resources::TermsOfService::Agreements#list
      class TosAgreement < Telnyx::Internal::Type::BaseModel
        # @!attribute product_type
        #   Telnyx product the Terms of Service apply to.
        #
        #   @return [Symbol, Telnyx::Models::TermsOfService::TosProductType, nil]
        optional :product_type, enum: -> { Telnyx::TermsOfService::TosProductType }

        # @!attribute terms_version
        #   The version of the terms you accepted.
        #
        #   @return [String, nil]
        optional :terms_version, String

        response_only do
          # @!attribute id
          #   The unique identifier of this recorded agreement.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute agreed_at
          #   When you accepted this version of the terms.
          #
          #   @return [Time, nil]
          optional :agreed_at, Time

          # @!attribute created_at
          #   When this agreement record was created.
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute version
          #   Convenience alias of `terms_version`. Both keys are present on every response.
          #
          #   @return [String, nil]
          optional :version, String
        end

        # @!method initialize(id: nil, agreed_at: nil, created_at: nil, product_type: nil, terms_version: nil, version: nil)
        #   A recorded user agreement to a product's Terms of Service. The `user_id` is
        #   intentionally NOT echoed back on this public surface - the caller already knows
        #   their own identity.
        #
        #   @param id [String] The unique identifier of this recorded agreement.
        #
        #   @param agreed_at [Time] When you accepted this version of the terms.
        #
        #   @param created_at [Time] When this agreement record was created.
        #
        #   @param product_type [Symbol, Telnyx::Models::TermsOfService::TosProductType] Telnyx product the Terms of Service apply to.
        #
        #   @param terms_version [String] The version of the terms you accepted.
        #
        #   @param version [String] Convenience alias of `terms_version`. Both keys are present on every response.
      end
    end
  end
end
