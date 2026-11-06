# typed: strong

module Telnyx
  module Models
    class CalendarConnectionListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::CalendarConnectionListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Telnyx::CalendarConnection]) }
      attr_accessor :data

      sig do
        params(data: T::Array[Telnyx::CalendarConnection::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(data:)
      end

      sig { override.returns({ data: T::Array[Telnyx::CalendarConnection] }) }
      def to_hash
      end
    end
  end
end
