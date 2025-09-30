# typed: strong

module Telnyx
  module Models
    class DialogflowConnectionUpdateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::DialogflowConnectionUpdateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(Telnyx::Models::DialogflowConnectionUpdateResponse::Data) }
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::DialogflowConnectionUpdateResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::DialogflowConnectionUpdateResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::DialogflowConnectionUpdateResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::DialogflowConnectionUpdateResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Uniquely identifies a Telnyx application (Call Control).
        sig { returns(T.nilable(String)) }
        attr_reader :connection_id

        sig { params(connection_id: String).void }
        attr_writer :connection_id

        # The id of a configured conversation profile on your Dialogflow account. (If you
        # use Dialogflow CX, this param is required)
        sig { returns(T.nilable(String)) }
        attr_reader :conversation_profile_id

        sig { params(conversation_profile_id: String).void }
        attr_writer :conversation_profile_id

        # Which Dialogflow environment will be used.
        sig { returns(T.nilable(String)) }
        attr_reader :environment

        sig { params(environment: String).void }
        attr_writer :environment

        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        # The JSON map to connect your Dialoglow account.
        sig { returns(T.nilable(String)) }
        attr_reader :service_account

        sig { params(service_account: String).void }
        attr_writer :service_account

        sig do
          params(
            connection_id: String,
            conversation_profile_id: String,
            environment: String,
            record_type: String,
            service_account: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Uniquely identifies a Telnyx application (Call Control).
          connection_id: nil,
          # The id of a configured conversation profile on your Dialogflow account. (If you
          # use Dialogflow CX, this param is required)
          conversation_profile_id: nil,
          # Which Dialogflow environment will be used.
          environment: nil,
          record_type: nil,
          # The JSON map to connect your Dialoglow account.
          service_account: nil
        )
        end

        sig do
          override.returns(
            {
              connection_id: String,
              conversation_profile_id: String,
              environment: String,
              record_type: String,
              service_account: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
