# typed: strong

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          class ProfilePreviewParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::Memory::Namespaces::ProfilePreviewParams,
                  Telnyx::Internal::AnyHash
                )
              end

            # The namespace. `default` exists for every organization.
            sig { returns(String) }
            attr_accessor :namespace

            sig { returns(String) }
            attr_accessor :profile_id

            # The candidate note to try. `null`, empty, or whitespace-only previews the
            # neutral default -- the summary a profile returns to when instructions are
            # cleared. Capped at 2000 characters, the same cap `PATCH /settings` applies on
            # save; a longer note is refused with `422` before anything is generated.
            sig { returns(T.nilable(String)) }
            attr_accessor :instructions

            sig do
              params(
                namespace: String,
                profile_id: String,
                instructions: T.nilable(String),
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # The namespace. `default` exists for every organization.
              namespace:,
              profile_id:,
              # The candidate note to try. `null`, empty, or whitespace-only previews the
              # neutral default -- the summary a profile returns to when instructions are
              # cleared. Capped at 2000 characters, the same cap `PATCH /settings` applies on
              # save; a longer note is refused with `422` before anything is generated.
              instructions: nil,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  namespace: String,
                  profile_id: String,
                  instructions: T.nilable(String),
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
