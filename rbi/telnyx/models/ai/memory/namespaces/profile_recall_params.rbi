# typed: strong

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          class ProfileRecallParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::Memory::Namespaces::ProfileRecallParams,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :namespace

            sig { returns(String) }
            attr_accessor :profile_id

            sig { returns(String) }
            attr_accessor :query

            sig { returns(T.nilable(Integer)) }
            attr_accessor :top_k

            sig do
              params(
                namespace: String,
                profile_id: String,
                query: String,
                top_k: T.nilable(Integer),
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              namespace:,
              profile_id:,
              query:,
              top_k: nil,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  namespace: String,
                  profile_id: String,
                  query: String,
                  top_k: T.nilable(Integer),
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
