# typed: strong

module Telnyx
  module Resources
    class Email
      # Purchase and manage dedicated sending IP addresses for your Telnyx email
      # traffic.
      sig { returns(Telnyx::Resources::Email::DedicatedIPs) }
      attr_reader :dedicated_ips

      # Group dedicated IPs into pools for sending.
      sig { returns(Telnyx::Resources::Email::IPPools) }
      attr_reader :ip_pools

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
