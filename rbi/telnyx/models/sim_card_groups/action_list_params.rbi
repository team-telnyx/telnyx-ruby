# typed: strong

module Telnyx
  module Models
    module SimCardGroups
      class ActionListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::SimCardGroups::ActionListParams,
              Telnyx::Internal::AnyHash
            )
          end

        # A valid SIM card group ID.
        sig { returns(T.nilable(String)) }
        attr_reader :filter_sim_card_group_id

        sig { params(filter_sim_card_group_id: String).void }
        attr_writer :filter_sim_card_group_id

        # Filter by a specific status of the resource's lifecycle.
        sig do
          returns(
            T.nilable(
              Telnyx::SimCardGroups::ActionListParams::FilterStatus::OrSymbol
            )
          )
        end
        attr_reader :filter_status

        sig do
          params(
            filter_status:
              Telnyx::SimCardGroups::ActionListParams::FilterStatus::OrSymbol
          ).void
        end
        attr_writer :filter_status

        # Filter by action type.
        sig do
          returns(
            T.nilable(
              Telnyx::SimCardGroups::ActionListParams::FilterType::OrSymbol
            )
          )
        end
        attr_reader :filter_type

        sig do
          params(
            filter_type:
              Telnyx::SimCardGroups::ActionListParams::FilterType::OrSymbol
          ).void
        end
        attr_writer :filter_type

        # The page number to load.
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_number

        sig { params(page_number: Integer).void }
        attr_writer :page_number

        # The size of the page.
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_size

        sig { params(page_size: Integer).void }
        attr_writer :page_size

        sig do
          params(
            filter_sim_card_group_id: String,
            filter_status:
              Telnyx::SimCardGroups::ActionListParams::FilterStatus::OrSymbol,
            filter_type:
              Telnyx::SimCardGroups::ActionListParams::FilterType::OrSymbol,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A valid SIM card group ID.
          filter_sim_card_group_id: nil,
          # Filter by a specific status of the resource's lifecycle.
          filter_status: nil,
          # Filter by action type.
          filter_type: nil,
          # The page number to load.
          page_number: nil,
          # The size of the page.
          page_size: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              filter_sim_card_group_id: String,
              filter_status:
                Telnyx::SimCardGroups::ActionListParams::FilterStatus::OrSymbol,
              filter_type:
                Telnyx::SimCardGroups::ActionListParams::FilterType::OrSymbol,
              page_number: Integer,
              page_size: Integer,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Filter by a specific status of the resource's lifecycle.
        module FilterStatus
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::SimCardGroups::ActionListParams::FilterStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IN_PROGRESS =
            T.let(
              :"in-progress",
              Telnyx::SimCardGroups::ActionListParams::FilterStatus::TaggedSymbol
            )
          COMPLETED =
            T.let(
              :completed,
              Telnyx::SimCardGroups::ActionListParams::FilterStatus::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              Telnyx::SimCardGroups::ActionListParams::FilterStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::SimCardGroups::ActionListParams::FilterStatus::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Filter by action type.
        module FilterType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::SimCardGroups::ActionListParams::FilterType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SET_PRIVATE_WIRELESS_GATEWAY =
            T.let(
              :set_private_wireless_gateway,
              Telnyx::SimCardGroups::ActionListParams::FilterType::TaggedSymbol
            )
          REMOVE_PRIVATE_WIRELESS_GATEWAY =
            T.let(
              :remove_private_wireless_gateway,
              Telnyx::SimCardGroups::ActionListParams::FilterType::TaggedSymbol
            )
          SET_WIRELESS_BLOCKLIST =
            T.let(
              :set_wireless_blocklist,
              Telnyx::SimCardGroups::ActionListParams::FilterType::TaggedSymbol
            )
          REMOVE_WIRELESS_BLOCKLIST =
            T.let(
              :remove_wireless_blocklist,
              Telnyx::SimCardGroups::ActionListParams::FilterType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::SimCardGroups::ActionListParams::FilterType::TaggedSymbol
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
