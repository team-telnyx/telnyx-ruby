# typed: strong

module Telnyx
  module Models
    class BrowserSessionListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::BrowserSessionListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(T::Array[Telnyx::Session])) }
      attr_reader :data

      sig { params(data: T::Array[Telnyx::Session::OrHash]).void }
      attr_writer :data

      sig do
        params(data: T::Array[Telnyx::Session::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: T::Array[Telnyx::Session] }) }
      def to_hash
      end
    end
  end
end
