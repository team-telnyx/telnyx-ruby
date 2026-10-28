# frozen_string_literal: true

module Telnyx
  module Resources
    class Email
      # Purchase and manage dedicated sending IP addresses for your Telnyx email
      # traffic.
      # @return [Telnyx::Resources::Email::DedicatedIPs]
      attr_reader :dedicated_ips

      # Group dedicated IPs into pools for sending.
      # @return [Telnyx::Resources::Email::IPPools]
      attr_reader :ip_pools

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @dedicated_ips = Telnyx::Resources::Email::DedicatedIPs.new(client: client)
        @ip_pools = Telnyx::Resources::Email::IPPools.new(client: client)
      end
    end
  end
end
