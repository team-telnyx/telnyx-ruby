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

          sig { returns(Telnyx::AI::Integrations::IntegrationConnection) }
          attr_reader :data

          sig do
            params(
              data: Telnyx::AI::Integrations::IntegrationConnection::OrHash
            ).void
          end
          attr_writer :data

          sig do
            params(
              data: Telnyx::AI::Integrations::IntegrationConnection::OrHash
            ).returns(T.attached_class)
          end
          def self.new(data:)
          end

          sig do
            override.returns(
              { data: Telnyx::AI::Integrations::IntegrationConnection }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
