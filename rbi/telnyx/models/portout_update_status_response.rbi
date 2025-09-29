# typed: strong

module Telnyx
  module Models
    class PortoutUpdateStatusResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::PortoutUpdateStatusResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::PortoutDetails)) }
      attr_reader :data

      sig { params(data: Telnyx::PortoutDetails::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::PortoutDetails::OrHash).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::PortoutDetails }) }
      def to_hash
      end
    end
  end
end
