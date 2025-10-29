# typed: strong

module Telnyx
  module Models
    module AI
      class IntegrationRetrieveResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::AI::IntegrationRetrieveResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T::Array[String]) }
        attr_accessor :available_tools

        sig { returns(String) }
        attr_accessor :description

        sig { returns(String) }
        attr_accessor :display_name

        sig { returns(String) }
        attr_accessor :logo_url

        sig { returns(String) }
        attr_accessor :name

        sig do
          returns(
            Telnyx::Models::AI::IntegrationRetrieveResponse::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        sig do
          params(
            id: String,
            available_tools: T::Array[String],
            description: String,
            display_name: String,
            logo_url: String,
            name: String,
            status:
              Telnyx::Models::AI::IntegrationRetrieveResponse::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          available_tools:,
          description:,
          display_name:,
          logo_url:,
          name:,
          status:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              available_tools: T::Array[String],
              description: String,
              display_name: String,
              logo_url: String,
              name: String,
              status:
                Telnyx::Models::AI::IntegrationRetrieveResponse::Status::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::AI::IntegrationRetrieveResponse::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DISCONNECTED =
            T.let(
              :disconnected,
              Telnyx::Models::AI::IntegrationRetrieveResponse::Status::TaggedSymbol
            )
          CONNECTED =
            T.let(
              :connected,
              Telnyx::Models::AI::IntegrationRetrieveResponse::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::AI::IntegrationRetrieveResponse::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
