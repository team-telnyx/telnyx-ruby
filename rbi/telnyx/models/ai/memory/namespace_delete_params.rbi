# typed: strong

module Telnyx
  module Models
    module AI
      module Memory
        class NamespaceDeleteParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Memory::NamespaceDeleteParams,
                Telnyx::Internal::AnyHash
              )
            end

          # The namespace to delete. `default` cannot be deleted.
          sig { returns(String) }
          attr_accessor :namespace

          sig do
            params(
              namespace: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The namespace to delete. `default` cannot be deleted.
            namespace:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              { namespace: String, request_options: Telnyx::RequestOptions }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
