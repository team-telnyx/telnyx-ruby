# typed: strong

module Telnyx
  module Models
    module PortingOrders
      class CommentCreateResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::PortingOrders::CommentCreateResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Telnyx::PortingOrders::PortingOrdersComment)) }
        attr_reader :data

        sig do
          params(data: Telnyx::PortingOrders::PortingOrdersComment::OrHash).void
        end
        attr_writer :data

        sig do
          params(
            data: Telnyx::PortingOrders::PortingOrdersComment::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            { data: Telnyx::PortingOrders::PortingOrdersComment }
          )
        end
        def to_hash
        end
      end
    end
  end
end
