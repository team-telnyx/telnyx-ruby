# typed: strong

module Telnyx
  module Models
    module AI
      class OpenAIListModelsResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::AI::OpenAIListModelsResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T::Array[Telnyx::ModelMetadata]) }
        attr_accessor :data

        sig { returns(T.nilable(String)) }
        attr_reader :object

        sig { params(object: String).void }
        attr_writer :object

        sig do
          params(
            data: T::Array[Telnyx::ModelMetadata::OrHash],
            object: String
          ).returns(T.attached_class)
        end
        def self.new(data:, object: nil)
        end

        sig do
          override.returns(
            { data: T::Array[Telnyx::ModelMetadata], object: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
