# typed: strong

module Telnyx
  module Models
    class UpdateRegulatoryRequirement < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::UpdateRegulatoryRequirement, Telnyx::Internal::AnyHash)
        end

      # The value of the requirement. For address and document requirements, this should
      # be the ID of the resource. For textual, this should be the value of the
      # requirement.
      sig { returns(T.nilable(String)) }
      attr_reader :field_value

      sig { params(field_value: String).void }
      attr_writer :field_value

      # Unique id for a requirement.
      sig { returns(T.nilable(String)) }
      attr_reader :requirement_id

      sig { params(requirement_id: String).void }
      attr_writer :requirement_id

      sig do
        params(field_value: String, requirement_id: String).returns(
          T.attached_class
        )
      end
      def self.new(
        # The value of the requirement. For address and document requirements, this should
        # be the ID of the resource. For textual, this should be the value of the
        # requirement.
        field_value: nil,
        # Unique id for a requirement.
        requirement_id: nil
      )
      end

      sig { override.returns({ field_value: String, requirement_id: String }) }
      def to_hash
      end
    end
  end
end
