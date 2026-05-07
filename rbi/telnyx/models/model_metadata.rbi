# typed: strong

module Telnyx
  module Models
    class ModelMetadata < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::ModelMetadata, Telnyx::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Integer) }
      attr_accessor :created

      sig { returns(String) }
      attr_accessor :owned_by

      sig { returns(T.nilable(String)) }
      attr_reader :object

      sig { params(object: String).void }
      attr_writer :object

      sig do
        params(
          id: String,
          created: Integer,
          owned_by: String,
          object: String
        ).returns(T.attached_class)
      end
      def self.new(id:, created:, owned_by:, object: nil)
      end

      sig do
        override.returns(
          { id: String, created: Integer, owned_by: String, object: String }
        )
      end
      def to_hash
      end
    end
  end
end
