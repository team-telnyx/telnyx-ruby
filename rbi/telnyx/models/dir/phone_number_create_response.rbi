# typed: strong

module Telnyx
  module Models
    module Dir
      class PhoneNumberCreateResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Dir::PhoneNumberCreateResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # Phone numbers accepted into the new batch. List order mirrors the request order.
        # Each element shares the same `batch_id`.
        sig { returns(T::Array[Telnyx::Dir::DirPhoneNumber]) }
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
          params(data: T::Array[Telnyx::Dir::DirPhoneNumber::OrHash]).returns(
            T.attached_class
          )
        end
        def self.new(
          # Phone numbers accepted into the new batch. List order mirrors the request order.
          # Each element shares the same `batch_id`.
          data:
        )
        end

        sig do
          override.returns({ data: T::Array[Telnyx::Dir::DirPhoneNumber] })
        end
        def to_hash
        end
      end
    end
  end
end
