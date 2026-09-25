# typed: strong

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          class ProfileDeleteResponse < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::AI::Memory::Namespaces::ProfileDeleteResponse,
                  Telnyx::Internal::AnyHash
                )
              end

            sig do
              returns(
                Telnyx::Models::AI::Memory::Namespaces::ProfileDeleteResponse::Data
              )
            end
            attr_reader :data

            sig do
              params(
                data:
                  Telnyx::Models::AI::Memory::Namespaces::ProfileDeleteResponse::Data::OrHash
              ).void
            end
            attr_writer :data

            sig do
              params(
                data:
                  Telnyx::Models::AI::Memory::Namespaces::ProfileDeleteResponse::Data::OrHash
              ).returns(T.attached_class)
            end
            def self.new(data:)
            end

            sig do
              override.returns(
                {
                  data:
                    Telnyx::Models::AI::Memory::Namespaces::ProfileDeleteResponse::Data
                }
              )
            end
            def to_hash
            end

            class Data < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::AI::Memory::Namespaces::ProfileDeleteResponse::Data,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Memories the profile held and no longer does, counted before and after. A report
              # rather than an audit: memory moves in the background between the two counts. The
              # status carries the outcome.
              sig { returns(Integer) }
              attr_accessor :memories_deleted

              sig { returns(String) }
              attr_accessor :profile_id

              sig do
                params(memories_deleted: Integer, profile_id: String).returns(
                  T.attached_class
                )
              end
              def self.new(
                # Memories the profile held and no longer does, counted before and after. A report
                # rather than an audit: memory moves in the background between the two counts. The
                # status carries the outcome.
                memories_deleted:,
                profile_id:
              )
              end

              sig do
                override.returns(
                  { memories_deleted: Integer, profile_id: String }
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
