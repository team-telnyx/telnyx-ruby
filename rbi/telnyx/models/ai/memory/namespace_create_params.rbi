# typed: strong

module Telnyx
  module Models
    module AI
      module Memory
        class NamespaceCreateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Memory::NamespaceCreateParams,
                Telnyx::Internal::AnyHash
              )
            end

          # A name for the new namespace, unique within your organization.
          sig { returns(String) }
          attr_accessor :name

          sig do
            params(
              name: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # A name for the new namespace, unique within your organization.
            name:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              { name: String, request_options: Telnyx::RequestOptions }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
