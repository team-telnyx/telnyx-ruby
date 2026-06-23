# typed: strong

module Telnyx
  module Models
    class DirAPI < Telnyx::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Telnyx::DirAPI, Telnyx::Internal::AnyHash) }

      sig { returns(T.nilable(String)) }
      attr_accessor :authorizer_email

      sig { returns(T.nilable(String)) }
      attr_accessor :authorizer_name

      sig { returns(T.nilable(T::Array[Telnyx::DirAPI::CallReason])) }
      attr_reader :call_reasons

      sig do
        params(call_reasons: T::Array[Telnyx::DirAPI::CallReason::OrHash]).void
      end
      attr_writer :call_reasons

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :certify_brand_is_accurate

      sig { params(certify_brand_is_accurate: T::Boolean).void }
      attr_writer :certify_brand_is_accurate

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :certify_ip_ownership

      sig { params(certify_ip_ownership: T::Boolean).void }
      attr_writer :certify_ip_ownership

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :certify_no_shaft_content

      sig { params(certify_no_shaft_content: T::Boolean).void }
      attr_writer :certify_no_shaft_content

      sig { returns(T.nilable(String)) }
      attr_reader :display_name

      sig { params(display_name: String).void }
      attr_writer :display_name

      sig { returns(T.nilable(T::Array[Telnyx::Document])) }
      attr_accessor :documents

      sig { returns(T.nilable(String)) }
      attr_reader :enterprise_id

      sig { params(enterprise_id: String).void }
      attr_writer :enterprise_id

      sig { returns(T.nilable(String)) }
      attr_accessor :logo_url

      # Populated when `status` is `rejected`; cleared on `/submit` or successful
      # approval.
      sig { returns(T.nilable(T::Array[Telnyx::Dir::RejectionReason])) }
      attr_accessor :rejection_reasons

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :reselling

      sig { params(reselling: T::Boolean).void }
      attr_writer :reselling

      # DIR lifecycle status.
      #
      # - `draft` - newly created; editable; not yet submitted.
      # - `submitted` / `in_review` - Telnyx is reviewing.
      # - `verified` - approved; phone numbers may be attached.
      # - `rejected` - Telnyx rejected this submission; `rejection_reasons` is
      #   populated; customer can edit and resubmit.
      # - `unsuccessful` - system-side error during processing; customer can edit and
      #   resubmit.
      # - `suspended` - temporarily disabled (e.g. by an active infringement claim).
      # - `expired` - verification expired; customer must resubmit.
      # - `infringement_claimed` - a trademark/impersonation claim is open against this
      #   DIR.
      # - `permanently_rejected` - terminal; cannot be resubmitted.
      sig { returns(T.nilable(Telnyx::DirStatus::TaggedSymbol)) }
      attr_reader :status

      sig { params(status: Telnyx::DirStatus::OrSymbol).void }
      attr_writer :status

      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :expiring_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :rejected_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :submitted_at

      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :verified_at

      sig do
        params(
          id: String,
          authorizer_email: T.nilable(String),
          authorizer_name: T.nilable(String),
          call_reasons: T::Array[Telnyx::DirAPI::CallReason::OrHash],
          certify_brand_is_accurate: T::Boolean,
          certify_ip_ownership: T::Boolean,
          certify_no_shaft_content: T::Boolean,
          created_at: Time,
          display_name: String,
          documents: T.nilable(T::Array[Telnyx::Document::OrHash]),
          enterprise_id: String,
          expiring_at: T.nilable(Time),
          logo_url: T.nilable(String),
          rejected_at: T.nilable(Time),
          rejection_reasons:
            T.nilable(T::Array[Telnyx::Dir::RejectionReason::OrHash]),
          reselling: T::Boolean,
          status: Telnyx::DirStatus::OrSymbol,
          submitted_at: T.nilable(Time),
          updated_at: Time,
          verified_at: T.nilable(Time)
        ).returns(T.attached_class)
      end
      def self.new(
        id: nil,
        authorizer_email: nil,
        authorizer_name: nil,
        call_reasons: nil,
        certify_brand_is_accurate: nil,
        certify_ip_ownership: nil,
        certify_no_shaft_content: nil,
        created_at: nil,
        display_name: nil,
        documents: nil,
        enterprise_id: nil,
        expiring_at: nil,
        logo_url: nil,
        rejected_at: nil,
        # Populated when `status` is `rejected`; cleared on `/submit` or successful
        # approval.
        rejection_reasons: nil,
        reselling: nil,
        # DIR lifecycle status.
        #
        # - `draft` - newly created; editable; not yet submitted.
        # - `submitted` / `in_review` - Telnyx is reviewing.
        # - `verified` - approved; phone numbers may be attached.
        # - `rejected` - Telnyx rejected this submission; `rejection_reasons` is
        #   populated; customer can edit and resubmit.
        # - `unsuccessful` - system-side error during processing; customer can edit and
        #   resubmit.
        # - `suspended` - temporarily disabled (e.g. by an active infringement claim).
        # - `expired` - verification expired; customer must resubmit.
        # - `infringement_claimed` - a trademark/impersonation claim is open against this
        #   DIR.
        # - `permanently_rejected` - terminal; cannot be resubmitted.
        status: nil,
        submitted_at: nil,
        updated_at: nil,
        verified_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            authorizer_email: T.nilable(String),
            authorizer_name: T.nilable(String),
            call_reasons: T::Array[Telnyx::DirAPI::CallReason],
            certify_brand_is_accurate: T::Boolean,
            certify_ip_ownership: T::Boolean,
            certify_no_shaft_content: T::Boolean,
            created_at: Time,
            display_name: String,
            documents: T.nilable(T::Array[Telnyx::Document]),
            enterprise_id: String,
            expiring_at: T.nilable(Time),
            logo_url: T.nilable(String),
            rejected_at: T.nilable(Time),
            rejection_reasons:
              T.nilable(T::Array[Telnyx::Dir::RejectionReason]),
            reselling: T::Boolean,
            status: Telnyx::DirStatus::TaggedSymbol,
            submitted_at: T.nilable(Time),
            updated_at: Time,
            verified_at: T.nilable(Time)
          }
        )
      end
      def to_hash
      end

      class CallReason < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::DirAPI::CallReason, Telnyx::Internal::AnyHash)
          end

        sig { returns(T.nilable(String)) }
        attr_reader :reason

        sig { params(reason: String).void }
        attr_writer :reason

        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        sig do
          params(created_at: Time, reason: String).returns(T.attached_class)
        end
        def self.new(created_at: nil, reason: nil)
        end

        sig { override.returns({ created_at: Time, reason: String }) }
        def to_hash
        end
      end
    end
  end
end
