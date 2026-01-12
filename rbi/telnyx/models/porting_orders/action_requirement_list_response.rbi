# typed: strong

module Telnyx
  module Models
    module PortingOrders
      class ActionRequirementListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::PortingOrders::ActionRequirementListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # Identifies the action requirement
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # The type of action required
        sig { returns(T.nilable(String)) }
        attr_reader :action_type

        sig { params(action_type: String).void }
        attr_writer :action_type

        # Optional URL for the action
        sig { returns(T.nilable(String)) }
        attr_accessor :action_url

        # Reason for cancellation if status is 'cancelled'
        sig { returns(T.nilable(String)) }
        attr_accessor :cancel_reason

        # ISO 8601 formatted date-time indicating when the resource was created
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # The ID of the porting order this action requirement belongs to
        sig { returns(T.nilable(String)) }
        attr_reader :porting_order_id

        sig { params(porting_order_id: String).void }
        attr_writer :porting_order_id

        # Identifies the type of the resource
        sig do
          returns(
            T.nilable(
              Telnyx::Models::PortingOrders::ActionRequirementListResponse::RecordType::TaggedSymbol
            )
          )
        end
        attr_reader :record_type

        sig do
          params(
            record_type:
              Telnyx::Models::PortingOrders::ActionRequirementListResponse::RecordType::OrSymbol
          ).void
        end
        attr_writer :record_type

        # The ID of the requirement type
        sig { returns(T.nilable(String)) }
        attr_reader :requirement_type_id

        sig { params(requirement_type_id: String).void }
        attr_writer :requirement_type_id

        # Current status of the action requirement
        sig do
          returns(
            T.nilable(
              Telnyx::Models::PortingOrders::ActionRequirementListResponse::Status::TaggedSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              Telnyx::Models::PortingOrders::ActionRequirementListResponse::Status::OrSymbol
          ).void
        end
        attr_writer :status

        # ISO 8601 formatted date-time indicating when the resource was updated
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        sig do
          params(
            id: String,
            action_type: String,
            action_url: T.nilable(String),
            cancel_reason: T.nilable(String),
            created_at: Time,
            porting_order_id: String,
            record_type:
              Telnyx::Models::PortingOrders::ActionRequirementListResponse::RecordType::OrSymbol,
            requirement_type_id: String,
            status:
              Telnyx::Models::PortingOrders::ActionRequirementListResponse::Status::OrSymbol,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifies the action requirement
          id: nil,
          # The type of action required
          action_type: nil,
          # Optional URL for the action
          action_url: nil,
          # Reason for cancellation if status is 'cancelled'
          cancel_reason: nil,
          # ISO 8601 formatted date-time indicating when the resource was created
          created_at: nil,
          # The ID of the porting order this action requirement belongs to
          porting_order_id: nil,
          # Identifies the type of the resource
          record_type: nil,
          # The ID of the requirement type
          requirement_type_id: nil,
          # Current status of the action requirement
          status: nil,
          # ISO 8601 formatted date-time indicating when the resource was updated
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              action_type: String,
              action_url: T.nilable(String),
              cancel_reason: T.nilable(String),
              created_at: Time,
              porting_order_id: String,
              record_type:
                Telnyx::Models::PortingOrders::ActionRequirementListResponse::RecordType::TaggedSymbol,
              requirement_type_id: String,
              status:
                Telnyx::Models::PortingOrders::ActionRequirementListResponse::Status::TaggedSymbol,
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        # Identifies the type of the resource
        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::PortingOrders::ActionRequirementListResponse::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PORTING_ACTION_REQUIREMENT =
            T.let(
              :porting_action_requirement,
              Telnyx::Models::PortingOrders::ActionRequirementListResponse::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::PortingOrders::ActionRequirementListResponse::RecordType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Current status of the action requirement
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::PortingOrders::ActionRequirementListResponse::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATED =
            T.let(
              :created,
              Telnyx::Models::PortingOrders::ActionRequirementListResponse::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :pending,
              Telnyx::Models::PortingOrders::ActionRequirementListResponse::Status::TaggedSymbol
            )
          COMPLETED =
            T.let(
              :completed,
              Telnyx::Models::PortingOrders::ActionRequirementListResponse::Status::TaggedSymbol
            )
          CANCELLED =
            T.let(
              :cancelled,
              Telnyx::Models::PortingOrders::ActionRequirementListResponse::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              Telnyx::Models::PortingOrders::ActionRequirementListResponse::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::PortingOrders::ActionRequirementListResponse::Status::TaggedSymbol
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
