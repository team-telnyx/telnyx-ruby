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
            returns(T::Array[Telnyx::AI::Integrations::IntegrationConnection])
          end
          attr_accessor :data

          sig do
            params(
              data:
                T::Array[
                  Telnyx::AI::Integrations::IntegrationConnection::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(data:)
          end

          sig do
            override.returns(
              {
                data: T::Array[Telnyx::AI::Integrations::IntegrationConnection]
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
