# typed: strong

module Telnyx
  module Models
    class Feature < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::Feature, Telnyx::Internal::AnyHash) }

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig { params(name: String).returns(T.attached_class) }
      def self.new(name: nil)
      end

      sig { override.returns({ name: String }) }
      def to_hash
      end
    end
  end
end
