# typed: strong

module Telnyx
  module Models
    module AI
      module Memory
        class NamespaceRetrieveResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::AI::Memory::NamespaceRetrieveResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(Telnyx::Models::AI::Memory::NamespaceRetrieveResponse::Data)
          end
          attr_reader :data

          sig do
            params(
              data:
                Telnyx::Models::AI::Memory::NamespaceRetrieveResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          sig do
            params(
              data:
                Telnyx::Models::AI::Memory::NamespaceRetrieveResponse::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(data:)
          end

          sig do
            override.returns(
              {
                data:
                  Telnyx::Models::AI::Memory::NamespaceRetrieveResponse::Data
              }
            )
          end
          def to_hash
          end

          class Data < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::AI::Memory::NamespaceRetrieveResponse::Data,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :operation_id

            # Where the write is. `completed`, `failed` and `cancelled` are terminal: stop
            # polling at any of them, and treat `failed` and `cancelled` as writes that did
            # not happen.
            sig do
              returns(
                Telnyx::Models::AI::Memory::NamespaceRetrieveResponse::Data::Status::TaggedSymbol
              )
            end
            attr_accessor :status

            sig { returns(T.nilable(String)) }
            attr_accessor :completed_at

            sig { returns(T.nilable(String)) }
            attr_accessor :created_at

            sig do
              params(
                operation_id: String,
                status:
                  Telnyx::Models::AI::Memory::NamespaceRetrieveResponse::Data::Status::OrSymbol,
                completed_at: T.nilable(String),
                created_at: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              operation_id:,
              # Where the write is. `completed`, `failed` and `cancelled` are terminal: stop
              # polling at any of them, and treat `failed` and `cancelled` as writes that did
              # not happen.
              status:,
              completed_at: nil,
              created_at: nil
            )
            end

            sig do
              override.returns(
                {
                  operation_id: String,
                  status:
                    Telnyx::Models::AI::Memory::NamespaceRetrieveResponse::Data::Status::TaggedSymbol,
                  completed_at: T.nilable(String),
                  created_at: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            # Where the write is. `completed`, `failed` and `cancelled` are terminal: stop
            # polling at any of them, and treat `failed` and `cancelled` as writes that did
            # not happen.
            module Status
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Models::AI::Memory::NamespaceRetrieveResponse::Data::Status
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PENDING =
                T.let(
                  :pending,
                  Telnyx::Models::AI::Memory::NamespaceRetrieveResponse::Data::Status::TaggedSymbol
                )
              PROCESSING =
                T.let(
                  :processing,
                  Telnyx::Models::AI::Memory::NamespaceRetrieveResponse::Data::Status::TaggedSymbol
                )
              COMPLETED =
                T.let(
                  :completed,
                  Telnyx::Models::AI::Memory::NamespaceRetrieveResponse::Data::Status::TaggedSymbol
                )
              FAILED =
                T.let(
                  :failed,
                  Telnyx::Models::AI::Memory::NamespaceRetrieveResponse::Data::Status::TaggedSymbol
                )
              CANCELLED =
                T.let(
                  :cancelled,
                  Telnyx::Models::AI::Memory::NamespaceRetrieveResponse::Data::Status::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::AI::Memory::NamespaceRetrieveResponse::Data::Status::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end
      end
    end
  end
end
