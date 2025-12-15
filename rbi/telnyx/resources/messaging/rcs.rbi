# typed: strong

module Telnyx
  module Resources
    class Messaging
      class Rcs
        sig { returns(Telnyx::Resources::Messaging::Rcs::Agents) }
        attr_reader :agents

        # Adds a test phone number to an RCS agent for testing purposes.
        sig do
          params(
            phone_number: String,
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Messaging::RcInviteTestNumberResponse)
        end
        def invite_test_number(
          # Phone number in E164 format to invite for testing
          phone_number,
          # RCS agent ID
          id:,
          request_options: {}
        )
        end

        # Check RCS capabilities (batch)
        sig do
          params(
            agent_id: String,
            phone_numbers: T::Array[String],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Messaging::RcListBulkCapabilitiesResponse)
        end
        def list_bulk_capabilities(
          # RCS Agent ID
          agent_id:,
          # List of phone numbers to check
          phone_numbers:,
          request_options: {}
        )
        end

        # Check RCS capabilities
        sig do
          params(
            phone_number: String,
            agent_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Messaging::RcRetrieveCapabilitiesResponse)
        end
        def retrieve_capabilities(
          # Phone number in E164 format
          phone_number,
          # RCS agent ID
          agent_id:,
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
