# typed: strong

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          class ProfilePreviewResponse < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::AI::Memory::Namespaces::ProfilePreviewResponse,
                  Telnyx::Internal::AnyHash
                )
              end

            sig do
              returns(
                Telnyx::Models::AI::Memory::Namespaces::ProfilePreviewResponse::Data
              )
            end
            attr_reader :data

            sig do
              params(
                data:
                  Telnyx::Models::AI::Memory::Namespaces::ProfilePreviewResponse::Data::OrHash
              ).void
            end
            attr_writer :data

            sig do
              params(
                data:
                  Telnyx::Models::AI::Memory::Namespaces::ProfilePreviewResponse::Data::OrHash
              ).returns(T.attached_class)
            end
            def self.new(data:)
            end

            sig do
              override.returns(
                {
                  data:
                    Telnyx::Models::AI::Memory::Namespaces::ProfilePreviewResponse::Data
                }
              )
            end
            def to_hash
            end

            class Data < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::AI::Memory::Namespaces::ProfilePreviewResponse::Data,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :profile_id

              # The summary this profile would carry under the candidate note. Null when nothing
              # was generated -- the same signal `GET /summary` uses for a profile with no card
              # yet.
              sig { returns(T.nilable(String)) }
              attr_accessor :text

              sig do
                params(profile_id: String, text: T.nilable(String)).returns(
                  T.attached_class
                )
              end
              def self.new(
                profile_id:,
                # The summary this profile would carry under the candidate note. Null when nothing
                # was generated -- the same signal `GET /summary` uses for a profile with no card
                # yet.
                text:
              )
              end

              sig do
                override.returns(
                  { profile_id: String, text: T.nilable(String) }
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
