# typed: strong

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          module Profiles
            class MemoryListResponse < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::AI::Memory::Namespaces::Profiles::MemoryListResponse,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              # The source this memory was extracted from. Set for a fact, which comes from
              # exactly one source; null for a memory derived from other memories. Read it with
              # `GET .../sources/{source_id}`. A source deleted a moment ago can still be named
              # here, and then answers 404.
              sig { returns(T.nilable(String)) }
              attr_accessor :source_id

              sig { returns(String) }
              attr_accessor :text

              sig { returns(T.nilable(String)) }
              attr_accessor :recorded_at

              sig do
                params(
                  id: String,
                  source_id: T.nilable(String),
                  text: String,
                  recorded_at: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                # The source this memory was extracted from. Set for a fact, which comes from
                # exactly one source; null for a memory derived from other memories. Read it with
                # `GET .../sources/{source_id}`. A source deleted a moment ago can still be named
                # here, and then answers 404.
                source_id:,
                text:,
                recorded_at: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    source_id: T.nilable(String),
                    text: String,
                    recorded_at: T.nilable(String)
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
