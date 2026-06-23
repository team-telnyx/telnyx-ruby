# typed: strong

module Telnyx
  module Models
    DirPhoneNumber = Dir::DirPhoneNumber

    module Dir
      class DirPhoneNumber < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::Dir::DirPhoneNumber, Telnyx::Internal::AnyHash)
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
        sig { returns(T.nilable(Telnyx::Dir::RejectionReason)) }
        attr_reader :rejection_reason

        sig do
          params(
            rejection_reason: T.nilable(Telnyx::Dir::RejectionReason::OrHash)
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
          returns(T.nilable(Telnyx::Dir::DirPhoneNumberStatus::TaggedSymbol))
        end
        attr_reader :status

        sig { params(status: Telnyx::Dir::DirPhoneNumberStatus::OrSymbol).void }
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
            rejection_reason: T.nilable(Telnyx::Dir::RejectionReason::OrHash),
            status: Telnyx::Dir::DirPhoneNumberStatus::OrSymbol,
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
              rejection_reason: T.nilable(Telnyx::Dir::RejectionReason),
              status: Telnyx::Dir::DirPhoneNumberStatus::TaggedSymbol,
              updated_at: Time,
              verified_at: T.nilable(Time)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
