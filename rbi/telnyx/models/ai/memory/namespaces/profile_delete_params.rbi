# typed: strong

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          class ProfileDeleteParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::Memory::Namespaces::ProfileDeleteParams,
                  Telnyx::Internal::AnyHash
                )
              end

            # The namespace. `default` exists for every organization.
            sig { returns(String) }
            attr_accessor :namespace

            sig { returns(String) }
            attr_accessor :profile_id

            sig do
              params(
                namespace: String,
                profile_id: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # The namespace. `default` exists for every organization.
              namespace:,
              profile_id:,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  namespace: String,
                  profile_id: String,
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
end
