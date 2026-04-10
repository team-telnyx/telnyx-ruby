# typed: strong

module Telnyx
  module Models
    class CallControlRetrievalTool < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::CallControlRetrievalTool, Telnyx::Internal::AnyHash)
        end

      sig { returns(Telnyx::CallControlBucketIDs) }
      attr_reader :retrieval

      sig { params(retrieval: Telnyx::CallControlBucketIDs::OrHash).void }
      attr_writer :retrieval

      sig { returns(Telnyx::CallControlRetrievalTool::Type::OrSymbol) }
      attr_accessor :type

      sig do
        params(
          retrieval: Telnyx::CallControlBucketIDs::OrHash,
          type: Telnyx::CallControlRetrievalTool::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(retrieval:, type:)
      end

      sig do
        override.returns(
          {
            retrieval: Telnyx::CallControlBucketIDs,
            type: Telnyx::CallControlRetrievalTool::Type::OrSymbol
          }
        )
      end
      def to_hash
      end

      module Type
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::CallControlRetrievalTool::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RETRIEVAL =
          T.let(
            :retrieval,
            Telnyx::CallControlRetrievalTool::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::CallControlRetrievalTool::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
