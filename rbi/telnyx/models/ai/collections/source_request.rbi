# typed: strong

module Telnyx
  module Models
    module AI
      module Collections
        class SourceRequest < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Collections::SourceRequest,
                Telnyx::Internal::AnyHash
              )
            end

          # The type of Telnyx data attached as a source. `bucket` requires an additional
          # `bucket_id`. Only `voice` is searchable today; `meeting_bot`, `message`, and
          # `bucket` attach but are not yet searchable (Coming soon).
          sig { returns(Telnyx::AI::Collections::SourceType::OrSymbol) }
          attr_accessor :source_type

          # The Telnyx Storage bucket name. Required when `source_type` is `bucket`; ignored
          # otherwise.
          sig { returns(T.nilable(String)) }
          attr_reader :bucket_id

          sig { params(bucket_id: String).void }
          attr_writer :bucket_id

          sig do
            params(
              source_type: Telnyx::AI::Collections::SourceType::OrSymbol,
              bucket_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The type of Telnyx data attached as a source. `bucket` requires an additional
            # `bucket_id`. Only `voice` is searchable today; `meeting_bot`, `message`, and
            # `bucket` attach but are not yet searchable (Coming soon).
            source_type:,
            # The Telnyx Storage bucket name. Required when `source_type` is `bucket`; ignored
            # otherwise.
            bucket_id: nil
          )
          end

          sig do
            override.returns(
              {
                source_type: Telnyx::AI::Collections::SourceType::OrSymbol,
                bucket_id: String
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
