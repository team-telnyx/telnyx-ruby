# frozen_string_literal: true

module Telnyx
  module Resources
    class Brand
      # @return [Telnyx::Resources::Brand::ExternalVetting]
      attr_reader :external_vetting

      # @return [Telnyx::Resources::Brand::SMSOtp]
      attr_reader :sms_otp

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @external_vetting = Telnyx::Resources::Brand::ExternalVetting.new(client: client)
        @sms_otp = Telnyx::Resources::Brand::SMSOtp.new(client: client)
      end
    end
  end
end
