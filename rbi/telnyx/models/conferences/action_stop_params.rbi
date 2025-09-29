# typed: strong

module Telnyx
  module Models
    module Conferences
      class ActionStopParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Conferences::ActionStopParams,
              Telnyx::Internal::AnyHash
            )
          end

        # List of call control ids identifying participants the audio file should stop be
        # played to. If not given, the audio will be stoped to the entire conference.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :call_control_ids

        sig { params(call_control_ids: T::Array[String]).void }
        attr_writer :call_control_ids

        sig do
          params(
            call_control_ids: T::Array[String],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # List of call control ids identifying participants the audio file should stop be
          # played to. If not given, the audio will be stoped to the entire conference.
          call_control_ids: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              call_control_ids: T::Array[String],
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
