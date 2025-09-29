# typed: strong

module Telnyx
  module Models
    SimCardGroupAction = SimCardGroups::SimCardGroupAction

    module SimCardGroups
      class SimCardGroupAction < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::SimCardGroups::SimCardGroupAction,
              Telnyx::Internal::AnyHash
            )
          end

        # A JSON object representation of the action params.
        sig do
          returns(
            T.nilable(Telnyx::SimCardGroups::SimCardGroupAction::Settings)
          )
        end
        attr_reader :settings

        sig do
          params(
            settings:
              Telnyx::SimCardGroups::SimCardGroupAction::Settings::OrHash
          ).void
        end
        attr_writer :settings

        # The SIM card group identification.
        sig { returns(T.nilable(String)) }
        attr_reader :sim_card_group_id

        sig { params(sim_card_group_id: String).void }
        attr_writer :sim_card_group_id

        sig do
          returns(
            T.nilable(
              Telnyx::SimCardGroups::SimCardGroupAction::Status::TaggedSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status: Telnyx::SimCardGroups::SimCardGroupAction::Status::OrSymbol
          ).void
        end
        attr_writer :status

        # Represents the type of the operation requested.
        sig do
          returns(
            T.nilable(
              Telnyx::SimCardGroups::SimCardGroupAction::Type::TaggedSymbol
            )
          )
        end
        attr_reader :type

        sig do
          params(
            type: Telnyx::SimCardGroups::SimCardGroupAction::Type::OrSymbol
          ).void
        end
        attr_writer :type

        # Identifies the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # ISO 8601 formatted date-time indicating when the resource was created.
        sig { returns(T.nilable(String)) }
        attr_reader :created_at

        sig { params(created_at: String).void }
        attr_writer :created_at

        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        # ISO 8601 formatted date-time indicating when the resource was updated.
        sig { returns(T.nilable(String)) }
        attr_reader :updated_at

        sig { params(updated_at: String).void }
        attr_writer :updated_at

        # This object represents a SIM card group action request. It allows tracking the
        # current status of an operation that impacts the SIM card group and SIM card in
        # it.
        sig do
          params(
            id: String,
            created_at: String,
            record_type: String,
            settings:
              Telnyx::SimCardGroups::SimCardGroupAction::Settings::OrHash,
            sim_card_group_id: String,
            status: Telnyx::SimCardGroups::SimCardGroupAction::Status::OrSymbol,
            type: Telnyx::SimCardGroups::SimCardGroupAction::Type::OrSymbol,
            updated_at: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifies the resource.
          id: nil,
          # ISO 8601 formatted date-time indicating when the resource was created.
          created_at: nil,
          record_type: nil,
          # A JSON object representation of the action params.
          settings: nil,
          # The SIM card group identification.
          sim_card_group_id: nil,
          status: nil,
          # Represents the type of the operation requested.
          type: nil,
          # ISO 8601 formatted date-time indicating when the resource was updated.
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: String,
              record_type: String,
              settings: Telnyx::SimCardGroups::SimCardGroupAction::Settings,
              sim_card_group_id: String,
              status:
                Telnyx::SimCardGroups::SimCardGroupAction::Status::TaggedSymbol,
              type:
                Telnyx::SimCardGroups::SimCardGroupAction::Type::TaggedSymbol,
              updated_at: String
            }
          )
        end
        def to_hash
        end

        class Settings < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::SimCardGroups::SimCardGroupAction::Settings,
                Telnyx::Internal::AnyHash
              )
            end

          # The identification of the related Private Wireless Gateway resource.
          sig { returns(T.nilable(String)) }
          attr_reader :private_wireless_gateway_id

          sig { params(private_wireless_gateway_id: String).void }
          attr_writer :private_wireless_gateway_id

          # A JSON object representation of the action params.
          sig do
            params(private_wireless_gateway_id: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # The identification of the related Private Wireless Gateway resource.
            private_wireless_gateway_id: nil
          )
          end

          sig { override.returns({ private_wireless_gateway_id: String }) }
          def to_hash
          end
        end

        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::SimCardGroups::SimCardGroupAction::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IN_PROGRESS =
            T.let(
              :"in-progress",
              Telnyx::SimCardGroups::SimCardGroupAction::Status::TaggedSymbol
            )
          COMPLETED =
            T.let(
              :completed,
              Telnyx::SimCardGroups::SimCardGroupAction::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              Telnyx::SimCardGroups::SimCardGroupAction::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::SimCardGroups::SimCardGroupAction::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Represents the type of the operation requested.
        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::SimCardGroups::SimCardGroupAction::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SET_PRIVATE_WIRELESS_GATEWAY =
            T.let(
              :set_private_wireless_gateway,
              Telnyx::SimCardGroups::SimCardGroupAction::Type::TaggedSymbol
            )
          REMOVE_PRIVATE_WIRELESS_GATEWAY =
            T.let(
              :remove_private_wireless_gateway,
              Telnyx::SimCardGroups::SimCardGroupAction::Type::TaggedSymbol
            )
          SET_WIRELESS_BLOCKLIST =
            T.let(
              :set_wireless_blocklist,
              Telnyx::SimCardGroups::SimCardGroupAction::Type::TaggedSymbol
            )
          REMOVE_WIRELESS_BLOCKLIST =
            T.let(
              :remove_wireless_blocklist,
              Telnyx::SimCardGroups::SimCardGroupAction::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::SimCardGroups::SimCardGroupAction::Type::TaggedSymbol
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
