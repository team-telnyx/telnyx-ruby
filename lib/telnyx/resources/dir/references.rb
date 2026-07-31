# frozen_string_literal: true

module Telnyx
  module Resources
    class Dir
      # Submit and manage the two business references and one financial reference that
      # vouch for a DIR. References are contacted to confirm the business identity
      # during vetting.
      class References
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Dir::ReferenceCreateParams} for more details.
        #
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
        #
        # @overload create(dir_id, business_references:, financial_reference:, request_options: {})
        #
        # @param dir_id [String] The DIR id. Lowercase UUID.
        #
        # @param business_references [Array<Telnyx::Models::Dir::ReferenceInput>] Exactly two business references. Array order determines each one's slot: the fir
        #
        # @param financial_reference [Telnyx::Models::Dir::ReferenceInput] One reference supplied at submit. The reference type is implied by the field tha
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Dir::ReferenceList]
        #
        # @see Telnyx::Models::Dir::ReferenceCreateParams
        def create(dir_id, params)
          parsed, options = Telnyx::Dir::ReferenceCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["dir/%1$s/references", dir_id],
            body: parsed,
            model: Telnyx::Dir::ReferenceList,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Dir::ReferenceUpdateParams} for more details.
        #
        # Partially update one reference, addressed by the DIR id plus the reference's
        # type (business or financial) and slot.
        #
        # Cosmetic fields (full name, job title, organization, relationship, email) are
        # always editable. The phone number and timezone may only be changed while a
        # scheduled call has not yet been dialed; if a call is in progress or all attempts
        # are complete, those fields are locked. Changing the timezone reschedules any
        # pending call into the new local calling window.
        #
        # @overload update(slot, dir_id:, ref_type:, email: nil, full_name: nil, job_title: nil, organization: nil, phone_e164: nil, relationship_to_registrant: nil, timezone: nil, request_options: {})
        #
        # @param slot [Integer] Path param: Reference slot, counting from 1. Business references are slots 1 and
        #
        # @param dir_id [String] Path param: The DIR id. Lowercase UUID.
        #
        # @param ref_type [Symbol, Telnyx::Models::Dir::ReferenceUpdateParams::RefType] Path param: Reference type to address.
        #
        # @param email [String] Body param: Reference contact email address.
        #
        # @param full_name [String] Body param: Full name of the reference contact.
        #
        # @param job_title [String, nil] Body param: Job title of the reference contact.
        #
        # @param organization [String, nil] Body param: Organization the reference contact belongs to.
        #
        # @param phone_e164 [String] Body param: Reference phone number in E.164 format.
        #
        # @param relationship_to_registrant [String, nil] Body param: How the reference contact is related to the registering business.
        #
        # @param timezone [String] Body param: IANA timezone id for the reference.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Dir::ReferenceUpdateResponse]
        #
        # @see Telnyx::Models::Dir::ReferenceUpdateParams
        def update(slot, params)
          parsed, options = Telnyx::Dir::ReferenceUpdateParams.dump_request(params)
          dir_id =
            parsed.delete(:dir_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          ref_type =
            parsed.delete(:ref_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :patch,
            path: ["dir/%1$s/references/%2$s/%3$s", dir_id, ref_type, slot],
            body: parsed,
            model: Telnyx::Models::Dir::ReferenceUpdateResponse,
            options: options
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
        #
        # @overload list(dir_id, request_options: {})
        #
        # @param dir_id [String] The DIR id. Lowercase UUID.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Dir::ReferenceList]
        #
        # @see Telnyx::Models::Dir::ReferenceListParams
        def list(dir_id, params = {})
          @client.request(
            method: :get,
            path: ["dir/%1$s/references", dir_id],
            model: Telnyx::Dir::ReferenceList,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
