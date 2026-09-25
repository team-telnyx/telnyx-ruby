# typed: strong

module Telnyx
  module Models
    module AI
      module Memory
        class NamespaceRetrieveParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Memory::NamespaceRetrieveParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :namespace

          sig { returns(String) }
          attr_accessor :operation_id

          sig do
            params(
              namespace: String,
              operation_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(namespace:, operation_id:, request_options: {})
          end

          sig do
            override.returns(
              {
                namespace: String,
                operation_id: String,
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
end
