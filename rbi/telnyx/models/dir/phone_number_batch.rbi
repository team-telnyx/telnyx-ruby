# typed: strong

module Telnyx
  module Models
    module Dir
      class PhoneNumberBatch < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::Dir::PhoneNumberBatch, Telnyx::Internal::AnyHash)
          end

        sig { returns(T.nilable(String)) }
        attr_reader :dir_id

        sig { params(dir_id: String).void }
        attr_writer :dir_id

        # Documents attached to this batch (e.g. a Letter of Authorization). Empty when
        # none were supplied at add time.
        sig { returns(T.nilable(T::Array[Telnyx::Document])) }
        attr_reader :documents

        sig { params(documents: T::Array[Telnyx::Document::OrHash]).void }
        attr_writer :documents

        sig { returns(T.nilable(String)) }
        attr_reader :enterprise_id

        sig { params(enterprise_id: String).void }
        attr_writer :enterprise_id

        # All phone numbers in this batch, with per-number status.
        sig { returns(T.nilable(T::Array[Telnyx::Dir::DirPhoneNumber])) }
        attr_reader :phone_numbers

        sig do
          params(
            phone_numbers: T::Array[Telnyx::Dir::DirPhoneNumber::OrHash]
          ).void
        end
        attr_writer :phone_numbers

        # Aggregate batch status. Mirrors the values used on individual phone numbers
        # (`submitted`, `in_review`, `verified`, `unsuccessful`, `permanently_rejected`,
        # etc.).
        sig do
          returns(T.nilable(Telnyx::Dir::DirPhoneNumberStatus::TaggedSymbol))
        end
        attr_reader :status

        sig { params(status: Telnyx::Dir::DirPhoneNumberStatus::OrSymbol).void }
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
            documents: T::Array[Telnyx::Document::OrHash],
            enterprise_id: String,
            phone_numbers: T::Array[Telnyx::Dir::DirPhoneNumber::OrHash],
            status: Telnyx::Dir::DirPhoneNumberStatus::OrSymbol,
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
              documents: T::Array[Telnyx::Document],
              enterprise_id: String,
              phone_numbers: T::Array[Telnyx::Dir::DirPhoneNumber],
              status: Telnyx::Dir::DirPhoneNumberStatus::TaggedSymbol,
              submitted_at: Time,
              total_count: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
