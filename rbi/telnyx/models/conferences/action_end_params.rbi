# typed: strong

module Telnyx
  module Models
    module Conferences
      class ActionEndParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Conferences::ActionEndParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Use this field to avoid duplicate commands. Telnyx will ignore any command with
        # the same `command_id` for the same conference.
        sig { returns(T.nilable(String)) }
        attr_reader :command_id

        sig { params(command_id: String).void }
        attr_writer :command_id

        sig do
          params(
            command_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same conference.
          command_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            { command_id: String, request_options: Telnyx::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
