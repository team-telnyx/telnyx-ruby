# typed: strong

module Telnyx
  module Resources
    class Public
      class Brand
        sig { returns(Telnyx::Resources::Public::Brand::SMSOtp) }
        attr_reader :sms_otp

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
