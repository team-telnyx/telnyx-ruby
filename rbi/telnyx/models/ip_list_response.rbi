# typed: strong

module Telnyx
  module Models
    class IPListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::Models::IPListResponse, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(T::Array[Telnyx::IP])) }
      attr_reader :data

      sig { params(data: T::Array[Telnyx::IP::OrHash]).void }
      attr_writer :data

      sig do
        params(data: T::Array[Telnyx::IP::OrHash]).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: T::Array[Telnyx::IP] }) }
      def to_hash
      end
    end
  end
end
