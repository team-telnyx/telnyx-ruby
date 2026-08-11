# typed: strong

module Telnyx
  module Resources
    class Rcs
      class Agents
        # Manage RCS agent registration, testing, verification, and launch.
        class TestDevices
          # Adds an RCS-capable test number after provider agent creation. Repeating the
          # request for a number already attached to the agent returns the existing test
          # device.
          sig do
            params(
              id: String,
              phone_number: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Rcs::Agents::TestDeviceResponse)
          end
          def create(
            # The Telnyx-assigned agent identifier.
            id,
            phone_number:,
            request_options: {}
          )
          end

          # Lists test devices attached to an RCS agent.
          sig do
            params(
              id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T::Array[Telnyx::Rcs::Agents::TestDeviceResponse])
          end
          def list(
            # The Telnyx-assigned agent identifier.
            id,
            request_options: {}
          )
          end

          # Removes a test device from an RCS agent and its provider registration.
          sig do
            params(
              test_device_id: String,
              id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).void
          end
          def delete(
            # The Telnyx-assigned test device identifier.
            test_device_id,
            # The Telnyx-assigned agent identifier.
            id:,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: Telnyx::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
