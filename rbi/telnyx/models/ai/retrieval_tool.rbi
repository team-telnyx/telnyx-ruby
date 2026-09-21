# typed: strong

module Telnyx
  module Models
    module AI
      class RetrievalTool < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::RetrievalTool, Telnyx::Internal::AnyHash)
          end

        sig { returns(Telnyx::AI::BucketIDs) }
        attr_reader :retrieval

        sig { params(retrieval: Telnyx::AI::BucketIDs::OrHash).void }
        attr_writer :retrieval

        sig { returns(Telnyx::AI::RetrievalTool::Type::OrSymbol) }
        attr_accessor :type

        # Whether this tool comes from the shared Tools Library. Responses merge shared
        # tools into `tools` with `shared: true`; inline tools carry `shared: false`.
        # Read-only: set by the server, not accepted in requests. When updating an
        # assistant, omit `shared: true` tools from the request `tools` array and manage
        # them through `tool_ids` instead — re-sending their definitions creates an inline
        # duplicate (rejected with error code 10015 when the type allows only one instance
        # per assistant).
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :shared

        sig { params(shared: T::Boolean).void }
        attr_writer :shared

        sig do
          params(
            retrieval: Telnyx::AI::BucketIDs::OrHash,
            type: Telnyx::AI::RetrievalTool::Type::OrSymbol,
            shared: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          retrieval:,
          type:,
          # Whether this tool comes from the shared Tools Library. Responses merge shared
          # tools into `tools` with `shared: true`; inline tools carry `shared: false`.
          # Read-only: set by the server, not accepted in requests. When updating an
          # assistant, omit `shared: true` tools from the request `tools` array and manage
          # them through `tool_ids` instead — re-sending their definitions creates an inline
          # duplicate (rejected with error code 10015 when the type allows only one instance
          # per assistant).
          shared: nil
        )
        end

        sig do
          override.returns(
            {
              retrieval: Telnyx::AI::BucketIDs,
              type: Telnyx::AI::RetrievalTool::Type::OrSymbol,
              shared: T::Boolean
            }
          )
        end
        def to_hash
        end

        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Telnyx::AI::RetrievalTool::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RETRIEVAL =
            T.let(:retrieval, Telnyx::AI::RetrievalTool::Type::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::AI::RetrievalTool::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
