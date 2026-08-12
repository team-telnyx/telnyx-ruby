# typed: strong

module Telnyx
  module Models
    module Rcs
      class AgentCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::Rcs::AgentCreateParams, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :brand_id

        sig { returns(Telnyx::Rcs::AgentConfiguration) }
        attr_reader :configuration

        sig do
          params(configuration: Telnyx::Rcs::AgentConfiguration::OrHash).void
        end
        attr_writer :configuration

        sig { returns(String) }
        attr_accessor :display_name

        sig { returns(Telnyx::Rcs::AgentUseCase::OrSymbol) }
        attr_accessor :use_case

        sig { returns(String) }
        attr_accessor :idempotency_key

        sig { returns(T.nilable(String)) }
        attr_accessor :hosting_region

        # A Messaging Profile owned by the authenticated organization. When omitted, the
        # agent inherits the brand profile.
        sig { returns(T.nilable(String)) }
        attr_accessor :profile_id

        sig do
          params(
            brand_id: String,
            configuration: Telnyx::Rcs::AgentConfiguration::OrHash,
            display_name: String,
            use_case: Telnyx::Rcs::AgentUseCase::OrSymbol,
            idempotency_key: String,
            hosting_region: T.nilable(String),
            profile_id: T.nilable(String),
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          brand_id:,
          configuration:,
          display_name:,
          use_case:,
          idempotency_key:,
          hosting_region: nil,
          # A Messaging Profile owned by the authenticated organization. When omitted, the
          # agent inherits the brand profile.
          profile_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              brand_id: String,
              configuration: Telnyx::Rcs::AgentConfiguration,
              display_name: String,
              use_case: Telnyx::Rcs::AgentUseCase::OrSymbol,
              idempotency_key: String,
              hosting_region: T.nilable(String),
              profile_id: T.nilable(String),
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
