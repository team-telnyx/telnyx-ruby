# typed: strong

module Telnyx
  module Models
    module SimCards
      class ActionBulkEnableVoiceParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::SimCards::ActionBulkEnableVoiceParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :sim_card_group_id

        # The identifier of the Mobile Voice Connection to associate with the SIM cards.
        # The connection must be owned by the same user and of type
        # <code>mobile_voice</code>. If omitted, voice is enabled without a connection
        # association.
        sig { returns(T.nilable(String)) }
        attr_reader :connection_id

        sig { params(connection_id: String).void }
        attr_writer :connection_id

        sig do
          params(
            sim_card_group_id: String,
            connection_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          sim_card_group_id:,
          # The identifier of the Mobile Voice Connection to associate with the SIM cards.
          # The connection must be owned by the same user and of type
          # <code>mobile_voice</code>. If omitted, voice is enabled without a connection
          # association.
          connection_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              sim_card_group_id: String,
              connection_id: String,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
