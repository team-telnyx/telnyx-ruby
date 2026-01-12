# typed: strong

module Telnyx
  module Models
    module AI
      module Integrations
        class ConnectionListResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::AI::Integrations::ConnectionListResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              T::Array[
                Telnyx::Models::AI::Integrations::ConnectionListResponse::Data
              ]
            )
          end
          attr_accessor :data

          sig do
            params(
              data:
                T::Array[
                  Telnyx::Models::AI::Integrations::ConnectionListResponse::Data::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(data:)
          end

          sig do
            override.returns(
              {
                data:
                  T::Array[
                    Telnyx::Models::AI::Integrations::ConnectionListResponse::Data
                  ]
              }
            )
          end
          def to_hash
          end

          class Data < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::AI::Integrations::ConnectionListResponse::Data,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(T::Array[String]) }
            attr_accessor :allowed_tools

            sig { returns(String) }
            attr_accessor :integration_id

            sig do
              params(
                id: String,
                allowed_tools: T::Array[String],
                integration_id: String
              ).returns(T.attached_class)
            end
            def self.new(id:, allowed_tools:, integration_id:)
            end

            sig do
              override.returns(
                {
                  id: String,
                  allowed_tools: T::Array[String],
                  integration_id: String
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
