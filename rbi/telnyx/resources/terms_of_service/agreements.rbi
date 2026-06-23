# typed: strong

module Telnyx
  module Resources
    class TermsOfService
      # Accept and review the Branded Calling and Phone Number Reputation terms of
      # service.
      class Agreements
        # Retrieve a single ToS agreement record. Returns `404` if the agreement does not
        # exist or does not belong to the authenticated user.
        sig do
          params(
            agreement_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::TermsOfService::TosAgreementWrapped)
        end
        def retrieve(
          # Unique identifier of the agreement.
          agreement_id,
          request_options: {}
        )
        end

        # Returns the Terms of Service agreements the authenticated user has on file. Each
        # entry records the version agreed to and when. Most users only have one agreement
        # per product, but if the ToS is updated and the user re-agrees a new entry is
        # added.
        #
        # Results are paginated with the standard `page[number]` / `page[size]`
        # parameters; the response uses the standard `{data, meta}` JSON:API envelope.
        #
        # By default this returns agreements for **all** products the user has agreed to.
        # Pass the `product_type` query parameter to scope the result to a single product.
        sig do
          params(
            page_number: Integer,
            page_size: Integer,
            product_type: Telnyx::TermsOfService::TosProductType::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPagination[
              Telnyx::TermsOfService::TosAgreement
            ]
          )
        end
        def list(
          # 1-based page number. Out-of-range values return an empty page with correct meta.
          page_number: nil,
          # Items per page. Maximum 250; values above are clamped to 250.
          page_size: nil,
          # Optional filter. Omit to list the user's agreements for **every** product
          # (branded_calling and number_reputation); pass a value to return only that
          # product's agreements.
          product_type: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
