# typed: strong

module Telnyx
  module Models
    module AI
      module Assistants
        class VersionRetrieveParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Assistants::VersionRetrieveParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :assistant_id

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :include_mcp_servers

          sig { params(include_mcp_servers: T::Boolean).void }
          attr_writer :include_mcp_servers

          sig do
            params(
              assistant_id: String,
              include_mcp_servers: T::Boolean,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            assistant_id:,
            include_mcp_servers: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                assistant_id: String,
                include_mcp_servers: T::Boolean,
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
