# frozen_string_literal: true

module Telnyx
  module Resources
    class Public
      class Brand
        # @return [Telnyx::Resources::Public::Brand::SMSOtp]
        attr_reader :sms_otp

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
          @sms_otp = Telnyx::Resources::Public::Brand::SMSOtp.new(client: client)
        end
      end
    end
  end
end
