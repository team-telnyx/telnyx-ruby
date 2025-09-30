# typed: strong

module Telnyx
  module Models
    class GlobalIPAssignmentDeleteResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::GlobalIPAssignmentDeleteResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::GlobalIPAssignment)) }
      attr_reader :data

      sig { params(data: Telnyx::GlobalIPAssignment::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::GlobalIPAssignment::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::GlobalIPAssignment }) }
      def to_hash
      end
    end
  end
end
