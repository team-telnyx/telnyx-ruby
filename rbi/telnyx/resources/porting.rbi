# typed: strong

module Telnyx
  module Resources
    class Porting
      sig { returns(Telnyx::Resources::Porting::Events) }
      attr_reader :events

      sig { returns(Telnyx::Resources::Porting::Reports) }
      attr_reader :reports

      sig { returns(Telnyx::Resources::Porting::LoaConfigurations) }
      attr_reader :loa_configurations

      # List available carriers in the UK.
      sig do
        params(request_options: Telnyx::RequestOptions::OrHash).returns(
          Telnyx::Models::PortingListUkCarriersResponse
        )
      end
      def list_uk_carriers(request_options: {})
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
