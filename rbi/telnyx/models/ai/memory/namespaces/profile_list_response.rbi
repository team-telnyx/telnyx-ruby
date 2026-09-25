# typed: strong

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          class ProfileListResponse < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::AI::Memory::Namespaces::ProfileListResponse,
                  Telnyx::Internal::AnyHash
                )
              end

            # Memories stored under this profile, including the consolidated ones that
            # paraphrase others. Listings are ordered by it.
            sig { returns(Integer) }
            attr_accessor :memory_count

            sig { returns(String) }
            attr_accessor :profile_id

            sig do
              params(memory_count: Integer, profile_id: String).returns(
                T.attached_class
              )
            end
            def self.new(
              # Memories stored under this profile, including the consolidated ones that
              # paraphrase others. Listings are ordered by it.
              memory_count:,
              profile_id:
            )
            end

            sig do
              override.returns({ memory_count: Integer, profile_id: String })
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
