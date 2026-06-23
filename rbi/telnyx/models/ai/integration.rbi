# typed: strong

module Telnyx
  module Models
    module AI
      class Integration < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::Integration, Telnyx::Internal::AnyHash)
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

        sig { returns(Telnyx::AI::Integration::Status::TaggedSymbol) }
        attr_accessor :status

        sig do
          params(
            id: String,
            available_tools: T::Array[String],
            description: String,
            display_name: String,
            logo_url: String,
            name: String,
            status: Telnyx::AI::Integration::Status::OrSymbol
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
              status: Telnyx::AI::Integration::Status::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Telnyx::AI::Integration::Status) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DISCONNECTED =
            T.let(:disconnected, Telnyx::AI::Integration::Status::TaggedSymbol)
          CONNECTED =
            T.let(:connected, Telnyx::AI::Integration::Status::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::AI::Integration::Status::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
