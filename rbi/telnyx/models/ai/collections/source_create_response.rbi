# typed: strong

module Telnyx
  module Models
    module AI
      module Collections
        class SourceCreateResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::AI::Collections::SourceCreateResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Telnyx::AI::Collections::Source)) }
          attr_reader :data

          sig { params(data: Telnyx::AI::Collections::Source::OrHash).void }
          attr_writer :data

          # Envelope containing a single collection source.
          sig do
            params(data: Telnyx::AI::Collections::Source::OrHash).returns(
              T.attached_class
            )
          end
          def self.new(data: nil)
          end

          sig { override.returns({ data: Telnyx::AI::Collections::Source }) }
          def to_hash
          end
        end
      end
    end
  end
end
