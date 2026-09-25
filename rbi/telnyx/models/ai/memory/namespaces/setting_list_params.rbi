# typed: strong

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          class SettingListParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::Memory::Namespaces::SettingListParams,
                  Telnyx::Internal::AnyHash
                )
              end

            # The namespace. `default` exists for every organization.
            sig { returns(String) }
            attr_accessor :namespace

            sig do
              params(
                namespace: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # The namespace. `default` exists for every organization.
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
end
