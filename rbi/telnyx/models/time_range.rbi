# typed: strong

module Telnyx
  module Models
    class TimeRange < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::TimeRange, Telnyx::Internal::AnyHash) }

      sig { returns(T.nilable(Time)) }
      attr_accessor :from

      sig { returns(T.nilable(Time)) }
      attr_accessor :to

      sig do
        params(from: T.nilable(Time), to: T.nilable(Time)).returns(
          T.attached_class
        )
      end
      def self.new(from:, to:)
      end

      sig { override.returns({ from: T.nilable(Time), to: T.nilable(Time) }) }
      def to_hash
      end
    end
  end
end
