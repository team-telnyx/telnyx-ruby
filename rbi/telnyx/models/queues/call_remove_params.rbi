# typed: strong

module Telnyx
  module Models
    module Queues
      class CallRemoveParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::Queues::CallRemoveParams, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :queue_name

        sig do
          params(
            queue_name: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(queue_name:, request_options: {})
        end

        sig do
          override.returns(
            { queue_name: String, request_options: Telnyx::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
