# typed: strong

module Telnyx
  module Models
    class CalendarConnectionResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::CalendarConnectionResponse, Telnyx::Internal::AnyHash)
        end

      sig { returns(Telnyx::CalendarConnection) }
      attr_reader :data

      sig { params(data: Telnyx::CalendarConnection::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::CalendarConnection::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data:)
      end

      sig { override.returns({ data: Telnyx::CalendarConnection }) }
      def to_hash
      end
    end
  end
end
