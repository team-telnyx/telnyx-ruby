# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::GlobalIPLatency#retrieve
    class GlobalIPLatencyRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally:
      #   filter[global_ip_id][in]
      #
      #   @return [Telnyx::Models::GlobalIPLatencyRetrieveParams::Filter, nil]
      optional :filter, -> { Telnyx::GlobalIPLatencyRetrieveParams::Filter }

      # @!method initialize(filter: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::GlobalIPLatencyRetrieveParams} for more details.
      #
      #   @param filter [Telnyx::Models::GlobalIPLatencyRetrieveParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[global_ip_i
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute global_ip_id
        #   Filter by exact Global IP ID
        #
        #   @return [String, Telnyx::Models::GlobalIPLatencyRetrieveParams::Filter::GlobalIPID::In, nil]
        optional :global_ip_id, union: -> { Telnyx::GlobalIPLatencyRetrieveParams::Filter::GlobalIPID }

        # @!method initialize(global_ip_id: nil)
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[global_ip_id][in]
        #
        #   @param global_ip_id [String, Telnyx::Models::GlobalIPLatencyRetrieveParams::Filter::GlobalIPID::In] Filter by exact Global IP ID

        # Filter by exact Global IP ID
        #
        # @see Telnyx::Models::GlobalIPLatencyRetrieveParams::Filter#global_ip_id
        module GlobalIPID
          extend Telnyx::Internal::Type::Union

          # Filter by exact Global IP ID
          variant String

          # Filtering operations
          variant -> { Telnyx::GlobalIPLatencyRetrieveParams::Filter::GlobalIPID::In }

          class In < Telnyx::Internal::Type::BaseModel
            # @!attribute in_
            #   Filter by Global IP ID(s) separated by commas
            #
            #   @return [String, nil]
            optional :in_, String, api_name: :in

            # @!method initialize(in_: nil)
            #   Filtering operations
            #
            #   @param in_ [String] Filter by Global IP ID(s) separated by commas
          end

          # @!method self.variants
          #   @return [Array(String, Telnyx::Models::GlobalIPLatencyRetrieveParams::Filter::GlobalIPID::In)]
        end
      end
    end
  end
end
