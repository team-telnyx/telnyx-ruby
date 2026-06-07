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
        #
        #   @return [String, nil]
        optional :current_version, String

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute effective_date
        #
        #   @return [Date, nil]
        optional :effective_date, Date

        # @!attribute product_type
        #   Telnyx product the Terms of Service apply to.
        #
        #   @return [Symbol, Telnyx::Models::TermsOfServiceRetrieveInfoResponse::Agreement::ProductType, nil]
        optional :product_type,
                 enum: -> { Telnyx::Models::TermsOfServiceRetrieveInfoResponse::Agreement::ProductType }

        # @!attribute terms_url
        #
        #   @return [String, nil]
        optional :terms_url, String

        # @!method initialize(current_version: nil, description: nil, effective_date: nil, product_type: nil, terms_url: nil)
        #   @param current_version [String]
        #
        #   @param description [String]
        #
        #   @param effective_date [Date]
        #
        #   @param product_type [Symbol, Telnyx::Models::TermsOfServiceRetrieveInfoResponse::Agreement::ProductType] Telnyx product the Terms of Service apply to.
        #
        #   @param terms_url [String]

        # Telnyx product the Terms of Service apply to.
        #
        # @see Telnyx::Models::TermsOfServiceRetrieveInfoResponse::Agreement#product_type
        module ProductType
          extend Telnyx::Internal::Type::Enum

          BRANDED_CALLING = :branded_calling
          NUMBER_REPUTATION = :number_reputation

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
