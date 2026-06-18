# typed: strong

module Telnyx
  module Models
    class ConnectionRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::ConnectionRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::Connection)) }
      attr_reader :data

      sig { params(data: Telnyx::Connection::OrHash).void }
      attr_writer :data

      sig { params(data: Telnyx::Connection::OrHash).returns(T.attached_class) }
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::Connection }) }
      def to_hash
      end
    end
  end
end
