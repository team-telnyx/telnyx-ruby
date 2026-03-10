# typed: strong

module Telnyx
  module Models
    class BulkSimCardActionRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::BulkSimCardActionRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(Telnyx::Models::BulkSimCardActionRetrieveResponse::Data)
        )
      end
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::BulkSimCardActionRetrieveResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::BulkSimCardActionRetrieveResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::BulkSimCardActionRetrieveResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::BulkSimCardActionRetrieveResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Array[Telnyx::SimCardActionsSummary])) }
        attr_reader :sim_card_actions_summary

        sig do
          params(
            sim_card_actions_summary:
              T::Array[Telnyx::SimCardActionsSummary::OrHash]
          ).void
        end
        attr_writer :sim_card_actions_summary

        # Identifies the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # The action type. It can be one of the following: <br/>
        #
        # <ul>
        # <li><code>bulk_disable_voice</code> - disable voice for every SIM Card in a SIM Card Group.</li>
        # <li><code>bulk_enable_voice</code> - enable voice for every SIM Card in a SIM Card Group.</li>
        # <li><code>bulk_set_public_ips</code> - set a public IP for each specified SIM Card.</li>
        # </ul>
        sig do
          returns(
            T.nilable(
              Telnyx::Models::BulkSimCardActionRetrieveResponse::Data::ActionType::TaggedSymbol
            )
          )
        end
        attr_reader :action_type

        sig do
          params(
            action_type:
              Telnyx::Models::BulkSimCardActionRetrieveResponse::Data::ActionType::OrSymbol
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

        # A JSON object representation of the bulk action payload.
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :settings

        sig { params(settings: T::Hash[Symbol, T.anything]).void }
        attr_writer :settings

        # ISO 8601 formatted date-time indicating when the resource was updated.
        sig { returns(T.nilable(String)) }
        attr_reader :updated_at

        sig { params(updated_at: String).void }
        attr_writer :updated_at

        sig do
          params(
            id: String,
            action_type:
              Telnyx::Models::BulkSimCardActionRetrieveResponse::Data::ActionType::OrSymbol,
            created_at: String,
            record_type: String,
            settings: T::Hash[Symbol, T.anything],
            sim_card_actions_summary:
              T::Array[Telnyx::SimCardActionsSummary::OrHash],
            updated_at: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifies the resource.
          id: nil,
          # The action type. It can be one of the following: <br/>
          #
          # <ul>
          # <li><code>bulk_disable_voice</code> - disable voice for every SIM Card in a SIM Card Group.</li>
          # <li><code>bulk_enable_voice</code> - enable voice for every SIM Card in a SIM Card Group.</li>
          # <li><code>bulk_set_public_ips</code> - set a public IP for each specified SIM Card.</li>
          # </ul>
          action_type: nil,
          # ISO 8601 formatted date-time indicating when the resource was created.
          created_at: nil,
          record_type: nil,
          # A JSON object representation of the bulk action payload.
          settings: nil,
          sim_card_actions_summary: nil,
          # ISO 8601 formatted date-time indicating when the resource was updated.
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              action_type:
                Telnyx::Models::BulkSimCardActionRetrieveResponse::Data::ActionType::TaggedSymbol,
              created_at: String,
              record_type: String,
              settings: T::Hash[Symbol, T.anything],
              sim_card_actions_summary: T::Array[Telnyx::SimCardActionsSummary],
              updated_at: String
            }
          )
        end
        def to_hash
        end

        # The action type. It can be one of the following: <br/>
        #
        # <ul>
        # <li><code>bulk_disable_voice</code> - disable voice for every SIM Card in a SIM Card Group.</li>
        # <li><code>bulk_enable_voice</code> - enable voice for every SIM Card in a SIM Card Group.</li>
        # <li><code>bulk_set_public_ips</code> - set a public IP for each specified SIM Card.</li>
        # </ul>
        module ActionType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::BulkSimCardActionRetrieveResponse::Data::ActionType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BULK_DISABLE_VOICE =
            T.let(
              :bulk_disable_voice,
              Telnyx::Models::BulkSimCardActionRetrieveResponse::Data::ActionType::TaggedSymbol
            )
          BULK_ENABLE_VOICE =
            T.let(
              :bulk_enable_voice,
              Telnyx::Models::BulkSimCardActionRetrieveResponse::Data::ActionType::TaggedSymbol
            )
          BULK_SET_PUBLIC_IPS =
            T.let(
              :bulk_set_public_ips,
              Telnyx::Models::BulkSimCardActionRetrieveResponse::Data::ActionType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::BulkSimCardActionRetrieveResponse::Data::ActionType::TaggedSymbol
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
