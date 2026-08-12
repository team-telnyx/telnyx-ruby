# typed: strong

module Telnyx
  module Models
    module AI
      module Collections
        class SettingsRequest < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Collections::SettingsRequest,
                Telnyx::Internal::AnyHash
              )
            end

          # How documents are retrieved when searching the collection.
          sig { returns(T.nilable(Telnyx::AI::Collections::RetrievalSettings)) }
          attr_reader :retrieval

          sig do
            params(
              retrieval: Telnyx::AI::Collections::RetrievalSettings::OrHash
            ).void
          end
          attr_writer :retrieval

          sig do
            params(
              retrieval: Telnyx::AI::Collections::RetrievalSettings::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # How documents are retrieved when searching the collection.
            retrieval: nil
          )
          end

          sig do
            override.returns(
              { retrieval: Telnyx::AI::Collections::RetrievalSettings }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
