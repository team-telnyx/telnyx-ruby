# typed: strong

module Telnyx
  module Models
    module Rcs
      class AgentUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::Rcs::AgentUpdateParams, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Telnyx::Rcs::AgentConfiguration)) }
        attr_reader :configuration

        sig do
          params(configuration: Telnyx::Rcs::AgentConfiguration::OrHash).void
        end
        attr_writer :configuration

        sig { returns(T.nilable(String)) }
        attr_reader :display_name

        sig { params(display_name: String).void }
        attr_writer :display_name

        sig { returns(T.nilable(String)) }
        attr_reader :hosting_region

        sig { params(hosting_region: String).void }
        attr_writer :hosting_region

        sig { returns(T.nilable(String)) }
        attr_reader :profile_id

        sig { params(profile_id: String).void }
        attr_writer :profile_id

        sig { returns(T.nilable(Telnyx::Rcs::AgentUseCase::OrSymbol)) }
        attr_reader :use_case

        sig { params(use_case: Telnyx::Rcs::AgentUseCase::OrSymbol).void }
        attr_writer :use_case

        sig do
          params(
            id: String,
            configuration: Telnyx::Rcs::AgentConfiguration::OrHash,
            display_name: String,
            hosting_region: String,
            profile_id: String,
            use_case: Telnyx::Rcs::AgentUseCase::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          configuration: nil,
          display_name: nil,
          hosting_region: nil,
          profile_id: nil,
          use_case: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              configuration: Telnyx::Rcs::AgentConfiguration,
              display_name: String,
              hosting_region: String,
              profile_id: String,
              use_case: Telnyx::Rcs::AgentUseCase::OrSymbol,
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
