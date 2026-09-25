# typed: strong

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          module Profiles
            class MemoryRetrieveResponse < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::AI::Memory::Namespaces::Profiles::MemoryRetrieveResponse,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  Telnyx::Models::AI::Memory::Namespaces::Profiles::MemoryRetrieveResponse::Data
                )
              end
              attr_reader :data

              sig do
                params(
                  data:
                    Telnyx::Models::AI::Memory::Namespaces::Profiles::MemoryRetrieveResponse::Data::OrHash
                ).void
              end
              attr_writer :data

              sig do
                params(
                  data:
                    Telnyx::Models::AI::Memory::Namespaces::Profiles::MemoryRetrieveResponse::Data::OrHash
                ).returns(T.attached_class)
              end
              def self.new(data:)
              end

              sig do
                override.returns(
                  {
                    data:
                      Telnyx::Models::AI::Memory::Namespaces::Profiles::MemoryRetrieveResponse::Data
                  }
                )
              end
              def to_hash
              end

              class Data < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::Models::AI::Memory::Namespaces::Profiles::MemoryRetrieveResponse::Data,
                      Telnyx::Internal::AnyHash
                    )
                  end

                sig { returns(String) }
                attr_accessor :id

                # The ids of the memories this one was derived from. Read each with
                # `GET .../memories/{memory_id}` to reach its `source_id`. Set for a derived
                # memory; null for a fact.
                sig { returns(T.nilable(T::Array[String])) }
                attr_accessor :derived_from

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
                    derived_from: T.nilable(T::Array[String]),
                    source_id: T.nilable(String),
                    text: String,
                    recorded_at: T.nilable(String)
                  ).returns(T.attached_class)
                end
                def self.new(
                  id:,
                  # The ids of the memories this one was derived from. Read each with
                  # `GET .../memories/{memory_id}` to reach its `source_id`. Set for a derived
                  # memory; null for a fact.
                  derived_from:,
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
                      derived_from: T.nilable(T::Array[String]),
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
end
