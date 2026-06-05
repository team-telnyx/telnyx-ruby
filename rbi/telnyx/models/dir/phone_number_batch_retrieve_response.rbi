# typed: strong

module Telnyx
  module Models
    module Dir
      class PhoneNumberBatchRetrieveResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # A phone-number batch groups all numbers added in a single bulk-add request.
        # Telnyx vets the batch as a unit. The response embeds the full `phone_numbers`
        # array so you can read per-number status without a separate call, plus a
        # batch-level `status` summarising the unit's progress.
        sig do
          returns(Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data)
        end
        attr_reader :data

        sig do
          params(
            data:
              Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A phone-number batch groups all numbers added in a single bulk-add request.
          # Telnyx vets the batch as a unit. The response embeds the full `phone_numbers`
          # array so you can read per-number status without a separate call, plus a
          # batch-level `status` summarising the unit's progress.
          data:
        )
        end

        sig do
          override.returns(
            {
              data: Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data
            }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :dir_id

          sig { params(dir_id: String).void }
          attr_writer :dir_id

          # Documents attached to this batch (e.g. a Letter of Authorization). Empty when
          # none were supplied at add time.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Document
                ]
              )
            )
          end
          attr_reader :documents

          sig do
            params(
              documents:
                T::Array[
                  Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Document::OrHash
                ]
            ).void
          end
          attr_writer :documents

          sig { returns(T.nilable(String)) }
          attr_reader :enterprise_id

          sig { params(enterprise_id: String).void }
          attr_writer :enterprise_id

          # All phone numbers in this batch, with per-number status.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::PhoneNumber
                ]
              )
            )
          end
          attr_reader :phone_numbers

          sig do
            params(
              phone_numbers:
                T::Array[
                  Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::PhoneNumber::OrHash
                ]
            ).void
          end
          attr_writer :phone_numbers

          # Aggregate batch status. Mirrors the values used on individual phone numbers
          # (`submitted`, `in_review`, `verified`, `unsuccessful`, `permanently_rejected`,
          # etc.).
          sig do
            returns(
              T.nilable(
                Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Status::TaggedSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Status::OrSymbol
            ).void
          end
          attr_writer :status

          sig { returns(T.nilable(String)) }
          attr_reader :batch_id

          sig { params(batch_id: String).void }
          attr_writer :batch_id

          # The DIR's display name at the time the batch was read.
          sig { returns(T.nilable(String)) }
          attr_reader :dir_display_name

          sig { params(dir_display_name: String).void }
          attr_writer :dir_display_name

          # When the batch was created (and implicitly submitted for vetting).
          sig { returns(T.nilable(Time)) }
          attr_reader :submitted_at

          sig { params(submitted_at: Time).void }
          attr_writer :submitted_at

          # Number of phone numbers in this batch (length of `phone_numbers`).
          sig { returns(T.nilable(Integer)) }
          attr_reader :total_count

          sig { params(total_count: Integer).void }
          attr_writer :total_count

          # A phone-number batch groups all numbers added in a single bulk-add request.
          # Telnyx vets the batch as a unit. The response embeds the full `phone_numbers`
          # array so you can read per-number status without a separate call, plus a
          # batch-level `status` summarising the unit's progress.
          sig do
            params(
              batch_id: String,
              dir_display_name: String,
              dir_id: String,
              documents:
                T::Array[
                  Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Document::OrHash
                ],
              enterprise_id: String,
              phone_numbers:
                T::Array[
                  Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::PhoneNumber::OrHash
                ],
              status:
                Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Status::OrSymbol,
              submitted_at: Time,
              total_count: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            batch_id: nil,
            # The DIR's display name at the time the batch was read.
            dir_display_name: nil,
            dir_id: nil,
            # Documents attached to this batch (e.g. a Letter of Authorization). Empty when
            # none were supplied at add time.
            documents: nil,
            enterprise_id: nil,
            # All phone numbers in this batch, with per-number status.
            phone_numbers: nil,
            # Aggregate batch status. Mirrors the values used on individual phone numbers
            # (`submitted`, `in_review`, `verified`, `unsuccessful`, `permanently_rejected`,
            # etc.).
            status: nil,
            # When the batch was created (and implicitly submitted for vetting).
            submitted_at: nil,
            # Number of phone numbers in this batch (length of `phone_numbers`).
            total_count: nil
          )
          end

          sig do
            override.returns(
              {
                batch_id: String,
                dir_display_name: String,
                dir_id: String,
                documents:
                  T::Array[
                    Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Document
                  ],
                enterprise_id: String,
                phone_numbers:
                  T::Array[
                    Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::PhoneNumber
                  ],
                status:
                  Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Status::TaggedSymbol,
                submitted_at: Time,
                total_count: Integer
              }
            )
          end
          def to_hash
          end

          class Document < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Document,
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
                Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Document::DocumentType::TaggedSymbol
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
                  Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Document::DocumentType::OrSymbol,
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
                    Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Document::DocumentType::TaggedSymbol,
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
                    Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Document::DocumentType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              LETTER_OF_AUTHORIZATION =
                T.let(
                  :letter_of_authorization,
                  Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Document::DocumentType::TaggedSymbol
                )
              BUSINESS_REGISTRATION =
                T.let(
                  :business_registration,
                  Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Document::DocumentType::TaggedSymbol
                )
              ARTICLES_OF_INCORPORATION =
                T.let(
                  :articles_of_incorporation,
                  Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Document::DocumentType::TaggedSymbol
                )
              TAX_DOCUMENT =
                T.let(
                  :tax_document,
                  Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Document::DocumentType::TaggedSymbol
                )
              EIN_LETTER =
                T.let(
                  :ein_letter,
                  Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Document::DocumentType::TaggedSymbol
                )
              TRADEMARK_REGISTRATION =
                T.let(
                  :trademark_registration,
                  Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Document::DocumentType::TaggedSymbol
                )
              WEBSITE_OWNERSHIP =
                T.let(
                  :website_ownership,
                  Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Document::DocumentType::TaggedSymbol
                )
              BUSINESS_LICENSE =
                T.let(
                  :business_license,
                  Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Document::DocumentType::TaggedSymbol
                )
              PROFESSIONAL_LICENSE =
                T.let(
                  :professional_license,
                  Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Document::DocumentType::TaggedSymbol
                )
              GOVERNMENT_ID =
                T.let(
                  :government_id,
                  Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Document::DocumentType::TaggedSymbol
                )
              UTILITY_BILL =
                T.let(
                  :utility_bill,
                  Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Document::DocumentType::TaggedSymbol
                )
              BANK_STATEMENT =
                T.let(
                  :bank_statement,
                  Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Document::DocumentType::TaggedSymbol
                )
              OTHER =
                T.let(
                  :other,
                  Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Document::DocumentType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Document::DocumentType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class PhoneNumber < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::PhoneNumber,
                  Telnyx::Internal::AnyHash
                )
              end

            # Id of the batch this number was vetted as part of.
            sig { returns(T.nilable(String)) }
            attr_accessor :batch_id

            sig { returns(T.nilable(String)) }
            attr_reader :dir_id

            sig { params(dir_id: String).void }
            attr_writer :dir_id

            sig { returns(T.nilable(String)) }
            attr_reader :enterprise_id

            sig { params(enterprise_id: String).void }
            attr_writer :enterprise_id

            # Id of the Letter of Authorization document attached to this number's batch.
            sig { returns(T.nilable(String)) }
            attr_accessor :loa_document_id

            # E.164 with leading `+`.
            sig { returns(T.nilable(String)) }
            attr_reader :phone_number

            sig { params(phone_number: String).void }
            attr_writer :phone_number

            # Populated when `status` is `unsuccessful` or `permanently_rejected`.
            sig do
              returns(
                T.nilable(
                  Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::PhoneNumber::RejectionReason
                )
              )
            end
            attr_reader :rejection_reason

            sig do
              params(
                rejection_reason:
                  T.nilable(
                    Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::PhoneNumber::RejectionReason::OrHash
                  )
              ).void
            end
            attr_writer :rejection_reason

            # Phone-number lifecycle status.
            #
            # - `submitted` / `in_review` — Telnyx is reviewing the batch this number belongs
            #   to.
            # - `verified` — approved; the DIR's display identity will be shown on outbound
            #   calls from this number.
            # - `unsuccessful` — Telnyx rejected this submission; the customer may re-add to
            #   retry.
            # - `suspended` — temporarily disabled (e.g. by an active infringement claim on
            #   the DIR).
            # - `expired` — verification expired; re-add to renew.
            # - `permanently_rejected` — terminal; cannot be re-added on this or any other DIR
            #   you own.
            sig do
              returns(
                T.nilable(
                  Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::PhoneNumber::Status::TaggedSymbol
                )
              )
            end
            attr_reader :status

            sig do
              params(
                status:
                  Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::PhoneNumber::Status::OrSymbol
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
            attr_reader :updated_at

            sig { params(updated_at: Time).void }
            attr_writer :updated_at

            sig { returns(T.nilable(Time)) }
            attr_accessor :verified_at

            sig do
              params(
                id: String,
                batch_id: T.nilable(String),
                created_at: Time,
                dir_id: String,
                enterprise_id: String,
                loa_document_id: T.nilable(String),
                phone_number: String,
                rejection_reason:
                  T.nilable(
                    Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::PhoneNumber::RejectionReason::OrHash
                  ),
                status:
                  Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::PhoneNumber::Status::OrSymbol,
                updated_at: Time,
                verified_at: T.nilable(Time)
              ).returns(T.attached_class)
            end
            def self.new(
              id: nil,
              # Id of the batch this number was vetted as part of.
              batch_id: nil,
              created_at: nil,
              dir_id: nil,
              enterprise_id: nil,
              # Id of the Letter of Authorization document attached to this number's batch.
              loa_document_id: nil,
              # E.164 with leading `+`.
              phone_number: nil,
              # Populated when `status` is `unsuccessful` or `permanently_rejected`.
              rejection_reason: nil,
              # Phone-number lifecycle status.
              #
              # - `submitted` / `in_review` — Telnyx is reviewing the batch this number belongs
              #   to.
              # - `verified` — approved; the DIR's display identity will be shown on outbound
              #   calls from this number.
              # - `unsuccessful` — Telnyx rejected this submission; the customer may re-add to
              #   retry.
              # - `suspended` — temporarily disabled (e.g. by an active infringement claim on
              #   the DIR).
              # - `expired` — verification expired; re-add to renew.
              # - `permanently_rejected` — terminal; cannot be re-added on this or any other DIR
              #   you own.
              status: nil,
              updated_at: nil,
              verified_at: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  batch_id: T.nilable(String),
                  created_at: Time,
                  dir_id: String,
                  enterprise_id: String,
                  loa_document_id: T.nilable(String),
                  phone_number: String,
                  rejection_reason:
                    T.nilable(
                      Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::PhoneNumber::RejectionReason
                    ),
                  status:
                    Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::PhoneNumber::Status::TaggedSymbol,
                  updated_at: Time,
                  verified_at: T.nilable(Time)
                }
              )
            end
            def to_hash
            end

            class RejectionReason < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::PhoneNumber::RejectionReason,
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

              # Populated when `status` is `unsuccessful` or `permanently_rejected`.
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

            # Phone-number lifecycle status.
            #
            # - `submitted` / `in_review` — Telnyx is reviewing the batch this number belongs
            #   to.
            # - `verified` — approved; the DIR's display identity will be shown on outbound
            #   calls from this number.
            # - `unsuccessful` — Telnyx rejected this submission; the customer may re-add to
            #   retry.
            # - `suspended` — temporarily disabled (e.g. by an active infringement claim on
            #   the DIR).
            # - `expired` — verification expired; re-add to renew.
            # - `permanently_rejected` — terminal; cannot be re-added on this or any other DIR
            #   you own.
            module Status
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::PhoneNumber::Status
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              SUBMITTED =
                T.let(
                  :submitted,
                  Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::PhoneNumber::Status::TaggedSymbol
                )
              IN_REVIEW =
                T.let(
                  :in_review,
                  Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::PhoneNumber::Status::TaggedSymbol
                )
              VERIFIED =
                T.let(
                  :verified,
                  Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::PhoneNumber::Status::TaggedSymbol
                )
              UNSUCCESSFUL =
                T.let(
                  :unsuccessful,
                  Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::PhoneNumber::Status::TaggedSymbol
                )
              SUSPENDED =
                T.let(
                  :suspended,
                  Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::PhoneNumber::Status::TaggedSymbol
                )
              EXPIRED =
                T.let(
                  :expired,
                  Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::PhoneNumber::Status::TaggedSymbol
                )
              PERMANENTLY_REJECTED =
                T.let(
                  :permanently_rejected,
                  Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::PhoneNumber::Status::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::PhoneNumber::Status::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          # Aggregate batch status. Mirrors the values used on individual phone numbers
          # (`submitted`, `in_review`, `verified`, `unsuccessful`, `permanently_rejected`,
          # etc.).
          module Status
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SUBMITTED =
              T.let(
                :submitted,
                Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Status::TaggedSymbol
              )
            IN_REVIEW =
              T.let(
                :in_review,
                Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Status::TaggedSymbol
              )
            VERIFIED =
              T.let(
                :verified,
                Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Status::TaggedSymbol
              )
            UNSUCCESSFUL =
              T.let(
                :unsuccessful,
                Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Status::TaggedSymbol
              )
            SUSPENDED =
              T.let(
                :suspended,
                Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Status::TaggedSymbol
              )
            EXPIRED =
              T.let(
                :expired,
                Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Status::TaggedSymbol
              )
            PERMANENTLY_REJECTED =
              T.let(
                :permanently_rejected,
                Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Status::TaggedSymbol
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
end
