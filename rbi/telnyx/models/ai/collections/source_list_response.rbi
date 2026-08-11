# typed: strong

module Telnyx
  module Models
    module AI
      module Collections
        class SourceListResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::AI::Collections::SourceListResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T::Array[Telnyx::AI::Collections::Source])) }
          attr_reader :data

          sig do
            params(data: T::Array[Telnyx::AI::Collections::Source::OrHash]).void
          end
          attr_writer :data

          sig do
            params(
              data: T::Array[Telnyx::AI::Collections::Source::OrHash]
            ).returns(T.attached_class)
          end
          def self.new(data: nil)
          end

          sig do
            override.returns(
              { data: T::Array[Telnyx::AI::Collections::Source] }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
