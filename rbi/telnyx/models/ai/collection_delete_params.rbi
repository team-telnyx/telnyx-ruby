# typed: strong

module Telnyx
  module Models
    module AI
      class CollectionDeleteParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::CollectionDeleteParams, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :uuid

        sig do
          params(
            uuid: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(uuid:, request_options: {})
        end

        sig do
          override.returns(
            { uuid: String, request_options: Telnyx::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
