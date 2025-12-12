# typed: strong

module Telnyx
  module Resources
    class Brand
      sig { returns(Telnyx::Resources::Brand::ExternalVetting) }
      attr_reader :external_vetting

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
