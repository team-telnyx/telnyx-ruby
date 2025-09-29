# frozen_string_literal: true

module Telnyx
  module Resources
    class Porting
      # @return [Telnyx::Resources::Porting::Events]
      attr_reader :events

      # @return [Telnyx::Resources::Porting::Reports]
      attr_reader :reports

      # @return [Telnyx::Resources::Porting::LoaConfigurations]
      attr_reader :loa_configurations

      # List available carriers in the UK.
      #
      # @overload list_uk_carriers(request_options: {})
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::PortingListUkCarriersResponse]
      #
      # @see Telnyx::Models::PortingListUkCarriersParams
      def list_uk_carriers(params = {})
        @client.request(
          method: :get,
          path: "porting/uk_carriers",
          model: Telnyx::Models::PortingListUkCarriersResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @events = Telnyx::Resources::Porting::Events.new(client: client)
        @reports = Telnyx::Resources::Porting::Reports.new(client: client)
        @loa_configurations = Telnyx::Resources::Porting::LoaConfigurations.new(client: client)
      end
    end
  end
end
