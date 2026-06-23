# typed: strong

module Telnyx
  module Models
    class GlobalIPHealthCheckCreateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::GlobalIPHealthCheckCreateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::GlobalIPHealthCheck)) }
      attr_reader :data

      sig { params(data: Telnyx::GlobalIPHealthCheck::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::GlobalIPHealthCheck::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::GlobalIPHealthCheck }) }
      def to_hash
      end
    end
  end
end
