# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::TermsOfService#status
    class TermsOfServiceStatusResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #   Whether the calling user has agreed to a product's current Terms of Service. The
      #   `user_id` is intentionally omitted on this public surface.
      #
      #   @return [Telnyx::Models::TermsOfServiceStatusResponse::Data]
      required :data, -> { Telnyx::Models::TermsOfServiceStatusResponse::Data }

      # @!method initialize(data:)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::TermsOfServiceStatusResponse} for more details.
      #
      #   @param data [Telnyx::Models::TermsOfServiceStatusResponse::Data] Whether the calling user has agreed to a product's current Terms of Service. The

      # @see Telnyx::Models::TermsOfServiceStatusResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute agreement_required
        #   `true` when the user must agree to the latest version before using the product.
        #   Equivalent to `!has_agreed`.
        #
        #   @return [Boolean]
        required :agreement_required, Telnyx::Internal::Type::Boolean

        # @!attribute current_terms_version
        #   Latest published version of the ToS for this product.
        #
        #   @return [String]
        required :current_terms_version, String

        # @!attribute has_agreed
        #   `true` if the user has agreed to the latest version.
        #
        #   @return [Boolean]
        required :has_agreed, Telnyx::Internal::Type::Boolean

        # @!attribute product_type
        #   Telnyx product the Terms of Service apply to.
        #
        #   @return [Symbol, Telnyx::Models::TermsOfServiceStatusResponse::Data::ProductType]
        required :product_type, enum: -> { Telnyx::Models::TermsOfServiceStatusResponse::Data::ProductType }

        # @!attribute agreed_at
        #
        #   @return [Time, nil]
        optional :agreed_at, Time, nil?: true

        # @!attribute agreed_version
        #   Version the user previously agreed to (may be older than
        #   `current_terms_version`). `null` if the user has never agreed.
        #
        #   @return [String, nil]
        optional :agreed_version, String, nil?: true

        # @!method initialize(agreement_required:, current_terms_version:, has_agreed:, product_type:, agreed_at: nil, agreed_version: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::TermsOfServiceStatusResponse::Data} for more details.
        #
        #   Whether the calling user has agreed to a product's current Terms of Service. The
        #   `user_id` is intentionally omitted on this public surface.
        #
        #   @param agreement_required [Boolean] `true` when the user must agree to the latest version before using the product.
        #
        #   @param current_terms_version [String] Latest published version of the ToS for this product.
        #
        #   @param has_agreed [Boolean] `true` if the user has agreed to the latest version.
        #
        #   @param product_type [Symbol, Telnyx::Models::TermsOfServiceStatusResponse::Data::ProductType] Telnyx product the Terms of Service apply to.
        #
        #   @param agreed_at [Time, nil]
        #
        #   @param agreed_version [String, nil] Version the user previously agreed to (may be older than `current_terms_version`

        # Telnyx product the Terms of Service apply to.
        #
        # @see Telnyx::Models::TermsOfServiceStatusResponse::Data#product_type
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
