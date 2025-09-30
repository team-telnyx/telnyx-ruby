# typed: strong

module Telnyx
  module Models
    module AI
      class EmbeddingListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::EmbeddingListParams, Telnyx::Internal::AnyHash)
          end

        # List of task statuses i.e. `status=queued&status=processing`
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :status

        sig { params(status: T::Array[String]).void }
        attr_writer :status

        sig do
          params(
            status: T::Array[String],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # List of task statuses i.e. `status=queued&status=processing`
          status: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              status: T::Array[String],
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
