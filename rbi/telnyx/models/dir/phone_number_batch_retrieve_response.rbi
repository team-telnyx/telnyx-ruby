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
        sig { returns(Telnyx::Dir::PhoneNumberBatch) }
        attr_reader :data

        sig { params(data: Telnyx::Dir::PhoneNumberBatch::OrHash).void }
        attr_writer :data

        sig do
          params(data: Telnyx::Dir::PhoneNumberBatch::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(
          # A phone-number batch groups all numbers added in a single bulk-add request.
          # Telnyx vets the batch as a unit. The response embeds the full `phone_numbers`
          # array so you can read per-number status without a separate call, plus a
          # batch-level `status` summarising the unit's progress.
          data:
        )
        end

        sig { override.returns({ data: Telnyx::Dir::PhoneNumberBatch }) }
        def to_hash
        end
      end
    end
  end
end
