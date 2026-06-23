# typed: strong

module Telnyx
  module Models
    module Conferences
      class ActionRecordStopParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Conferences::ActionRecordStopParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # Use this field to add state to every subsequent webhook. It must be a valid
        # Base-64 encoded string.
        sig { returns(T.nilable(String)) }
        attr_reader :client_state

        sig { params(client_state: String).void }
        attr_writer :client_state

        # Use this field to avoid duplicate commands. Telnyx will ignore any command with
        # the same `command_id` for the same `call_control_id`.
        sig { returns(T.nilable(String)) }
        attr_reader :command_id

        sig { params(command_id: String).void }
        attr_writer :command_id

        # Uniquely identifies the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :recording_id

        sig { params(recording_id: String).void }
        attr_writer :recording_id

        # Region where the conference data is located. Defaults to the region defined in
        # user's data locality settings (Europe or US).
        sig do
          returns(T.nilable(Telnyx::Conferences::ConferenceRegion::OrSymbol))
        end
        attr_reader :region

        sig do
          params(region: Telnyx::Conferences::ConferenceRegion::OrSymbol).void
        end
        attr_writer :region

        sig do
          params(
            id: String,
            client_state: String,
            command_id: String,
            recording_id: String,
            region: Telnyx::Conferences::ConferenceRegion::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # Uniquely identifies the resource.
          recording_id: nil,
          # Region where the conference data is located. Defaults to the region defined in
          # user's data locality settings (Europe or US).
          region: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              client_state: String,
              command_id: String,
              recording_id: String,
              region: Telnyx::Conferences::ConferenceRegion::OrSymbol,
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
