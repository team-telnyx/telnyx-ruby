# typed: strong

module Telnyx
  module Models
    class SimCardGroupListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::SimCardGroupListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # Represents the amount of data consumed.
      sig { returns(T.nilable(Telnyx::ConsumedData)) }
      attr_reader :consumed_data

      sig { params(consumed_data: Telnyx::ConsumedData::OrHash).void }
      attr_writer :consumed_data

      # Upper limit on the amount of data the SIM cards, within the group, can use.
      sig do
        returns(T.nilable(Telnyx::Models::SimCardGroupListResponse::DataLimit))
      end
      attr_reader :data_limit

      sig do
        params(
          data_limit:
            Telnyx::Models::SimCardGroupListResponse::DataLimit::OrHash
        ).void
      end
      attr_writer :data_limit

      # A user friendly name for the SIM card group.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # The identification of the related Private Wireless Gateway resource.
      sig { returns(T.nilable(String)) }
      attr_reader :private_wireless_gateway_id

      sig { params(private_wireless_gateway_id: String).void }
      attr_writer :private_wireless_gateway_id

      # The number of SIM cards associated with the group.
      sig { returns(T.nilable(Integer)) }
      attr_reader :sim_card_count

      sig { params(sim_card_count: Integer).void }
      attr_writer :sim_card_count

      # The identification of the related Wireless Blocklist resource.
      sig { returns(T.nilable(String)) }
      attr_reader :wireless_blocklist_id

      sig { params(wireless_blocklist_id: String).void }
      attr_writer :wireless_blocklist_id

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

      # Indicates whether the SIM card group is the users default group.<br/>The default
      # group is created for the user and can not be removed.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :default

      sig { params(default: T::Boolean).void }
      attr_writer :default

      # Identifies the type of the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      # ISO 8601 formatted date-time indicating when the resource was updated.
      sig { returns(T.nilable(String)) }
      attr_reader :updated_at

      sig { params(updated_at: String).void }
      attr_writer :updated_at

      sig do
        params(
          id: String,
          consumed_data: Telnyx::ConsumedData::OrHash,
          created_at: String,
          data_limit:
            Telnyx::Models::SimCardGroupListResponse::DataLimit::OrHash,
          default: T::Boolean,
          name: String,
          private_wireless_gateway_id: String,
          record_type: String,
          sim_card_count: Integer,
          updated_at: String,
          wireless_blocklist_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifies the resource.
        id: nil,
        # Represents the amount of data consumed.
        consumed_data: nil,
        # ISO 8601 formatted date-time indicating when the resource was created.
        created_at: nil,
        # Upper limit on the amount of data the SIM cards, within the group, can use.
        data_limit: nil,
        # Indicates whether the SIM card group is the users default group.<br/>The default
        # group is created for the user and can not be removed.
        default: nil,
        # A user friendly name for the SIM card group.
        name: nil,
        # The identification of the related Private Wireless Gateway resource.
        private_wireless_gateway_id: nil,
        # Identifies the type of the resource.
        record_type: nil,
        # The number of SIM cards associated with the group.
        sim_card_count: nil,
        # ISO 8601 formatted date-time indicating when the resource was updated.
        updated_at: nil,
        # The identification of the related Wireless Blocklist resource.
        wireless_blocklist_id: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            consumed_data: Telnyx::ConsumedData,
            created_at: String,
            data_limit: Telnyx::Models::SimCardGroupListResponse::DataLimit,
            default: T::Boolean,
            name: String,
            private_wireless_gateway_id: String,
            record_type: String,
            sim_card_count: Integer,
            updated_at: String,
            wireless_blocklist_id: String
          }
        )
      end
      def to_hash
      end

      class DataLimit < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::SimCardGroupListResponse::DataLimit,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :amount

        sig { params(amount: String).void }
        attr_writer :amount

        sig { returns(T.nilable(String)) }
        attr_reader :unit

        sig { params(unit: String).void }
        attr_writer :unit

        # Upper limit on the amount of data the SIM cards, within the group, can use.
        sig { params(amount: String, unit: String).returns(T.attached_class) }
        def self.new(amount: nil, unit: nil)
        end

        sig { override.returns({ amount: String, unit: String }) }
        def to_hash
        end
      end
    end
  end
end
