# typed: strong

module Telnyx
  module Models
    class RcsToItem < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::RcsToItem, Telnyx::Internal::AnyHash) }

      sig { returns(T.nilable(String)) }
      attr_reader :carrier

      sig { params(carrier: String).void }
      attr_writer :carrier

      sig { returns(T.nilable(String)) }
      attr_reader :line_type

      sig { params(line_type: String).void }
      attr_writer :line_type

      sig { returns(T.nilable(String)) }
      attr_reader :phone_number

      sig { params(phone_number: String).void }
      attr_writer :phone_number

      sig { returns(T.nilable(String)) }
      attr_reader :status

      sig { params(status: String).void }
      attr_writer :status

      sig do
        params(
          carrier: String,
          line_type: String,
          phone_number: String,
          status: String
        ).returns(T.attached_class)
      end
      def self.new(carrier: nil, line_type: nil, phone_number: nil, status: nil)
      end

      sig do
        override.returns(
          {
            carrier: String,
            line_type: String,
            phone_number: String,
            status: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
