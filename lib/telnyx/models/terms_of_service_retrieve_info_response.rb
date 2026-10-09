# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::TermsOfService#retrieve_info
    class TermsOfServiceRetrieveInfoResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute agreements
      #
      #   @return [Array<Telnyx::Models::TermsOfServiceRetrieveInfoResponse::Agreement>, nil]
      optional :agreements,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::TermsOfServiceRetrieveInfoResponse::Agreement] }

      # @!method initialize(agreements: nil)
      #   @param agreements [Array<Telnyx::Models::TermsOfServiceRetrieveInfoResponse::Agreement>]

      class Agreement < Telnyx::Internal::Type::BaseModel
        # @!attribute current_version
        #   The latest published version of these terms.
        #
        #   @return [String, nil]
        optional :current_version, String

        # @!attribute description
        #   A short summary of the product these terms cover.
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute effective_date
        #   The date this version took effect.
        #
        #   @return [Date, nil]
        optional :effective_date, Date

        # @!attribute product_type
        #   Telnyx product the Terms of Service apply to.
        #
        #   @return [Symbol, Telnyx::Models::TermsOfService::TosProductType, nil]
        optional :product_type, enum: -> { Telnyx::TermsOfService::TosProductType }

        # @!attribute terms_url
        #   A link to the full terms text.
        #
        #   @return [String, nil]
        optional :terms_url, String

        # @!method initialize(current_version: nil, description: nil, effective_date: nil, product_type: nil, terms_url: nil)
        #   @param current_version [String] The latest published version of these terms.
        #
        #   @param description [String] A short summary of the product these terms cover.
        #
        #   @param effective_date [Date] The date this version took effect.
        #
        #   @param product_type [Symbol, Telnyx::Models::TermsOfService::TosProductType] Telnyx product the Terms of Service apply to.
        #
        #   @param terms_url [String] A link to the full terms text.
      end
    end
  end
end
