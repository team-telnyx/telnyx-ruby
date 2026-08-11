# typed: strong

module Telnyx
  module Models
    module Rcs
      class CarrierApprovalResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Rcs::CarrierApprovalResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :approval_id

        sig { returns(T.nilable(Time)) }
        attr_accessor :approved_at

        sig { returns(T.nilable(String)) }
        attr_accessor :carrier

        sig { returns(T.nilable(String)) }
        attr_accessor :rejected_reason

        sig do
          returns(Telnyx::Rcs::CarrierApprovalResponse::ScopeType::TaggedSymbol)
        end
        attr_accessor :scope_type

        sig do
          returns(Telnyx::Rcs::CarrierApprovalResponse::Status::TaggedSymbol)
        end
        attr_accessor :status

        sig { returns(T.nilable(Time)) }
        attr_accessor :submitted_at

        sig do
          params(
            approval_id: String,
            approved_at: T.nilable(Time),
            carrier: T.nilable(String),
            rejected_reason: T.nilable(String),
            scope_type:
              Telnyx::Rcs::CarrierApprovalResponse::ScopeType::OrSymbol,
            status: Telnyx::Rcs::CarrierApprovalResponse::Status::OrSymbol,
            submitted_at: T.nilable(Time)
          ).returns(T.attached_class)
        end
        def self.new(
          approval_id:,
          approved_at:,
          carrier:,
          rejected_reason:,
          scope_type:,
          status:,
          submitted_at:
        )
        end

        sig do
          override.returns(
            {
              approval_id: String,
              approved_at: T.nilable(Time),
              carrier: T.nilable(String),
              rejected_reason: T.nilable(String),
              scope_type:
                Telnyx::Rcs::CarrierApprovalResponse::ScopeType::TaggedSymbol,
              status:
                Telnyx::Rcs::CarrierApprovalResponse::Status::TaggedSymbol,
              submitted_at: T.nilable(Time)
            }
          )
        end
        def to_hash
        end

        module ScopeType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Rcs::CarrierApprovalResponse::ScopeType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CARRIER =
            T.let(
              :carrier,
              Telnyx::Rcs::CarrierApprovalResponse::ScopeType::TaggedSymbol
            )
          HUB =
            T.let(
              :hub,
              Telnyx::Rcs::CarrierApprovalResponse::ScopeType::TaggedSymbol
            )
          BOT =
            T.let(
              :bot,
              Telnyx::Rcs::CarrierApprovalResponse::ScopeType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Rcs::CarrierApprovalResponse::ScopeType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Rcs::CarrierApprovalResponse::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :PENDING,
              Telnyx::Rcs::CarrierApprovalResponse::Status::TaggedSymbol
            )
          SUBMITTED =
            T.let(
              :SUBMITTED,
              Telnyx::Rcs::CarrierApprovalResponse::Status::TaggedSymbol
            )
          APPROVED =
            T.let(
              :APPROVED,
              Telnyx::Rcs::CarrierApprovalResponse::Status::TaggedSymbol
            )
          REJECTED =
            T.let(
              :REJECTED,
              Telnyx::Rcs::CarrierApprovalResponse::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Rcs::CarrierApprovalResponse::Status::TaggedSymbol
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
