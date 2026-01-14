# typed: strong

module Telnyx
  module Resources
    class MobileNetworkOperators
      # Telnyx has a set of GSM mobile operators partners that are available through our
      # mobile network roaming. This resource is entirely managed by Telnyx and may
      # change over time. That means that this resource won't allow any write operations
      # for it. Still, it's available so it can be used as a support resource that can
      # be related to other resources or become a configuration option.
      sig do
        params(
          filter: Telnyx::MobileNetworkOperatorListParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[
            Telnyx::Models::MobileNetworkOperatorListResponse
          ]
        )
      end
      def list(
        # Consolidated filter parameter for mobile network operators (deepObject style).
        # Originally: filter[name][starts_with], filter[name][contains],
        # filter[name][ends_with], filter[country_code], filter[mcc], filter[mnc],
        # filter[tadig], filter[network_preferences_enabled]
        filter: nil,
        page_number: nil,
        page_size: nil,
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
