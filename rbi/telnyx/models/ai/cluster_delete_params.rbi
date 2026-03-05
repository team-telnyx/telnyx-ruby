# typed: strong

module Telnyx
  module Models
    module AI
      class ClusterDeleteParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::ClusterDeleteParams, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :task_id

        sig do
          params(
            task_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(task_id:, request_options: {})
        end

        sig do
          override.returns(
            { task_id: String, request_options: Telnyx::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
