# typed: strong

module Telnyx
  module Models
    module SimCards
      class ActionListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::SimCards::ActionListParams, Telnyx::Internal::AnyHash)
          end

        # Consolidated filter parameter for SIM card actions (deepObject style).
        # Originally: filter[sim_card_id], filter[status],
        # filter[bulk_sim_card_action_id], filter[action_type]
        sig { returns(T.nilable(Telnyx::SimCards::ActionListParams::Filter)) }
        attr_reader :filter

        sig do
          params(
            filter: Telnyx::SimCards::ActionListParams::Filter::OrHash
          ).void
        end
        attr_writer :filter

        sig { returns(T.nilable(Integer)) }
        attr_reader :page_number

        sig { params(page_number: Integer).void }
        attr_writer :page_number

        sig { returns(T.nilable(Integer)) }
        attr_reader :page_size

        sig { params(page_size: Integer).void }
        attr_writer :page_size

        sig do
          params(
            filter: Telnyx::SimCards::ActionListParams::Filter::OrHash,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Consolidated filter parameter for SIM card actions (deepObject style).
          # Originally: filter[sim_card_id], filter[status],
          # filter[bulk_sim_card_action_id], filter[action_type]
          filter: nil,
          page_number: nil,
          page_size: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              filter: Telnyx::SimCards::ActionListParams::Filter,
              page_number: Integer,
              page_size: Integer,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Filter < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::SimCards::ActionListParams::Filter,
                Telnyx::Internal::AnyHash
              )
            end

          # Filter by action type.
          sig do
            returns(
              T.nilable(
                Telnyx::SimCards::ActionListParams::Filter::ActionType::OrSymbol
              )
            )
          end
          attr_reader :action_type

          sig do
            params(
              action_type:
                Telnyx::SimCards::ActionListParams::Filter::ActionType::OrSymbol
            ).void
          end
          attr_writer :action_type

          # Filter by a bulk SIM card action ID.
          sig { returns(T.nilable(String)) }
          attr_reader :bulk_sim_card_action_id

          sig { params(bulk_sim_card_action_id: String).void }
          attr_writer :bulk_sim_card_action_id

          # A valid SIM card ID.
          sig { returns(T.nilable(String)) }
          attr_reader :sim_card_id

          sig { params(sim_card_id: String).void }
          attr_writer :sim_card_id

          # Filter by a specific status of the resource's lifecycle.
          sig do
            returns(
              T.nilable(
                Telnyx::SimCards::ActionListParams::Filter::Status::OrSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                Telnyx::SimCards::ActionListParams::Filter::Status::OrSymbol
            ).void
          end
          attr_writer :status

          # Consolidated filter parameter for SIM card actions (deepObject style).
          # Originally: filter[sim_card_id], filter[status],
          # filter[bulk_sim_card_action_id], filter[action_type]
          sig do
            params(
              action_type:
                Telnyx::SimCards::ActionListParams::Filter::ActionType::OrSymbol,
              bulk_sim_card_action_id: String,
              sim_card_id: String,
              status:
                Telnyx::SimCards::ActionListParams::Filter::Status::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Filter by action type.
            action_type: nil,
            # Filter by a bulk SIM card action ID.
            bulk_sim_card_action_id: nil,
            # A valid SIM card ID.
            sim_card_id: nil,
            # Filter by a specific status of the resource's lifecycle.
            status: nil
          )
          end

          sig do
            override.returns(
              {
                action_type:
                  Telnyx::SimCards::ActionListParams::Filter::ActionType::OrSymbol,
                bulk_sim_card_action_id: String,
                sim_card_id: String,
                status:
                  Telnyx::SimCards::ActionListParams::Filter::Status::OrSymbol
              }
            )
          end
          def to_hash
          end

          # Filter by action type.
          module ActionType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::SimCards::ActionListParams::Filter::ActionType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ENABLE =
              T.let(
                :enable,
                Telnyx::SimCards::ActionListParams::Filter::ActionType::TaggedSymbol
              )
            ENABLE_STANDBY_SIM_CARD =
              T.let(
                :enable_standby_sim_card,
                Telnyx::SimCards::ActionListParams::Filter::ActionType::TaggedSymbol
              )
            DISABLE =
              T.let(
                :disable,
                Telnyx::SimCards::ActionListParams::Filter::ActionType::TaggedSymbol
              )
            SET_STANDBY =
              T.let(
                :set_standby,
                Telnyx::SimCards::ActionListParams::Filter::ActionType::TaggedSymbol
              )
            REMOVE_PUBLIC_IP =
              T.let(
                :remove_public_ip,
                Telnyx::SimCards::ActionListParams::Filter::ActionType::TaggedSymbol
              )
            SET_PUBLIC_IP =
              T.let(
                :set_public_ip,
                Telnyx::SimCards::ActionListParams::Filter::ActionType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::SimCards::ActionListParams::Filter::ActionType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Filter by a specific status of the resource's lifecycle.
          module Status
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::SimCards::ActionListParams::Filter::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            IN_PROGRESS =
              T.let(
                :"in-progress",
                Telnyx::SimCards::ActionListParams::Filter::Status::TaggedSymbol
              )
            COMPLETED =
              T.let(
                :completed,
                Telnyx::SimCards::ActionListParams::Filter::Status::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                Telnyx::SimCards::ActionListParams::Filter::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::SimCards::ActionListParams::Filter::Status::TaggedSymbol
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
