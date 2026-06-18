# typed: strong

module Telnyx
  module Models
    EnterpriseReputationPublic = Enterprises::EnterpriseReputationPublic

    module Enterprises
      class EnterpriseReputationPublic < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Enterprises::EnterpriseReputationPublic,
              Telnyx::Internal::AnyHash
            )
          end

        # How often Telnyx refreshes the stored reputation data for this enterprise's
        # registered numbers.
        sig do
          returns(
            T.nilable(
              Telnyx::Enterprises::ReputationCheckFrequency::TaggedSymbol
            )
          )
        end
        attr_reader :check_frequency

        sig do
          params(
            check_frequency:
              Telnyx::Enterprises::ReputationCheckFrequency::OrSymbol
          ).void
        end
        attr_writer :check_frequency

        sig { returns(T.nilable(String)) }
        attr_reader :enterprise_id

        sig { params(enterprise_id: String).void }
        attr_writer :enterprise_id

        # Id of the signed LOA document.
        sig { returns(T.nilable(String)) }
        attr_accessor :loa_document_id

        # Customer-facing Letter-of-Authorization verification state. `approved` is
        # required (alongside reputation status) before phone numbers can be added.
        sig do
          returns(
            T.nilable(
              Telnyx::Enterprises::EnterpriseReputationPublic::LoaStatus::TaggedSymbol
            )
          )
        end
        attr_reader :loa_status

        sig do
          params(
            loa_status:
              Telnyx::Enterprises::EnterpriseReputationPublic::LoaStatus::OrSymbol
          ).void
        end
        attr_writer :loa_status

        # Populated when `status` is `rejected`.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :rejection_reasons

        # Lifecycle status of the enterprise's Phone Number Reputation activation.
        sig do
          returns(
            T.nilable(
              Telnyx::Enterprises::EnterpriseReputationPublic::Status::TaggedSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              Telnyx::Enterprises::EnterpriseReputationPublic::Status::OrSymbol
          ).void
        end
        attr_writer :status

        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        sig do
          params(
            check_frequency:
              Telnyx::Enterprises::ReputationCheckFrequency::OrSymbol,
            created_at: Time,
            enterprise_id: String,
            loa_document_id: T.nilable(String),
            loa_status:
              Telnyx::Enterprises::EnterpriseReputationPublic::LoaStatus::OrSymbol,
            rejection_reasons: T.nilable(T::Array[String]),
            status:
              Telnyx::Enterprises::EnterpriseReputationPublic::Status::OrSymbol,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # How often Telnyx refreshes the stored reputation data for this enterprise's
          # registered numbers.
          check_frequency: nil,
          created_at: nil,
          enterprise_id: nil,
          # Id of the signed LOA document.
          loa_document_id: nil,
          # Customer-facing Letter-of-Authorization verification state. `approved` is
          # required (alongside reputation status) before phone numbers can be added.
          loa_status: nil,
          # Populated when `status` is `rejected`.
          rejection_reasons: nil,
          # Lifecycle status of the enterprise's Phone Number Reputation activation.
          status: nil,
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              check_frequency:
                Telnyx::Enterprises::ReputationCheckFrequency::TaggedSymbol,
              created_at: Time,
              enterprise_id: String,
              loa_document_id: T.nilable(String),
              loa_status:
                Telnyx::Enterprises::EnterpriseReputationPublic::LoaStatus::TaggedSymbol,
              rejection_reasons: T.nilable(T::Array[String]),
              status:
                Telnyx::Enterprises::EnterpriseReputationPublic::Status::TaggedSymbol,
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        # Customer-facing Letter-of-Authorization verification state. `approved` is
        # required (alongside reputation status) before phone numbers can be added.
        module LoaStatus
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Enterprises::EnterpriseReputationPublic::LoaStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              Telnyx::Enterprises::EnterpriseReputationPublic::LoaStatus::TaggedSymbol
            )
          APPROVED =
            T.let(
              :approved,
              Telnyx::Enterprises::EnterpriseReputationPublic::LoaStatus::TaggedSymbol
            )
          REJECTED =
            T.let(
              :rejected,
              Telnyx::Enterprises::EnterpriseReputationPublic::LoaStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Enterprises::EnterpriseReputationPublic::LoaStatus::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Lifecycle status of the enterprise's Phone Number Reputation activation.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Enterprises::EnterpriseReputationPublic::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              Telnyx::Enterprises::EnterpriseReputationPublic::Status::TaggedSymbol
            )
          APPROVED =
            T.let(
              :approved,
              Telnyx::Enterprises::EnterpriseReputationPublic::Status::TaggedSymbol
            )
          DELETED =
            T.let(
              :deleted,
              Telnyx::Enterprises::EnterpriseReputationPublic::Status::TaggedSymbol
            )
          REJECTED =
            T.let(
              :rejected,
              Telnyx::Enterprises::EnterpriseReputationPublic::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Enterprises::EnterpriseReputationPublic::Status::TaggedSymbol
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
