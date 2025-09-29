# typed: strong

module Telnyx
  module Resources
    class NumbersFeatures
      # Retrieve the features for a list of numbers
      sig do
        params(
          phone_numbers: T::Array[String],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::NumbersFeatureCreateResponse)
      end
      def create(phone_numbers:, request_options: {})
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
