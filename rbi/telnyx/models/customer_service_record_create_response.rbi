# typed: strong

module Telnyx
  module Models
    class CustomerServiceRecordCreateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::CustomerServiceRecordCreateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::CustomerServiceRecord)) }
      attr_reader :data

      sig { params(data: Telnyx::CustomerServiceRecord::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::CustomerServiceRecord::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::CustomerServiceRecord }) }
      def to_hash
      end
    end
  end
end
