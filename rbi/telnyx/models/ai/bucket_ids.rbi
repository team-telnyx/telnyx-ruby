# typed: strong

module Telnyx
  module Models
    module AI
      class BucketIDs < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::BucketIDs, Telnyx::Internal::AnyHash)
          end

        sig { returns(T::Array[String]) }
        attr_accessor :bucket_ids

        # The maximum number of results to retrieve as context for the language model.
        sig { returns(T.nilable(Integer)) }
        attr_reader :max_num_results

        sig { params(max_num_results: Integer).void }
        attr_writer :max_num_results

        sig do
          params(
            bucket_ids: T::Array[String],
            max_num_results: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          bucket_ids:,
          # The maximum number of results to retrieve as context for the language model.
          max_num_results: nil
        )
        end

        sig do
          override.returns(
            { bucket_ids: T::Array[String], max_num_results: Integer }
          )
        end
        def to_hash
        end
      end
    end
  end
end
