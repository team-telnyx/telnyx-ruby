# typed: strong

module Telnyx
  module Models
    module SimCards
      class WirelessSimCardAction < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::SimCards::WirelessSimCardAction,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(T.nilable(Telnyx::SimCards::WirelessSimCardAction::Status))
        end
        attr_reader :status

        sig do
          params(
            status: Telnyx::SimCards::WirelessSimCardAction::Status::OrHash
          ).void
        end
        attr_writer :status

        # Identifies the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # The operation type. It can be one of the following: <br/>
        #
        # <ul>
        #  <li><code>enable</code> - move the SIM card to the <code>enabled</code> status</li>
        #  <li><code>enable_standby_sim_card</code> - move a SIM card previously on the <code>standby</code> status to the <code>enabled</code> status after it consumes data.</li>
        #  <li><code>disable</code> - move the SIM card to the <code>disabled</code> status</li>
        #  <li><code>set_standby</code> - move the SIM card to the <code>standby</code> status</li>
        #  </ul>
        sig do
          returns(
            T.nilable(
              Telnyx::SimCards::WirelessSimCardAction::ActionType::TaggedSymbol
            )
          )
        end
        attr_reader :action_type

        sig do
          params(
            action_type:
              Telnyx::SimCards::WirelessSimCardAction::ActionType::OrSymbol
          ).void
        end
        attr_writer :action_type

        # ISO 8601 formatted date-time indicating when the resource was created.
        sig { returns(T.nilable(String)) }
        attr_reader :created_at

        sig { params(created_at: String).void }
        attr_writer :created_at

        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        # A JSON object representation of the action params.
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_accessor :settings

        # The related SIM card identifier.
        sig { returns(T.nilable(String)) }
        attr_reader :sim_card_id

        sig { params(sim_card_id: String).void }
        attr_writer :sim_card_id

        # ISO 8601 formatted date-time indicating when the resource was updated.
        sig { returns(T.nilable(String)) }
        attr_reader :updated_at

        sig { params(updated_at: String).void }
        attr_writer :updated_at

        # This object represents a SIM card action. It allows tracking the current status
        # of an operation that impacts the SIM card.
        sig do
          params(
            id: String,
            action_type:
              Telnyx::SimCards::WirelessSimCardAction::ActionType::OrSymbol,
            created_at: String,
            record_type: String,
            settings: T.nilable(T::Hash[Symbol, T.anything]),
            sim_card_id: String,
            status: Telnyx::SimCards::WirelessSimCardAction::Status::OrHash,
            updated_at: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifies the resource.
          id: nil,
          # The operation type. It can be one of the following: <br/>
          #
          # <ul>
          #  <li><code>enable</code> - move the SIM card to the <code>enabled</code> status</li>
          #  <li><code>enable_standby_sim_card</code> - move a SIM card previously on the <code>standby</code> status to the <code>enabled</code> status after it consumes data.</li>
          #  <li><code>disable</code> - move the SIM card to the <code>disabled</code> status</li>
          #  <li><code>set_standby</code> - move the SIM card to the <code>standby</code> status</li>
          #  </ul>
          action_type: nil,
          # ISO 8601 formatted date-time indicating when the resource was created.
          created_at: nil,
          record_type: nil,
          # A JSON object representation of the action params.
          settings: nil,
          # The related SIM card identifier.
          sim_card_id: nil,
          status: nil,
          # ISO 8601 formatted date-time indicating when the resource was updated.
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              action_type:
                Telnyx::SimCards::WirelessSimCardAction::ActionType::TaggedSymbol,
              created_at: String,
              record_type: String,
              settings: T.nilable(T::Hash[Symbol, T.anything]),
              sim_card_id: String,
              status: Telnyx::SimCards::WirelessSimCardAction::Status,
              updated_at: String
            }
          )
        end
        def to_hash
        end

        # The operation type. It can be one of the following: <br/>
        #
        # <ul>
        #  <li><code>enable</code> - move the SIM card to the <code>enabled</code> status</li>
        #  <li><code>enable_standby_sim_card</code> - move a SIM card previously on the <code>standby</code> status to the <code>enabled</code> status after it consumes data.</li>
        #  <li><code>disable</code> - move the SIM card to the <code>disabled</code> status</li>
        #  <li><code>set_standby</code> - move the SIM card to the <code>standby</code> status</li>
        #  </ul>
        module ActionType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::SimCards::WirelessSimCardAction::ActionType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ENABLE =
            T.let(
              :enable,
              Telnyx::SimCards::WirelessSimCardAction::ActionType::TaggedSymbol
            )
          ENABLE_STANDBY_SIM_CARD =
            T.let(
              :enable_standby_sim_card,
              Telnyx::SimCards::WirelessSimCardAction::ActionType::TaggedSymbol
            )
          DISABLE =
            T.let(
              :disable,
              Telnyx::SimCards::WirelessSimCardAction::ActionType::TaggedSymbol
            )
          SET_STANDBY =
            T.let(
              :set_standby,
              Telnyx::SimCards::WirelessSimCardAction::ActionType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::SimCards::WirelessSimCardAction::ActionType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Status < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::SimCards::WirelessSimCardAction::Status,
                Telnyx::Internal::AnyHash
              )
            end

          # It describes why the SIM card action is in the current status. This will be
          # <code>null</code> for self-explanatory statuses, such as
          # <code>in-progress</code> and <code>completed</code> but will include further
          # information on statuses like <code>interrupted</code> and <code>failed</code>.
          sig { returns(T.nilable(String)) }
          attr_reader :reason

          sig { params(reason: String).void }
          attr_writer :reason

          # The current status of the SIM card action.
          sig do
            returns(
              T.nilable(
                Telnyx::SimCards::WirelessSimCardAction::Status::Value::TaggedSymbol
              )
            )
          end
          attr_reader :value

          sig do
            params(
              value:
                Telnyx::SimCards::WirelessSimCardAction::Status::Value::OrSymbol
            ).void
          end
          attr_writer :value

          sig do
            params(
              reason: String,
              value:
                Telnyx::SimCards::WirelessSimCardAction::Status::Value::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # It describes why the SIM card action is in the current status. This will be
            # <code>null</code> for self-explanatory statuses, such as
            # <code>in-progress</code> and <code>completed</code> but will include further
            # information on statuses like <code>interrupted</code> and <code>failed</code>.
            reason: nil,
            # The current status of the SIM card action.
            value: nil
          )
          end

          sig do
            override.returns(
              {
                reason: String,
                value:
                  Telnyx::SimCards::WirelessSimCardAction::Status::Value::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          # The current status of the SIM card action.
          module Value
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::SimCards::WirelessSimCardAction::Status::Value
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            IN_PROGRESS =
              T.let(
                :"in-progress",
                Telnyx::SimCards::WirelessSimCardAction::Status::Value::TaggedSymbol
              )
            COMPLETED =
              T.let(
                :completed,
                Telnyx::SimCards::WirelessSimCardAction::Status::Value::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                Telnyx::SimCards::WirelessSimCardAction::Status::Value::TaggedSymbol
              )
            INTERRUPTED =
              T.let(
                :interrupted,
                Telnyx::SimCards::WirelessSimCardAction::Status::Value::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::SimCards::WirelessSimCardAction::Status::Value::TaggedSymbol
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
