# typed: strong

module Telnyx
  module Models
    module Dir
      class PhoneNumberAddResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Dir::PhoneNumberAddResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # Phone numbers accepted into the new batch. List order mirrors the request order.
        # Each element shares the same `batch_id`.
        sig do
          returns(T::Array[Telnyx::Models::Dir::PhoneNumberAddResponse::Data])
        end
        attr_accessor :data

        # Bulk-add success response (HTTP 201). All numbers in the request were accepted
        # into a single new batch. Every entry in `data` shares the same `batch_id` - read
        # it from any element to obtain the batch id for subsequent
        # `GET .../phone_number_batches/{batch_id}` calls. If any number in the request
        # fails (schema-invalid, not in inventory, already attached to another DIR, etc.)
        # the entire request is rejected with HTTP 400 and the canonical Telnyx error
        # envelope; the success body described here is therefore an all-or-nothing
        # payload.
        sig do
          params(
            data:
              T::Array[
                Telnyx::Models::Dir::PhoneNumberAddResponse::Data::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # Phone numbers accepted into the new batch. List order mirrors the request order.
          # Each element shares the same `batch_id`.
          data:
        )
        end

        sig do
          override.returns(
            {
              data: T::Array[Telnyx::Models::Dir::PhoneNumberAddResponse::Data]
            }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Dir::PhoneNumberAddResponse::Data,
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
                Telnyx::Models::Dir::PhoneNumberAddResponse::Data::RejectionReason
              )
            )
          end
          attr_reader :rejection_reason

          sig do
            params(
              rejection_reason:
                T.nilable(
                  Telnyx::Models::Dir::PhoneNumberAddResponse::Data::RejectionReason::OrHash
                )
            ).void
          end
          attr_writer :rejection_reason

          # Phone-number lifecycle status.
          #
          # - `submitted` / `in_review` - Telnyx is reviewing the batch this number belongs
          #   to.
          # - `verified` - approved; the DIR's display identity will be shown on outbound
          #   calls from this number.
          # - `unsuccessful` - Telnyx rejected this submission; the customer may re-add to
          #   retry.
          # - `suspended` - temporarily disabled (e.g. by an active infringement claim on
          #   the DIR).
          # - `expired` - verification expired; re-add to renew.
          # - `permanently_rejected` - terminal; cannot be re-added on this or any other DIR
          #   you own.
          sig do
            returns(
              T.nilable(
                Telnyx::Models::Dir::PhoneNumberAddResponse::Data::Status::TaggedSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                Telnyx::Models::Dir::PhoneNumberAddResponse::Data::Status::OrSymbol
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
                  Telnyx::Models::Dir::PhoneNumberAddResponse::Data::RejectionReason::OrHash
                ),
              status:
                Telnyx::Models::Dir::PhoneNumberAddResponse::Data::Status::OrSymbol,
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
            # - `submitted` / `in_review` - Telnyx is reviewing the batch this number belongs
            #   to.
            # - `verified` - approved; the DIR's display identity will be shown on outbound
            #   calls from this number.
            # - `unsuccessful` - Telnyx rejected this submission; the customer may re-add to
            #   retry.
            # - `suspended` - temporarily disabled (e.g. by an active infringement claim on
            #   the DIR).
            # - `expired` - verification expired; re-add to renew.
            # - `permanently_rejected` - terminal; cannot be re-added on this or any other DIR
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
                    Telnyx::Models::Dir::PhoneNumberAddResponse::Data::RejectionReason
                  ),
                status:
                  Telnyx::Models::Dir::PhoneNumberAddResponse::Data::Status::TaggedSymbol,
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
                  Telnyx::Models::Dir::PhoneNumberAddResponse::Data::RejectionReason,
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
          # - `submitted` / `in_review` - Telnyx is reviewing the batch this number belongs
          #   to.
          # - `verified` - approved; the DIR's display identity will be shown on outbound
          #   calls from this number.
          # - `unsuccessful` - Telnyx rejected this submission; the customer may re-add to
          #   retry.
          # - `suspended` - temporarily disabled (e.g. by an active infringement claim on
          #   the DIR).
          # - `expired` - verification expired; re-add to renew.
          # - `permanently_rejected` - terminal; cannot be re-added on this or any other DIR
          #   you own.
          module Status
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::Dir::PhoneNumberAddResponse::Data::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SUBMITTED =
              T.let(
                :submitted,
                Telnyx::Models::Dir::PhoneNumberAddResponse::Data::Status::TaggedSymbol
              )
            IN_REVIEW =
              T.let(
                :in_review,
                Telnyx::Models::Dir::PhoneNumberAddResponse::Data::Status::TaggedSymbol
              )
            VERIFIED =
              T.let(
                :verified,
                Telnyx::Models::Dir::PhoneNumberAddResponse::Data::Status::TaggedSymbol
              )
            UNSUCCESSFUL =
              T.let(
                :unsuccessful,
                Telnyx::Models::Dir::PhoneNumberAddResponse::Data::Status::TaggedSymbol
              )
            SUSPENDED =
              T.let(
                :suspended,
                Telnyx::Models::Dir::PhoneNumberAddResponse::Data::Status::TaggedSymbol
              )
            EXPIRED =
              T.let(
                :expired,
                Telnyx::Models::Dir::PhoneNumberAddResponse::Data::Status::TaggedSymbol
              )
            PERMANENTLY_REJECTED =
              T.let(
                :permanently_rejected,
                Telnyx::Models::Dir::PhoneNumberAddResponse::Data::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::Dir::PhoneNumberAddResponse::Data::Status::TaggedSymbol
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
