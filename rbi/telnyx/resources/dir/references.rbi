# typed: strong

module Telnyx
  module Resources
    class Dir
      # Submit and manage the two business references and one financial reference that
      # vouch for a DIR. References are contacted to confirm the business identity
      # during vetting.
      class References
        # Submit the two business references and one financial reference for a DIR.
        #
        # The DIR's authorizer email must be verified first (see the email-verification
        # endpoint). Until it is, this returns `409` and no references are stored.
        #
        # The request body carries exactly two business references plus one financial
        # reference. On success the references are stored and the response echoes them in
        # the same shape as the GET. Submitting again converges on the already-stored
        # references rather than erroring.
        sig do
          params(
            dir_id: String,
            business_references: T::Array[Telnyx::Dir::ReferenceInput::OrHash],
            financial_reference: Telnyx::Dir::ReferenceInput::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Dir::ReferenceList)
        end
        def create(
          # The DIR id. Lowercase UUID.
          dir_id,
          # Exactly two business references.
          business_references:,
          # One reference supplied at submit. The reference type is implied by the field
          # that carries it (business_references vs financial_reference).
          financial_reference:,
          request_options: {}
        )
        end

        # Partially update one reference, addressed by the DIR id plus the reference's
        # type (business or financial) and slot.
        #
        # Cosmetic fields (full name, job title, organization, relationship, email) are
        # always editable. The phone number and timezone may only be changed while a
        # scheduled call has not yet been dialed; if a call is in progress or all attempts
        # are complete, those fields are locked. Changing the timezone reschedules any
        # pending call into the new local calling window.
        sig do
          params(
            slot: Integer,
            dir_id: String,
            ref_type: Telnyx::Dir::ReferenceUpdateParams::RefType::OrSymbol,
            email: String,
            full_name: String,
            job_title: T.nilable(String),
            organization: T.nilable(String),
            phone_e164: String,
            relationship_to_registrant: T.nilable(String),
            timezone: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Dir::ReferenceUpdateResponse)
        end
        def update(
          # Path param: Reference slot. Business references use slots 0 and 1; the financial
          # reference uses slot 0.
          slot,
          # Path param: The DIR id. Lowercase UUID.
          dir_id:,
          # Path param: Reference type to address.
          ref_type:,
          # Body param: Reference contact email address.
          email: nil,
          # Body param: Full name of the reference contact.
          full_name: nil,
          # Body param: Job title of the reference contact.
          job_title: nil,
          # Body param: Organization the reference contact belongs to.
          organization: nil,
          # Body param: Reference phone number in E.164 format.
          phone_e164: nil,
          # Body param: How the reference contact is related to the registering business.
          relationship_to_registrant: nil,
          # Body param: IANA timezone id for the reference.
          timezone: nil,
          request_options: {}
        )
        end

        # List the business and financial references submitted for a DIR.
        #
        # Returns the two business references (slots 0 and 1) followed by the single
        # financial reference. Each entry carries only the customer-supplied details
        # (name, title, organization, relationship, phone, email, timezone). Returns an
        # empty list when no references were submitted.
        sig do
          params(
            dir_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Dir::ReferenceList)
        end
        def list(
          # The DIR id. Lowercase UUID.
          dir_id,
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
