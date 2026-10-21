# typed: strong

module Telnyx
  module Models
    module TtsIntegrations
      class ActionTestConnectionParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::TtsIntegrations::ActionTestConnectionParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # The identifier of the Integration Secret in your organization that Telnyx
        # connects to the engine with, as a caller would.
        sig { returns(String) }
        attr_accessor :api_key_ref

        # The voice to test. Default: the first voice in the engine's list. It must be in
        # the list.
        sig { returns(T.nilable(String)) }
        attr_reader :voice_id

        sig { params(voice_id: String).void }
        attr_writer :voice_id

        sig do
          params(
            id: String,
            api_key_ref: String,
            voice_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # The identifier of the Integration Secret in your organization that Telnyx
          # connects to the engine with, as a caller would.
          api_key_ref:,
          # The voice to test. Default: the first voice in the engine's list. It must be in
          # the list.
          voice_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              api_key_ref: String,
              voice_id: String,
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
