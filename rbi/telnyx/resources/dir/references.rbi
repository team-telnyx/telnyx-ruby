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
        # reference. The first submission stores them and returns `201`. Resubmitting
        # returns `200`: identical values are simply confirmed and nothing is written,
        # while changed values replace those references.
        #
        # Replacing a reference is allowed only while the DIR itself is still editable,
        # the same window in which a single reference may be updated; once the DIR has
        # been submitted for vetting this returns `400`. A replaced reference's pending
        # verification call is cancelled and its dial-in code stops working, and the
        # replacement contact is emailed fresh scheduling details. References whose
        # details did not change keep their existing call, code, and the notice already
        # sent to them.
        #
        # The response always echoes the stored references in the same shape as the GET.
        #
        # Who qualifies: the two business references confirm the company's reputation and
        # operations. Each should be a senior contact at an organization the business
        # works with, such as a vendor, partner, or client: a C-suite executive (CEO, CFO,
        # CTO, COO), an owner or founder as reflected in the company's corporate records,
        # or a senior manager, director, or executive. The financial reference confirms
        # the company pays its bills and should be a licensed certified public accountant
        # (CPA) the company uses, a contact at a bank or financial institution that has a
        # relationship with the company, or a reasonable alternative banking or financial
        # reference.
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
          # Exactly two business references. Array order determines each one's slot: the
          # first entry becomes slot 1 and the second becomes slot 2. Those slots are what
          # you pass when updating a single reference later. Each should be a senior contact
          # who can speak to your company's reputation and operations: a C-suite executive
          # (CEO, CFO, CTO, COO), an owner or founder as reflected in your corporate
          # records, or a senior manager, director, or executive at an organization you work
          # with, such as a vendor, partner, or client.
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
          # Path param: Reference slot, counting from 1. Business references are slots 1 and
          # 2, matching the order they were sent in the `business_references` array; the
          # financial reference is slot 1. Every reference returned by the submit and list
          # endpoints carries its own `ref_type` and `slot`, so you do not need to derive
          # them.
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
        # Returns the two business references (slots 1 and 2) followed by the single
        # financial reference. Each entry carries its `ref_type` and `slot`, which
        # together address the reference when updating it, alongside the details supplied
        # when it was submitted (name, title, organization, relationship, phone, email,
        # timezone). No internal identifiers are exposed. Returns an empty list when no
        # references were submitted.
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
