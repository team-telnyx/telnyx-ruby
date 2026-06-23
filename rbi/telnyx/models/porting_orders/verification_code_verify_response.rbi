# typed: strong

module Telnyx
  module Models
    module PortingOrders
      class VerificationCodeVerifyResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::PortingOrders::VerificationCodeVerifyResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(T::Array[Telnyx::PortingOrders::PortingVerificationCode])
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              T::Array[Telnyx::PortingOrders::PortingVerificationCode::OrHash]
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              T::Array[Telnyx::PortingOrders::PortingVerificationCode::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            { data: T::Array[Telnyx::PortingOrders::PortingVerificationCode] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
