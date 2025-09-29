# typed: strong

module Telnyx
  module Models
    module PortingOrders
      class ActivationJobUpdateResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::PortingOrders::ActivationJobUpdateResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Telnyx::PortingOrdersActivationJob)) }
        attr_reader :data

        sig { params(data: Telnyx::PortingOrdersActivationJob::OrHash).void }
        attr_writer :data

        sig do
          params(data: Telnyx::PortingOrdersActivationJob::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(data: nil)
        end

        sig { override.returns({ data: Telnyx::PortingOrdersActivationJob }) }
        def to_hash
        end
      end
    end
  end
end
