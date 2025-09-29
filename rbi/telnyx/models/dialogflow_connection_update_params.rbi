# typed: strong

module Telnyx
  module Models
    class DialogflowConnectionUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::DialogflowConnectionUpdateParams,
            Telnyx::Internal::AnyHash
          )
        end

      # The JSON map to connect your Dialoglow account.
      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :service_account

      # The id of a configured conversation profile on your Dialogflow account. (If you
      # use Dialogflow CX, this param is required)
      sig { returns(T.nilable(String)) }
      attr_reader :conversation_profile_id

      sig { params(conversation_profile_id: String).void }
      attr_writer :conversation_profile_id

      # Determine which Dialogflow will be used.
      sig do
        returns(
          T.nilable(
            Telnyx::DialogflowConnectionUpdateParams::DialogflowAPI::OrSymbol
          )
        )
      end
      attr_reader :dialogflow_api

      sig do
        params(
          dialogflow_api:
            Telnyx::DialogflowConnectionUpdateParams::DialogflowAPI::OrSymbol
        ).void
      end
      attr_writer :dialogflow_api

      # Which Dialogflow environment will be used.
      sig { returns(T.nilable(String)) }
      attr_reader :environment

      sig { params(environment: String).void }
      attr_writer :environment

      # The region of your agent is. (If you use Dialogflow CX, this param is required)
      sig { returns(T.nilable(String)) }
      attr_reader :location

      sig { params(location: String).void }
      attr_writer :location

      sig do
        params(
          service_account: T::Hash[Symbol, T.anything],
          conversation_profile_id: String,
          dialogflow_api:
            Telnyx::DialogflowConnectionUpdateParams::DialogflowAPI::OrSymbol,
          environment: String,
          location: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The JSON map to connect your Dialoglow account.
        service_account:,
        # The id of a configured conversation profile on your Dialogflow account. (If you
        # use Dialogflow CX, this param is required)
        conversation_profile_id: nil,
        # Determine which Dialogflow will be used.
        dialogflow_api: nil,
        # Which Dialogflow environment will be used.
        environment: nil,
        # The region of your agent is. (If you use Dialogflow CX, this param is required)
        location: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            service_account: T::Hash[Symbol, T.anything],
            conversation_profile_id: String,
            dialogflow_api:
              Telnyx::DialogflowConnectionUpdateParams::DialogflowAPI::OrSymbol,
            environment: String,
            location: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Determine which Dialogflow will be used.
      module DialogflowAPI
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::DialogflowConnectionUpdateParams::DialogflowAPI
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CX =
          T.let(
            :cx,
            Telnyx::DialogflowConnectionUpdateParams::DialogflowAPI::TaggedSymbol
          )
        ES =
          T.let(
            :es,
            Telnyx::DialogflowConnectionUpdateParams::DialogflowAPI::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::DialogflowConnectionUpdateParams::DialogflowAPI::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
