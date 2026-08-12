# typed: strong

module Telnyx
  module Models
    module AI
      class CollectionRetrieveParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AI::CollectionRetrieveParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :slug

        sig do
          params(
            slug: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(slug:, request_options: {})
        end

        sig do
          override.returns(
            { slug: String, request_options: Telnyx::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
