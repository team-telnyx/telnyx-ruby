# typed: strong

module Telnyx
  module Models
    module AI
      module Integrations
        class ConnectionRetrieveResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::AI::Integrations::ConnectionRetrieveResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              Telnyx::Models::AI::Integrations::ConnectionRetrieveResponse::Data
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                Telnyx::Models::AI::Integrations::ConnectionRetrieveResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          sig do
            params(
              data:
                Telnyx::Models::AI::Integrations::ConnectionRetrieveResponse::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(data:)
          end

          sig do
            override.returns(
              {
                data:
                  Telnyx::Models::AI::Integrations::ConnectionRetrieveResponse::Data
              }
            )
          end
          def to_hash
          end

          class Data < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::AI::Integrations::ConnectionRetrieveResponse::Data,
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
