# typed: strong

module Telnyx
  module Models
    module AI
      class CollectionUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::CollectionUpdateParams, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :uuid

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig do
          params(
            uuid: String,
            description: String,
            name: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(uuid:, description: nil, name: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              uuid: String,
              description: String,
              name: String,
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
