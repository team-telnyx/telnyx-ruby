# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Dir#list
    class DirAPI < Telnyx::Internal::Type::BaseModel
      # @!attribute authorizer_email
      #
      #   @return [String, nil]
      optional :authorizer_email, String, nil?: true

      # @!attribute authorizer_name
      #
      #   @return [String, nil]
      optional :authorizer_name, String, nil?: true

      # @!attribute call_reasons
      #
      #   @return [Array<Telnyx::Models::DirAPI::CallReason>, nil]
      optional :call_reasons, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::DirAPI::CallReason] }

      # @!attribute certify_brand_is_accurate
      #
      #   @return [Boolean, nil]
      optional :certify_brand_is_accurate, Telnyx::Internal::Type::Boolean

      # @!attribute certify_ip_ownership
      #
      #   @return [Boolean, nil]
      optional :certify_ip_ownership, Telnyx::Internal::Type::Boolean

      # @!attribute certify_no_shaft_content
      #
      #   @return [Boolean, nil]
      optional :certify_no_shaft_content, Telnyx::Internal::Type::Boolean

      # @!attribute display_name
      #
      #   @return [String, nil]
      optional :display_name, String

      # @!attribute documents
      #
      #   @return [Array<Telnyx::Models::Document>, nil]
      optional :documents, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Document] }, nil?: true

      # @!attribute enterprise_id
      #
      #   @return [String, nil]
      optional :enterprise_id, String

      # @!attribute logo_url
      #
      #   @return [String, nil]
      optional :logo_url, String, nil?: true

      # @!attribute rejection_reasons
      #   Populated when `status` is `rejected`; cleared on `/submit` or successful
      #   approval.
      #
      #   @return [Array<Telnyx::Models::Dir::RejectionReason>, nil]
      optional :rejection_reasons,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Dir::RejectionReason] },
               nil?: true

      # @!attribute reselling
      #
      #   @return [Boolean, nil]
      optional :reselling, Telnyx::Internal::Type::Boolean

      # @!attribute status
      #   DIR lifecycle status.
      #
      #   - `draft` - newly created; editable; not yet submitted.
      #   - `submitted` / `in_review` - Telnyx is reviewing.
      #   - `verified` - approved; phone numbers may be attached.
      #   - `rejected` - Telnyx rejected this submission; `rejection_reasons` is
      #     populated; customer can edit and resubmit.
      #   - `unsuccessful` - system-side error during processing; customer can edit and
      #     resubmit.
      #   - `suspended` - temporarily disabled (e.g. by an active infringement claim).
      #   - `expired` - verification expired; customer must resubmit.
      #   - `infringement_claimed` - a trademark/impersonation claim is open against this
      #     DIR.
      #   - `permanently_rejected` - terminal; cannot be resubmitted.
      #
      #   @return [Symbol, Telnyx::Models::DirStatus, nil]
      optional :status, enum: -> { Telnyx::DirStatus }

      response_only do
        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute created_at
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute expiring_at
        #
        #   @return [Time, nil]
        optional :expiring_at, Time, nil?: true

        # @!attribute rejected_at
        #
        #   @return [Time, nil]
        optional :rejected_at, Time, nil?: true

        # @!attribute submitted_at
        #
        #   @return [Time, nil]
        optional :submitted_at, Time, nil?: true

        # @!attribute updated_at
        #
        #   @return [Time, nil]
        optional :updated_at, Time

        # @!attribute verified_at
        #
        #   @return [Time, nil]
        optional :verified_at, Time, nil?: true
      end

      # @!method initialize(id: nil, authorizer_email: nil, authorizer_name: nil, call_reasons: nil, certify_brand_is_accurate: nil, certify_ip_ownership: nil, certify_no_shaft_content: nil, created_at: nil, display_name: nil, documents: nil, enterprise_id: nil, expiring_at: nil, logo_url: nil, rejected_at: nil, rejection_reasons: nil, reselling: nil, status: nil, submitted_at: nil, updated_at: nil, verified_at: nil)
      #   Some parameter documentations has been truncated, see {Telnyx::Models::DirAPI}
      #   for more details.
      #
      #   @param id [String]
      #
      #   @param authorizer_email [String, nil]
      #
      #   @param authorizer_name [String, nil]
      #
      #   @param call_reasons [Array<Telnyx::Models::DirAPI::CallReason>]
      #
      #   @param certify_brand_is_accurate [Boolean]
      #
      #   @param certify_ip_ownership [Boolean]
      #
      #   @param certify_no_shaft_content [Boolean]
      #
      #   @param created_at [Time]
      #
      #   @param display_name [String]
      #
      #   @param documents [Array<Telnyx::Models::Document>, nil]
      #
      #   @param enterprise_id [String]
      #
      #   @param expiring_at [Time, nil]
      #
      #   @param logo_url [String, nil]
      #
      #   @param rejected_at [Time, nil]
      #
      #   @param rejection_reasons [Array<Telnyx::Models::Dir::RejectionReason>, nil] Populated when `status` is `rejected`; cleared on `/submit` or successful approv
      #
      #   @param reselling [Boolean]
      #
      #   @param status [Symbol, Telnyx::Models::DirStatus] DIR lifecycle status.
      #
      #   @param submitted_at [Time, nil]
      #
      #   @param updated_at [Time]
      #
      #   @param verified_at [Time, nil]

      class CallReason < Telnyx::Internal::Type::BaseModel
        # @!attribute reason
        #
        #   @return [String, nil]
        optional :reason, String

        response_only do
          # @!attribute created_at
          #
          #   @return [Time, nil]
          optional :created_at, Time
        end

        # @!method initialize(created_at: nil, reason: nil)
        #   @param created_at [Time]
        #   @param reason [String]
      end
    end
  end
end
