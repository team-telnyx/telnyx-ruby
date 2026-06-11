# typed: strong

module Telnyx
  module Models
    class InfringementClaimContestResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::InfringementClaimContestResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(Telnyx::Models::InfringementClaimContestResponse::Data) }
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::InfringementClaimContestResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::InfringementClaimContestResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::InfringementClaimContestResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::InfringementClaimContestResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :claim_description

        sig { params(claim_description: String).void }
        attr_writer :claim_description

        # Category of infringement being claimed.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::InfringementClaimContestResponse::Data::ClaimType::TaggedSymbol
            )
          )
        end
        attr_reader :claim_type

        sig do
          params(
            claim_type:
              Telnyx::Models::InfringementClaimContestResponse::Data::ClaimType::OrSymbol
          ).void
        end
        attr_writer :claim_type

        sig { returns(T.nilable(String)) }
        attr_reader :claimant_contact

        sig { params(claimant_contact: String).void }
        attr_writer :claimant_contact

        sig { returns(T.nilable(String)) }
        attr_reader :claimant_name

        sig { params(claimant_name: String).void }
        attr_writer :claimant_name

        # Aggregated across all customer contest submissions on this claim.
        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::Models::InfringementClaimContestResponse::Data::ContestDocument
              ]
            )
          )
        end
        attr_reader :contest_documents

        sig do
          params(
            contest_documents:
              T::Array[
                Telnyx::Models::InfringementClaimContestResponse::Data::ContestDocument::OrHash
              ]
          ).void
        end
        attr_writer :contest_documents

        # Snapshot of the DIR the claim is filed against, embedded for convenience.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::InfringementClaimContestResponse::Data::Dir
            )
          )
        end
        attr_reader :dir

        sig do
          params(
            dir:
              Telnyx::Models::InfringementClaimContestResponse::Data::Dir::OrHash
          ).void
        end
        attr_writer :dir

        sig { returns(T.nilable(String)) }
        attr_reader :dir_id

        sig { params(dir_id: String).void }
        attr_writer :dir_id

        sig { returns(T.nilable(String)) }
        attr_reader :enterprise_id

        sig { params(enterprise_id: String).void }
        attr_writer :enterprise_id

        # Set only when `status` is `resolved`.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::InfringementClaimContestResponse::Data::Resolution::TaggedSymbol
            )
          )
        end
        attr_accessor :resolution

        # Lifecycle status. `pending` - newly filed; the DIR is auto-suspended.
        # `contested` - you have submitted contest evidence; awaiting Telnyx review.
        # `resolved` - final.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::InfringementClaimContestResponse::Data::Status::TaggedSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              Telnyx::Models::InfringementClaimContestResponse::Data::Status::OrSymbol
          ).void
        end
        attr_writer :status

        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # When the claim was filed (set by the claimant's representative at file time).
        sig { returns(T.nilable(Time)) }
        attr_reader :claim_date

        sig { params(claim_date: Time).void }
        attr_writer :claim_date

        # Per-round submission audit trail. Each entry records one
        # `POST /infringement_claims/{id}/contest` call (notes, timestamp, document
        # count). Aggregated documents live on `contest_documents`.
        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::Models::InfringementClaimContestResponse::Data::ContestHistory
              ]
            )
          )
        end
        attr_reader :contest_history

        sig do
          params(
            contest_history:
              T::Array[
                Telnyx::Models::InfringementClaimContestResponse::Data::ContestHistory::OrHash
              ]
          ).void
        end
        attr_writer :contest_history

        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        sig { returns(T.nilable(Time)) }
        attr_accessor :resolution_date

        sig { returns(T.nilable(String)) }
        attr_accessor :resolution_notes

        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        sig do
          params(
            id: String,
            claim_date: Time,
            claim_description: String,
            claim_type:
              Telnyx::Models::InfringementClaimContestResponse::Data::ClaimType::OrSymbol,
            claimant_contact: String,
            claimant_name: String,
            contest_documents:
              T::Array[
                Telnyx::Models::InfringementClaimContestResponse::Data::ContestDocument::OrHash
              ],
            contest_history:
              T::Array[
                Telnyx::Models::InfringementClaimContestResponse::Data::ContestHistory::OrHash
              ],
            created_at: Time,
            dir:
              Telnyx::Models::InfringementClaimContestResponse::Data::Dir::OrHash,
            dir_id: String,
            enterprise_id: String,
            resolution:
              T.nilable(
                Telnyx::Models::InfringementClaimContestResponse::Data::Resolution::OrSymbol
              ),
            resolution_date: T.nilable(Time),
            resolution_notes: T.nilable(String),
            status:
              Telnyx::Models::InfringementClaimContestResponse::Data::Status::OrSymbol,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          # When the claim was filed (set by the claimant's representative at file time).
          claim_date: nil,
          claim_description: nil,
          # Category of infringement being claimed.
          claim_type: nil,
          claimant_contact: nil,
          claimant_name: nil,
          # Aggregated across all customer contest submissions on this claim.
          contest_documents: nil,
          # Per-round submission audit trail. Each entry records one
          # `POST /infringement_claims/{id}/contest` call (notes, timestamp, document
          # count). Aggregated documents live on `contest_documents`.
          contest_history: nil,
          created_at: nil,
          # Snapshot of the DIR the claim is filed against, embedded for convenience.
          dir: nil,
          dir_id: nil,
          enterprise_id: nil,
          # Set only when `status` is `resolved`.
          resolution: nil,
          resolution_date: nil,
          resolution_notes: nil,
          # Lifecycle status. `pending` - newly filed; the DIR is auto-suspended.
          # `contested` - you have submitted contest evidence; awaiting Telnyx review.
          # `resolved` - final.
          status: nil,
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              claim_date: Time,
              claim_description: String,
              claim_type:
                Telnyx::Models::InfringementClaimContestResponse::Data::ClaimType::TaggedSymbol,
              claimant_contact: String,
              claimant_name: String,
              contest_documents:
                T::Array[
                  Telnyx::Models::InfringementClaimContestResponse::Data::ContestDocument
                ],
              contest_history:
                T::Array[
                  Telnyx::Models::InfringementClaimContestResponse::Data::ContestHistory
                ],
              created_at: Time,
              dir: Telnyx::Models::InfringementClaimContestResponse::Data::Dir,
              dir_id: String,
              enterprise_id: String,
              resolution:
                T.nilable(
                  Telnyx::Models::InfringementClaimContestResponse::Data::Resolution::TaggedSymbol
                ),
              resolution_date: T.nilable(Time),
              resolution_notes: T.nilable(String),
              status:
                Telnyx::Models::InfringementClaimContestResponse::Data::Status::TaggedSymbol,
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        # Category of infringement being claimed.
        module ClaimType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::InfringementClaimContestResponse::Data::ClaimType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TRADEMARK =
            T.let(
              :trademark,
              Telnyx::Models::InfringementClaimContestResponse::Data::ClaimType::TaggedSymbol
            )
          COPYRIGHT =
            T.let(
              :copyright,
              Telnyx::Models::InfringementClaimContestResponse::Data::ClaimType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::InfringementClaimContestResponse::Data::ClaimType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class ContestDocument < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::InfringementClaimContestResponse::Data::ContestDocument,
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
              Telnyx::Models::InfringementClaimContestResponse::Data::ContestDocument::DocumentType::TaggedSymbol
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
                Telnyx::Models::InfringementClaimContestResponse::Data::ContestDocument::DocumentType::OrSymbol,
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
                  Telnyx::Models::InfringementClaimContestResponse::Data::ContestDocument::DocumentType::TaggedSymbol,
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
                  Telnyx::Models::InfringementClaimContestResponse::Data::ContestDocument::DocumentType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            LETTER_OF_AUTHORIZATION =
              T.let(
                :letter_of_authorization,
                Telnyx::Models::InfringementClaimContestResponse::Data::ContestDocument::DocumentType::TaggedSymbol
              )
            BUSINESS_REGISTRATION =
              T.let(
                :business_registration,
                Telnyx::Models::InfringementClaimContestResponse::Data::ContestDocument::DocumentType::TaggedSymbol
              )
            ARTICLES_OF_INCORPORATION =
              T.let(
                :articles_of_incorporation,
                Telnyx::Models::InfringementClaimContestResponse::Data::ContestDocument::DocumentType::TaggedSymbol
              )
            TAX_DOCUMENT =
              T.let(
                :tax_document,
                Telnyx::Models::InfringementClaimContestResponse::Data::ContestDocument::DocumentType::TaggedSymbol
              )
            EIN_LETTER =
              T.let(
                :ein_letter,
                Telnyx::Models::InfringementClaimContestResponse::Data::ContestDocument::DocumentType::TaggedSymbol
              )
            TRADEMARK_REGISTRATION =
              T.let(
                :trademark_registration,
                Telnyx::Models::InfringementClaimContestResponse::Data::ContestDocument::DocumentType::TaggedSymbol
              )
            WEBSITE_OWNERSHIP =
              T.let(
                :website_ownership,
                Telnyx::Models::InfringementClaimContestResponse::Data::ContestDocument::DocumentType::TaggedSymbol
              )
            BUSINESS_LICENSE =
              T.let(
                :business_license,
                Telnyx::Models::InfringementClaimContestResponse::Data::ContestDocument::DocumentType::TaggedSymbol
              )
            PROFESSIONAL_LICENSE =
              T.let(
                :professional_license,
                Telnyx::Models::InfringementClaimContestResponse::Data::ContestDocument::DocumentType::TaggedSymbol
              )
            GOVERNMENT_ID =
              T.let(
                :government_id,
                Telnyx::Models::InfringementClaimContestResponse::Data::ContestDocument::DocumentType::TaggedSymbol
              )
            UTILITY_BILL =
              T.let(
                :utility_bill,
                Telnyx::Models::InfringementClaimContestResponse::Data::ContestDocument::DocumentType::TaggedSymbol
              )
            BANK_STATEMENT =
              T.let(
                :bank_statement,
                Telnyx::Models::InfringementClaimContestResponse::Data::ContestDocument::DocumentType::TaggedSymbol
              )
            OTHER =
              T.let(
                :other,
                Telnyx::Models::InfringementClaimContestResponse::Data::ContestDocument::DocumentType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::InfringementClaimContestResponse::Data::ContestDocument::DocumentType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class ContestHistory < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::InfringementClaimContestResponse::Data::ContestHistory,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :notes

          sig { params(notes: String).void }
          attr_writer :notes

          sig { returns(T.nilable(Integer)) }
          attr_reader :document_count

          sig { params(document_count: Integer).void }
          attr_writer :document_count

          sig { returns(T.nilable(Time)) }
          attr_reader :submitted_at

          sig { params(submitted_at: Time).void }
          attr_writer :submitted_at

          # One round of customer contest evidence on an infringement claim. The aggregated
          # documents across rounds live on the parent claim's `contest_documents`; this
          # submission record carries only the per-round notes and document count.
          sig do
            params(
              document_count: Integer,
              notes: String,
              submitted_at: Time
            ).returns(T.attached_class)
          end
          def self.new(document_count: nil, notes: nil, submitted_at: nil)
          end

          sig do
            override.returns(
              { document_count: Integer, notes: String, submitted_at: Time }
            )
          end
          def to_hash
          end
        end

        class Dir < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::InfringementClaimContestResponse::Data::Dir,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :display_name

          sig { params(display_name: String).void }
          attr_writer :display_name

          sig { returns(T.nilable(String)) }
          attr_reader :enterprise_id

          sig { params(enterprise_id: String).void }
          attr_writer :enterprise_id

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
          sig do
            returns(
              T.nilable(
                Telnyx::Models::InfringementClaimContestResponse::Data::Dir::Status::TaggedSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                Telnyx::Models::InfringementClaimContestResponse::Data::Dir::Status::OrSymbol
            ).void
          end
          attr_writer :status

          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # Snapshot of the DIR the claim is filed against, embedded for convenience.
          sig do
            params(
              id: String,
              display_name: String,
              enterprise_id: String,
              status:
                Telnyx::Models::InfringementClaimContestResponse::Data::Dir::Status::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            id: nil,
            display_name: nil,
            enterprise_id: nil,
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
            status: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                display_name: String,
                enterprise_id: String,
                status:
                  Telnyx::Models::InfringementClaimContestResponse::Data::Dir::Status::TaggedSymbol
              }
            )
          end
          def to_hash
          end

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
          module Status
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::InfringementClaimContestResponse::Data::Dir::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DRAFT =
              T.let(
                :draft,
                Telnyx::Models::InfringementClaimContestResponse::Data::Dir::Status::TaggedSymbol
              )
            SUBMITTED =
              T.let(
                :submitted,
                Telnyx::Models::InfringementClaimContestResponse::Data::Dir::Status::TaggedSymbol
              )
            IN_REVIEW =
              T.let(
                :in_review,
                Telnyx::Models::InfringementClaimContestResponse::Data::Dir::Status::TaggedSymbol
              )
            VERIFIED =
              T.let(
                :verified,
                Telnyx::Models::InfringementClaimContestResponse::Data::Dir::Status::TaggedSymbol
              )
            REJECTED =
              T.let(
                :rejected,
                Telnyx::Models::InfringementClaimContestResponse::Data::Dir::Status::TaggedSymbol
              )
            UNSUCCESSFUL =
              T.let(
                :unsuccessful,
                Telnyx::Models::InfringementClaimContestResponse::Data::Dir::Status::TaggedSymbol
              )
            SUSPENDED =
              T.let(
                :suspended,
                Telnyx::Models::InfringementClaimContestResponse::Data::Dir::Status::TaggedSymbol
              )
            EXPIRED =
              T.let(
                :expired,
                Telnyx::Models::InfringementClaimContestResponse::Data::Dir::Status::TaggedSymbol
              )
            INFRINGEMENT_CLAIMED =
              T.let(
                :infringement_claimed,
                Telnyx::Models::InfringementClaimContestResponse::Data::Dir::Status::TaggedSymbol
              )
            PERMANENTLY_REJECTED =
              T.let(
                :permanently_rejected,
                Telnyx::Models::InfringementClaimContestResponse::Data::Dir::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::InfringementClaimContestResponse::Data::Dir::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        # Set only when `status` is `resolved`.
        module Resolution
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::InfringementClaimContestResponse::Data::Resolution
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          UPHELD =
            T.let(
              :upheld,
              Telnyx::Models::InfringementClaimContestResponse::Data::Resolution::TaggedSymbol
            )
          REJECTED =
            T.let(
              :rejected,
              Telnyx::Models::InfringementClaimContestResponse::Data::Resolution::TaggedSymbol
            )
          MODIFIED =
            T.let(
              :modified,
              Telnyx::Models::InfringementClaimContestResponse::Data::Resolution::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::InfringementClaimContestResponse::Data::Resolution::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Lifecycle status. `pending` - newly filed; the DIR is auto-suspended.
        # `contested` - you have submitted contest evidence; awaiting Telnyx review.
        # `resolved` - final.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::InfringementClaimContestResponse::Data::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              Telnyx::Models::InfringementClaimContestResponse::Data::Status::TaggedSymbol
            )
          CONTESTED =
            T.let(
              :contested,
              Telnyx::Models::InfringementClaimContestResponse::Data::Status::TaggedSymbol
            )
          RESOLVED =
            T.let(
              :resolved,
              Telnyx::Models::InfringementClaimContestResponse::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::InfringementClaimContestResponse::Data::Status::TaggedSymbol
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
