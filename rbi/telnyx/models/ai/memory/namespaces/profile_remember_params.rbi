# typed: strong

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          class ProfileRememberParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::Memory::Namespaces::ProfileRememberParams,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :namespace

            sig { returns(String) }
            attr_accessor :profile_id

            sig { returns(String) }
            attr_accessor :text

            sig do
              params(
                namespace: String,
                profile_id: String,
                text: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(namespace:, profile_id:, text:, request_options: {})
            end

            sig do
              override.returns(
                {
                  namespace: String,
                  profile_id: String,
                  text: String,
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
