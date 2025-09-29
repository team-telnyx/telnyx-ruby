# typed: strong

module Telnyx
  module Models
    module PortingOrders
      class PhoneNumberBlockListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::PortingOrders::PhoneNumberBlockListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(T::Array[Telnyx::PortingOrders::PortingPhoneNumberBlock])
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              T::Array[Telnyx::PortingOrders::PortingPhoneNumberBlock::OrHash]
          ).void
        end
        attr_writer :data

        sig { returns(T.nilable(Telnyx::PaginationMeta)) }
        attr_reader :meta

        sig { params(meta: Telnyx::PaginationMeta::OrHash).void }
        attr_writer :meta

        sig do
          params(
            data:
              T::Array[Telnyx::PortingOrders::PortingPhoneNumberBlock::OrHash],
            meta: Telnyx::PaginationMeta::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil, meta: nil)
        end

        sig do
          override.returns(
            {
              data: T::Array[Telnyx::PortingOrders::PortingPhoneNumberBlock],
              meta: Telnyx::PaginationMeta
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
