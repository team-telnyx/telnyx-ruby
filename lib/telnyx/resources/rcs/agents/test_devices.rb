# frozen_string_literal: true

module Telnyx
  module Resources
    class Rcs
      class Agents
        # Manage RCS agent registration, testing, verification, and launch.
        class TestDevices
          # Adds an RCS-capable test number after provider agent creation. Repeating the
          # request for a number already attached to the agent returns the existing test
          # device.
          #
          # @overload create(id, phone_number:, request_options: {})
          #
          # @param id [String] The Telnyx-assigned agent identifier.
          #
          # @param phone_number [String]
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Rcs::Agents::TestDeviceResponse]
          #
          # @see Telnyx::Models::Rcs::Agents::TestDeviceCreateParams
          def create(id, params)
            parsed, options = Telnyx::Rcs::Agents::TestDeviceCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["rcs/agents/%1$s/test_devices", id],
              body: parsed,
              model: Telnyx::Rcs::Agents::TestDeviceResponse,
              options: options
            )
          end

          # Lists test devices attached to an RCS agent.
          #
          # @overload list(id, request_options: {})
          #
          # @param id [String] The Telnyx-assigned agent identifier.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Array<Telnyx::Models::Rcs::Agents::TestDeviceResponse>]
          #
          # @see Telnyx::Models::Rcs::Agents::TestDeviceListParams
          def list(id, params = {})
            @client.request(
              method: :get,
              path: ["rcs/agents/%1$s/test_devices", id],
              model: Telnyx::Internal::Type::ArrayOf[Telnyx::Rcs::Agents::TestDeviceResponse],
              options: params[:request_options]
            )
          end

          # Removes a test device from an RCS agent and its provider registration.
          #
          # @overload delete(test_device_id, id:, request_options: {})
          #
          # @param test_device_id [String] The Telnyx-assigned test device identifier.
          #
          # @param id [String] The Telnyx-assigned agent identifier.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see Telnyx::Models::Rcs::Agents::TestDeviceDeleteParams
          def delete(test_device_id, params)
            parsed, options = Telnyx::Rcs::Agents::TestDeviceDeleteParams.dump_request(params)
            id =
              parsed.delete(:id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: ["rcs/agents/%1$s/test_devices/%2$s", id, test_device_id],
              model: NilClass,
              options: options
            )
          end

          # @api private
          #
          # @param client [Telnyx::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
