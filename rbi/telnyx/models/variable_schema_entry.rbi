# typed: strong

module Telnyx
  module Models
    class VariableSchemaEntry < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::VariableSchemaEntry, Telnyx::Internal::AnyHash)
        end

      # Whether the variable must be supplied when strict variable validation is
      # enabled.
      sig { returns(T::Boolean) }
      attr_accessor :required

      # Default value for an optional variable. Rejected when `required` is `true`.
      sig { returns(T.nilable(String)) }
      attr_reader :default

      sig { params(default: String).void }
      attr_writer :default

      sig do
        params(required: T::Boolean, default: String).returns(T.attached_class)
      end
      def self.new(
        # Whether the variable must be supplied when strict variable validation is
        # enabled.
        required:,
        # Default value for an optional variable. Rejected when `required` is `true`.
        default: nil
      )
      end

      sig { override.returns({ required: T::Boolean, default: String }) }
      def to_hash
      end
    end
  end
end
