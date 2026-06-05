# typed: strong

module Telnyx
  module Models
    class DirSubmitResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::Models::DirSubmitResponse, Telnyx::Internal::AnyHash)
        end

      sig { returns(Telnyx::Models::DirSubmitResponse::Data) }
      attr_reader :data

      sig { params(data: Telnyx::Models::DirSubmitResponse::Data::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::Models::DirSubmitResponse::Data::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data:)
      end

      sig do
        override.returns({ data: Telnyx::Models::DirSubmitResponse::Data })
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::DirSubmitResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_accessor :authorizer_email

        sig { returns(T.nilable(String)) }
        attr_accessor :authorizer_name

        sig do
          returns(
            T.nilable(
              T::Array[Telnyx::Models::DirSubmitResponse::Data::CallReason]
            )
          )
        end
        attr_reader :call_reasons

        sig do
          params(
            call_reasons:
              T::Array[
                Telnyx::Models::DirSubmitResponse::Data::CallReason::OrHash
              ]
          ).void
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

        sig do
          returns(
            T.nilable(
              T::Array[Telnyx::Models::DirSubmitResponse::Data::Document]
            )
          )
        end
        attr_accessor :documents

        sig { returns(T.nilable(String)) }
        attr_reader :enterprise_id

        sig { params(enterprise_id: String).void }
        attr_writer :enterprise_id

        sig { returns(T.nilable(String)) }
        attr_accessor :logo_url

        # Populated when `status` is `rejected`; cleared on `/submit` or successful
        # approval.
        sig do
          returns(
            T.nilable(
              T::Array[Telnyx::Models::DirSubmitResponse::Data::RejectionReason]
            )
          )
        end
        attr_accessor :rejection_reasons

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :reselling

        sig { params(reselling: T::Boolean).void }
        attr_writer :reselling

        # DIR lifecycle status.
        #
        # - `draft` — newly created; editable; not yet submitted.
        # - `submitted` / `in_review` — Telnyx is reviewing.
        # - `verified` — approved; phone numbers may be attached.
        # - `rejected` — Telnyx rejected this submission; `rejection_reasons` is
        #   populated; customer can edit and resubmit.
        # - `unsuccessful` — system-side error during processing; customer can edit and
        #   resubmit.
        # - `suspended` — temporarily disabled (e.g. by an active infringement claim).
        # - `expired` — verification expired; customer must resubmit.
        # - `infringement_claimed` — a trademark/impersonation claim is open against this
        #   DIR.
        # - `permanently_rejected` — terminal; cannot be resubmitted.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::DirSubmitResponse::Data::Status::TaggedSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status: Telnyx::Models::DirSubmitResponse::Data::Status::OrSymbol
          ).void
        end
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
            call_reasons:
              T::Array[
                Telnyx::Models::DirSubmitResponse::Data::CallReason::OrHash
              ],
            certify_brand_is_accurate: T::Boolean,
            certify_ip_ownership: T::Boolean,
            certify_no_shaft_content: T::Boolean,
            created_at: Time,
            display_name: String,
            documents:
              T.nilable(
                T::Array[
                  Telnyx::Models::DirSubmitResponse::Data::Document::OrHash
                ]
              ),
            enterprise_id: String,
            expiring_at: T.nilable(Time),
            logo_url: T.nilable(String),
            rejected_at: T.nilable(Time),
            rejection_reasons:
              T.nilable(
                T::Array[
                  Telnyx::Models::DirSubmitResponse::Data::RejectionReason::OrHash
                ]
              ),
            reselling: T::Boolean,
            status: Telnyx::Models::DirSubmitResponse::Data::Status::OrSymbol,
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
          # - `draft` — newly created; editable; not yet submitted.
          # - `submitted` / `in_review` — Telnyx is reviewing.
          # - `verified` — approved; phone numbers may be attached.
          # - `rejected` — Telnyx rejected this submission; `rejection_reasons` is
          #   populated; customer can edit and resubmit.
          # - `unsuccessful` — system-side error during processing; customer can edit and
          #   resubmit.
          # - `suspended` — temporarily disabled (e.g. by an active infringement claim).
          # - `expired` — verification expired; customer must resubmit.
          # - `infringement_claimed` — a trademark/impersonation claim is open against this
          #   DIR.
          # - `permanently_rejected` — terminal; cannot be resubmitted.
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
              call_reasons:
                T::Array[Telnyx::Models::DirSubmitResponse::Data::CallReason],
              certify_brand_is_accurate: T::Boolean,
              certify_ip_ownership: T::Boolean,
              certify_no_shaft_content: T::Boolean,
              created_at: Time,
              display_name: String,
              documents:
                T.nilable(
                  T::Array[Telnyx::Models::DirSubmitResponse::Data::Document]
                ),
              enterprise_id: String,
              expiring_at: T.nilable(Time),
              logo_url: T.nilable(String),
              rejected_at: T.nilable(Time),
              rejection_reasons:
                T.nilable(
                  T::Array[
                    Telnyx::Models::DirSubmitResponse::Data::RejectionReason
                  ]
                ),
              reselling: T::Boolean,
              status:
                Telnyx::Models::DirSubmitResponse::Data::Status::TaggedSymbol,
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
              T.any(
                Telnyx::Models::DirSubmitResponse::Data::CallReason,
                Telnyx::Internal::AnyHash
              )
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

        class Document < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::DirSubmitResponse::Data::Document,
                Telnyx::Internal::AnyHash
              )
            end

          # Id returned by the Telnyx Documents API after you upload the file (upload via
          # `POST /v2/documents`; see https://developers.telnyx.com/api/documents).
          sig { returns(String) }
          attr_accessor :document_id

          # Type of supporting document. Pick the closest match to what the file actually
          # contains; `other` triggers manual vetting and may slow approval. The matching
          # short_name reference list is at `GET /v2/dir/document_types`.
          sig do
            returns(
              Telnyx::Models::DirSubmitResponse::Data::Document::DocumentType::TaggedSymbol
            )
          end
          attr_accessor :document_type

          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { params(description: String).void }
          attr_writer :description

          sig do
            params(
              document_id: String,
              document_type:
                Telnyx::Models::DirSubmitResponse::Data::Document::DocumentType::OrSymbol,
              description: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Id returned by the Telnyx Documents API after you upload the file (upload via
            # `POST /v2/documents`; see https://developers.telnyx.com/api/documents).
            document_id:,
            # Type of supporting document. Pick the closest match to what the file actually
            # contains; `other` triggers manual vetting and may slow approval. The matching
            # short_name reference list is at `GET /v2/dir/document_types`.
            document_type:,
            description: nil
          )
          end

          sig do
            override.returns(
              {
                document_id: String,
                document_type:
                  Telnyx::Models::DirSubmitResponse::Data::Document::DocumentType::TaggedSymbol,
                description: String
              }
            )
          end
          def to_hash
          end

          # Type of supporting document. Pick the closest match to what the file actually
          # contains; `other` triggers manual vetting and may slow approval. The matching
          # short_name reference list is at `GET /v2/dir/document_types`.
          module DocumentType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::DirSubmitResponse::Data::Document::DocumentType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            LETTER_OF_AUTHORIZATION =
              T.let(
                :letter_of_authorization,
                Telnyx::Models::DirSubmitResponse::Data::Document::DocumentType::TaggedSymbol
              )
            BUSINESS_REGISTRATION =
              T.let(
                :business_registration,
                Telnyx::Models::DirSubmitResponse::Data::Document::DocumentType::TaggedSymbol
              )
            ARTICLES_OF_INCORPORATION =
              T.let(
                :articles_of_incorporation,
                Telnyx::Models::DirSubmitResponse::Data::Document::DocumentType::TaggedSymbol
              )
            TAX_DOCUMENT =
              T.let(
                :tax_document,
                Telnyx::Models::DirSubmitResponse::Data::Document::DocumentType::TaggedSymbol
              )
            EIN_LETTER =
              T.let(
                :ein_letter,
                Telnyx::Models::DirSubmitResponse::Data::Document::DocumentType::TaggedSymbol
              )
            TRADEMARK_REGISTRATION =
              T.let(
                :trademark_registration,
                Telnyx::Models::DirSubmitResponse::Data::Document::DocumentType::TaggedSymbol
              )
            WEBSITE_OWNERSHIP =
              T.let(
                :website_ownership,
                Telnyx::Models::DirSubmitResponse::Data::Document::DocumentType::TaggedSymbol
              )
            BUSINESS_LICENSE =
              T.let(
                :business_license,
                Telnyx::Models::DirSubmitResponse::Data::Document::DocumentType::TaggedSymbol
              )
            PROFESSIONAL_LICENSE =
              T.let(
                :professional_license,
                Telnyx::Models::DirSubmitResponse::Data::Document::DocumentType::TaggedSymbol
              )
            GOVERNMENT_ID =
              T.let(
                :government_id,
                Telnyx::Models::DirSubmitResponse::Data::Document::DocumentType::TaggedSymbol
              )
            UTILITY_BILL =
              T.let(
                :utility_bill,
                Telnyx::Models::DirSubmitResponse::Data::Document::DocumentType::TaggedSymbol
              )
            BANK_STATEMENT =
              T.let(
                :bank_statement,
                Telnyx::Models::DirSubmitResponse::Data::Document::DocumentType::TaggedSymbol
              )
            OTHER =
              T.let(
                :other,
                Telnyx::Models::DirSubmitResponse::Data::Document::DocumentType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::DirSubmitResponse::Data::Document::DocumentType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class RejectionReason < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::DirSubmitResponse::Data::RejectionReason,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :code

          sig { params(code: String).void }
          attr_writer :code

          sig { returns(T.nilable(String)) }
          attr_reader :detail

          sig { params(detail: String).void }
          attr_writer :detail

          # Customer-visible free-text comment from the Telnyx vetting team. Only the first
          # entry of `rejection_reasons` carries this; the rest are `null`.
          sig { returns(T.nilable(String)) }
          attr_accessor :message

          sig { returns(T.nilable(String)) }
          attr_reader :title

          sig { params(title: String).void }
          attr_writer :title

          sig do
            params(
              code: String,
              detail: String,
              message: T.nilable(String),
              title: String
            ).returns(T.attached_class)
          end
          def self.new(
            code: nil,
            detail: nil,
            # Customer-visible free-text comment from the Telnyx vetting team. Only the first
            # entry of `rejection_reasons` carries this; the rest are `null`.
            message: nil,
            title: nil
          )
          end

          sig do
            override.returns(
              {
                code: String,
                detail: String,
                message: T.nilable(String),
                title: String
              }
            )
          end
          def to_hash
          end
        end

        # DIR lifecycle status.
        #
        # - `draft` — newly created; editable; not yet submitted.
        # - `submitted` / `in_review` — Telnyx is reviewing.
        # - `verified` — approved; phone numbers may be attached.
        # - `rejected` — Telnyx rejected this submission; `rejection_reasons` is
        #   populated; customer can edit and resubmit.
        # - `unsuccessful` — system-side error during processing; customer can edit and
        #   resubmit.
        # - `suspended` — temporarily disabled (e.g. by an active infringement claim).
        # - `expired` — verification expired; customer must resubmit.
        # - `infringement_claimed` — a trademark/impersonation claim is open against this
        #   DIR.
        # - `permanently_rejected` — terminal; cannot be resubmitted.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Models::DirSubmitResponse::Data::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DRAFT =
            T.let(
              :draft,
              Telnyx::Models::DirSubmitResponse::Data::Status::TaggedSymbol
            )
          SUBMITTED =
            T.let(
              :submitted,
              Telnyx::Models::DirSubmitResponse::Data::Status::TaggedSymbol
            )
          IN_REVIEW =
            T.let(
              :in_review,
              Telnyx::Models::DirSubmitResponse::Data::Status::TaggedSymbol
            )
          VERIFIED =
            T.let(
              :verified,
              Telnyx::Models::DirSubmitResponse::Data::Status::TaggedSymbol
            )
          REJECTED =
            T.let(
              :rejected,
              Telnyx::Models::DirSubmitResponse::Data::Status::TaggedSymbol
            )
          UNSUCCESSFUL =
            T.let(
              :unsuccessful,
              Telnyx::Models::DirSubmitResponse::Data::Status::TaggedSymbol
            )
          SUSPENDED =
            T.let(
              :suspended,
              Telnyx::Models::DirSubmitResponse::Data::Status::TaggedSymbol
            )
          EXPIRED =
            T.let(
              :expired,
              Telnyx::Models::DirSubmitResponse::Data::Status::TaggedSymbol
            )
          INFRINGEMENT_CLAIMED =
            T.let(
              :infringement_claimed,
              Telnyx::Models::DirSubmitResponse::Data::Status::TaggedSymbol
            )
          PERMANENTLY_REJECTED =
            T.let(
              :permanently_rejected,
              Telnyx::Models::DirSubmitResponse::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::DirSubmitResponse::Data::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
