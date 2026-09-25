# typed: strong

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          module Profiles
            class SourceRetrieveParams < Telnyx::Internal::Type::BaseModel
              extend Telnyx::Internal::Type::RequestParameters::Converter
              include Telnyx::Internal::Type::RequestParameters

              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::Memory::Namespaces::Profiles::SourceRetrieveParams,
                    Telnyx::Internal::AnyHash
                  )
                end

              # The namespace. `default` exists for every organization.
              sig { returns(String) }
              attr_accessor :namespace

              # The profile: your identifier for the user, caller or agent this memory is about.
              sig { returns(String) }
              attr_accessor :profile_id

              # Identifies one source within its profile: an ingested session, or one remembered
              # fact. Returned by `ingest` and `remember` when the write is accepted.
              # Re-ingesting a session keeps its source id.
              sig { returns(String) }
              attr_accessor :source_id

              sig do
                params(
                  namespace: String,
                  profile_id: String,
                  source_id: String,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                # The namespace. `default` exists for every organization.
                namespace:,
                # The profile: your identifier for the user, caller or agent this memory is about.
                profile_id:,
                # Identifies one source within its profile: an ingested session, or one remembered
                # fact. Returned by `ingest` and `remember` when the write is accepted.
                # Re-ingesting a session keeps its source id.
                source_id:,
                request_options: {}
              )
              end

              sig do
                override.returns(
                  {
                    namespace: String,
                    profile_id: String,
                    source_id: String,
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
end
