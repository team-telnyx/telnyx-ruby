# frozen_string_literal: true

module Telnyx
  module Models
    module TermsOfService
      # @see Telnyx::Resources::TermsOfService::NumberReputation#agree
      class NumberReputationAgreeResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #   A recorded user agreement to a product's Terms of Service. The `user_id` is
        #   intentionally NOT echoed back on this public surface - the caller already knows
        #   their own identity.
        #
        #   @return [Telnyx::Models::TermsOfService::NumberReputationAgreeResponse::Data]
        required :data, -> { Telnyx::Models::TermsOfService::NumberReputationAgreeResponse::Data }

        # @!method initialize(data:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::TermsOfService::NumberReputationAgreeResponse} for more
        #   details.
        #
        #   @param data [Telnyx::Models::TermsOfService::NumberReputationAgreeResponse::Data] A recorded user agreement to a product's Terms of Service. The `user_id` is inte

        # @see Telnyx::Models::TermsOfService::NumberReputationAgreeResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute product_type
          #   Telnyx product the Terms of Service apply to.
          #
          #   @return [Symbol, Telnyx::Models::TermsOfService::NumberReputationAgreeResponse::Data::ProductType, nil]
          optional :product_type,
                   enum: -> { Telnyx::Models::TermsOfService::NumberReputationAgreeResponse::Data::ProductType }

          # @!attribute terms_version
          #
          #   @return [String, nil]
          optional :terms_version, String

          response_only do
            # @!attribute id
            #
            #   @return [String, nil]
            optional :id, String

            # @!attribute agreed_at
            #
            #   @return [Time, nil]
            optional :agreed_at, Time

            # @!attribute created_at
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
          #   @param id [String]
          #
          #   @param agreed_at [Time]
          #
          #   @param created_at [Time]
          #
          #   @param product_type [Symbol, Telnyx::Models::TermsOfService::NumberReputationAgreeResponse::Data::ProductType] Telnyx product the Terms of Service apply to.
          #
          #   @param terms_version [String]
          #
          #   @param version [String] Convenience alias of `terms_version`. Both keys are present on every response.

          # Telnyx product the Terms of Service apply to.
          #
          # @see Telnyx::Models::TermsOfService::NumberReputationAgreeResponse::Data#product_type
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
end
