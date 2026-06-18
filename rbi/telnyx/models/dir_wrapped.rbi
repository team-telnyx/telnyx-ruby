# typed: strong

module Telnyx
  module Models
    class DirWrapped < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::DirWrapped, Telnyx::Internal::AnyHash) }

      sig { returns(Telnyx::DirAPI) }
      attr_reader :data

      sig { params(data: Telnyx::DirAPI::OrHash).void }
      attr_writer :data

      sig { params(data: Telnyx::DirAPI::OrHash).returns(T.attached_class) }
      def self.new(data:)
      end

      sig { override.returns({ data: Telnyx::DirAPI }) }
      def to_hash
      end
    end
  end
end
