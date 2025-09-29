# typed: strong

module Telnyx
  module Models
    module Calls
      class ActionGatherParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::Calls::ActionGatherParams, Telnyx::Internal::AnyHash)
          end

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

        # An id that will be sent back in the corresponding `call.gather.ended` webhook.
        # Will be randomly generated if not specified.
        sig { returns(T.nilable(String)) }
        attr_reader :gather_id

        sig { params(gather_id: String).void }
        attr_writer :gather_id

        # The number of milliseconds to wait for the first DTMF.
        sig { returns(T.nilable(Integer)) }
        attr_reader :initial_timeout_millis

        sig { params(initial_timeout_millis: Integer).void }
        attr_writer :initial_timeout_millis

        # The number of milliseconds to wait for input between digits.
        sig { returns(T.nilable(Integer)) }
        attr_reader :inter_digit_timeout_millis

        sig { params(inter_digit_timeout_millis: Integer).void }
        attr_writer :inter_digit_timeout_millis

        # The maximum number of digits to fetch. This parameter has a maximum value
        # of 128.
        sig { returns(T.nilable(Integer)) }
        attr_reader :maximum_digits

        sig { params(maximum_digits: Integer).void }
        attr_writer :maximum_digits

        # The minimum number of digits to fetch. This parameter has a minimum value of 1.
        sig { returns(T.nilable(Integer)) }
        attr_reader :minimum_digits

        sig { params(minimum_digits: Integer).void }
        attr_writer :minimum_digits

        # The digit used to terminate input if fewer than `maximum_digits` digits have
        # been gathered.
        sig { returns(T.nilable(String)) }
        attr_reader :terminating_digit

        sig { params(terminating_digit: String).void }
        attr_writer :terminating_digit

        # The number of milliseconds to wait to complete the request.
        sig { returns(T.nilable(Integer)) }
        attr_reader :timeout_millis

        sig { params(timeout_millis: Integer).void }
        attr_writer :timeout_millis

        # A list of all digits accepted as valid.
        sig { returns(T.nilable(String)) }
        attr_reader :valid_digits

        sig { params(valid_digits: String).void }
        attr_writer :valid_digits

        sig do
          params(
            client_state: String,
            command_id: String,
            gather_id: String,
            initial_timeout_millis: Integer,
            inter_digit_timeout_millis: Integer,
            maximum_digits: Integer,
            minimum_digits: Integer,
            terminating_digit: String,
            timeout_millis: Integer,
            valid_digits: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # An id that will be sent back in the corresponding `call.gather.ended` webhook.
          # Will be randomly generated if not specified.
          gather_id: nil,
          # The number of milliseconds to wait for the first DTMF.
          initial_timeout_millis: nil,
          # The number of milliseconds to wait for input between digits.
          inter_digit_timeout_millis: nil,
          # The maximum number of digits to fetch. This parameter has a maximum value
          # of 128.
          maximum_digits: nil,
          # The minimum number of digits to fetch. This parameter has a minimum value of 1.
          minimum_digits: nil,
          # The digit used to terminate input if fewer than `maximum_digits` digits have
          # been gathered.
          terminating_digit: nil,
          # The number of milliseconds to wait to complete the request.
          timeout_millis: nil,
          # A list of all digits accepted as valid.
          valid_digits: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              client_state: String,
              command_id: String,
              gather_id: String,
              initial_timeout_millis: Integer,
              inter_digit_timeout_millis: Integer,
              maximum_digits: Integer,
              minimum_digits: Integer,
              terminating_digit: String,
              timeout_millis: Integer,
              valid_digits: String,
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
