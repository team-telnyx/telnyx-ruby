# typed: strong

module Telnyx
  module Models
    class Cursor < Telnyx::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Telnyx::Cursor, Telnyx::Internal::AnyHash) }

      # Opaque identifier of next page.
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # Opaque identifier of previous page.
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      sig { params(after: String, before: String).returns(T.attached_class) }
      def self.new(
        # Opaque identifier of next page.
        after: nil,
        # Opaque identifier of previous page.
        before: nil
      )
      end

      sig { override.returns({ after: String, before: String }) }
      def to_hash
      end
    end
  end
end
