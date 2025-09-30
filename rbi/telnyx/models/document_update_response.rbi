# typed: strong

module Telnyx
  module Models
    class DocumentUpdateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::DocumentUpdateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::DocServiceDocument)) }
      attr_reader :data

      sig { params(data: Telnyx::DocServiceDocument::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::DocServiceDocument::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::DocServiceDocument }) }
      def to_hash
      end
    end
  end
end
