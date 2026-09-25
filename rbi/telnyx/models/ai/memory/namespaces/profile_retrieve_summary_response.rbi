# typed: strong

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          class ProfileRetrieveSummaryResponse < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::AI::Memory::Namespaces::ProfileRetrieveSummaryResponse,
                  Telnyx::Internal::AnyHash
                )
              end

            sig do
              returns(
                Telnyx::Models::AI::Memory::Namespaces::ProfileRetrieveSummaryResponse::Data
              )
            end
            attr_reader :data

            sig do
              params(
                data:
                  Telnyx::Models::AI::Memory::Namespaces::ProfileRetrieveSummaryResponse::Data::OrHash
              ).void
            end
            attr_writer :data

            sig do
              params(
                data:
                  Telnyx::Models::AI::Memory::Namespaces::ProfileRetrieveSummaryResponse::Data::OrHash
              ).returns(T.attached_class)
            end
            def self.new(data:)
            end

            sig do
              override.returns(
                {
                  data:
                    Telnyx::Models::AI::Memory::Namespaces::ProfileRetrieveSummaryResponse::Data
                }
              )
            end
            def to_hash
            end

            class Data < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::AI::Memory::Namespaces::ProfileRetrieveSummaryResponse::Data,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Whether newer memories have arrived since the summary was generated. The summary
              # is regenerated in the background, so a true here is ordinary and the summary is
              # still usable.
              sig { returns(T::Boolean) }
              attr_accessor :is_stale

              sig { returns(String) }
              attr_accessor :profile_id

              # When the summary was last generated. Null while none is ready.
              sig { returns(T.nilable(String)) }
              attr_accessor :generated_at

              # The precomputed summary, ready to place in an assistant's context at the start
              # of a session.
              sig { returns(T.nilable(String)) }
              attr_accessor :text

              sig do
                params(
                  is_stale: T::Boolean,
                  profile_id: String,
                  generated_at: T.nilable(String),
                  text: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # Whether newer memories have arrived since the summary was generated. The summary
                # is regenerated in the background, so a true here is ordinary and the summary is
                # still usable.
                is_stale:,
                profile_id:,
                # When the summary was last generated. Null while none is ready.
                generated_at: nil,
                # The precomputed summary, ready to place in an assistant's context at the start
                # of a session.
                text: nil
              )
              end

              sig do
                override.returns(
                  {
                    is_stale: T::Boolean,
                    profile_id: String,
                    generated_at: T.nilable(String),
                    text: T.nilable(String)
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
