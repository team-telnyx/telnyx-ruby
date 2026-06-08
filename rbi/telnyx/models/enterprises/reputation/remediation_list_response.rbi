# typed: strong

module Telnyx
  module Models
    module Enterprises
      module Reputation
        class RemediationListResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Enterprises::Reputation::RemediationListResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :call_purpose

          sig { returns(Time) }
          attr_accessor :created_at

          sig { returns(Integer) }
          attr_accessor :phone_numbers_count

          # Customer-facing status of a remediation request.
          sig do
            returns(
              Telnyx::Models::Enterprises::Reputation::RemediationListResponse::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          sig { returns(Time) }
          attr_accessor :updated_at

          sig { returns(T.nilable(Time)) }
          attr_accessor :tier1_completed_at

          sig { returns(T.nilable(Time)) }
          attr_accessor :tier2_completed_at

          # Slim list-endpoint shape. Omits per-number results and webhook URLs to keep
          # responses small.
          sig do
            params(
              id: String,
              call_purpose: String,
              created_at: Time,
              phone_numbers_count: Integer,
              status:
                Telnyx::Models::Enterprises::Reputation::RemediationListResponse::Status::OrSymbol,
              updated_at: Time,
              tier1_completed_at: T.nilable(Time),
              tier2_completed_at: T.nilable(Time)
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            call_purpose:,
            created_at:,
            phone_numbers_count:,
            # Customer-facing status of a remediation request.
            status:,
            updated_at:,
            tier1_completed_at: nil,
            tier2_completed_at: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                call_purpose: String,
                created_at: Time,
                phone_numbers_count: Integer,
                status:
                  Telnyx::Models::Enterprises::Reputation::RemediationListResponse::Status::TaggedSymbol,
                updated_at: Time,
                tier1_completed_at: T.nilable(Time),
                tier2_completed_at: T.nilable(Time)
              }
            )
          end
          def to_hash
          end

          # Customer-facing status of a remediation request.
          module Status
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::Enterprises::Reputation::RemediationListResponse::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING =
              T.let(
                :pending,
                Telnyx::Models::Enterprises::Reputation::RemediationListResponse::Status::TaggedSymbol
              )
            IN_PROGRESS =
              T.let(
                :in_progress,
                Telnyx::Models::Enterprises::Reputation::RemediationListResponse::Status::TaggedSymbol
              )
            COMPLETED =
              T.let(
                :completed,
                Telnyx::Models::Enterprises::Reputation::RemediationListResponse::Status::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                Telnyx::Models::Enterprises::Reputation::RemediationListResponse::Status::TaggedSymbol
              )
            CANCELLED =
              T.let(
                :cancelled,
                Telnyx::Models::Enterprises::Reputation::RemediationListResponse::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::Enterprises::Reputation::RemediationListResponse::Status::TaggedSymbol
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
