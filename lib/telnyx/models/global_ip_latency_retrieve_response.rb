# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::GlobalIPLatency#retrieve
    class GlobalIPLatencyRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data>, nil]
      optional :data,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data] }

      # @!method initialize(data: nil)
      #   @param data [Array<Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data>]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute global_ip
        #
        #   @return [Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::GlobalIP, nil]
        optional :global_ip, -> { Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::GlobalIP }

        # @!attribute mean_latency
        #
        #   @return [Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::MeanLatency, nil]
        optional :mean_latency, -> { Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::MeanLatency }

        # @!attribute percentile_latency
        #
        #   @return [Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency, nil]
        optional :percentile_latency,
                 -> { Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency }

        # @!attribute prober_location
        #
        #   @return [Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::ProberLocation, nil]
        optional :prober_location, -> { Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::ProberLocation }

        # @!attribute timestamp
        #   The timestamp of the metric.
        #
        #   @return [Time, nil]
        optional :timestamp, Time

        # @!method initialize(global_ip: nil, mean_latency: nil, percentile_latency: nil, prober_location: nil, timestamp: nil)
        #   @param global_ip [Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::GlobalIP]
        #
        #   @param mean_latency [Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::MeanLatency]
        #
        #   @param percentile_latency [Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency]
        #
        #   @param prober_location [Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::ProberLocation]
        #
        #   @param timestamp [Time] The timestamp of the metric.

        # @see Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data#global_ip
        class GlobalIP < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   Global IP ID.
          #
          #   @return [String, nil]
          optional :id, String

          response_only do
            # @!attribute ip_address
            #   The Global IP address.
            #
            #   @return [String, nil]
            optional :ip_address, String
          end

          # @!method initialize(id: nil, ip_address: nil)
          #   @param id [String] Global IP ID.
          #
          #   @param ip_address [String] The Global IP address.
        end

        # @see Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data#mean_latency
        class MeanLatency < Telnyx::Internal::Type::BaseModel
          # @!attribute amount
          #   The average latency.
          #
          #   @return [Float, nil]
          optional :amount, Float

          # @!attribute unit
          #   The unit of the average latency.
          #
          #   @return [String, nil]
          optional :unit, String

          # @!method initialize(amount: nil, unit: nil)
          #   @param amount [Float] The average latency.
          #
          #   @param unit [String] The unit of the average latency.
        end

        # @see Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data#percentile_latency
        class PercentileLatency < Telnyx::Internal::Type::BaseModel
          # @!attribute p_0
          #
          #   @return [Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P0, nil]
          optional :p_0,
                   -> { Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P0 },
                   api_name: :"0"

          # @!attribute p_100
          #
          #   @return [Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P100, nil]
          optional :p_100,
                   -> { Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P100 },
                   api_name: :"100"

          # @!attribute p_25
          #
          #   @return [Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P25, nil]
          optional :p_25,
                   -> { Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P25 },
                   api_name: :"25"

          # @!attribute p_50
          #
          #   @return [Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P50, nil]
          optional :p_50,
                   -> { Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P50 },
                   api_name: :"50"

          # @!attribute p_75
          #
          #   @return [Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P75, nil]
          optional :p_75,
                   -> { Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P75 },
                   api_name: :"75"

          # @!attribute p_90
          #
          #   @return [Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P90, nil]
          optional :p_90,
                   -> { Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P90 },
                   api_name: :"90"

          # @!attribute p_99
          #
          #   @return [Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P99, nil]
          optional :p_99,
                   -> { Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P99 },
                   api_name: :"99"

          # @!method initialize(p_0: nil, p_100: nil, p_25: nil, p_50: nil, p_75: nil, p_90: nil, p_99: nil)
          #   @param p_0 [Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P0]
          #   @param p_100 [Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P100]
          #   @param p_25 [Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P25]
          #   @param p_50 [Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P50]
          #   @param p_75 [Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P75]
          #   @param p_90 [Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P90]
          #   @param p_99 [Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency::P99]

          # @see Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency#p_0
          class P0 < Telnyx::Internal::Type::BaseModel
            # @!attribute amount
            #   The minimum latency.
            #
            #   @return [Float, nil]
            optional :amount, Float

            # @!attribute unit
            #   The unit of the minimum latency.
            #
            #   @return [String, nil]
            optional :unit, String

            # @!method initialize(amount: nil, unit: nil)
            #   @param amount [Float] The minimum latency.
            #
            #   @param unit [String] The unit of the minimum latency.
          end

          # @see Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency#p_100
          class P100 < Telnyx::Internal::Type::BaseModel
            # @!attribute amount
            #   The maximum latency.
            #
            #   @return [Float, nil]
            optional :amount, Float

            # @!attribute unit
            #   The unit of the maximum latency.
            #
            #   @return [String, nil]
            optional :unit, String

            # @!method initialize(amount: nil, unit: nil)
            #   @param amount [Float] The maximum latency.
            #
            #   @param unit [String] The unit of the maximum latency.
          end

          # @see Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency#p_25
          class P25 < Telnyx::Internal::Type::BaseModel
            # @!attribute amount
            #   The 25th percentile latency.
            #
            #   @return [Float, nil]
            optional :amount, Float

            # @!attribute unit
            #   The unit of the 25th percentile latency.
            #
            #   @return [String, nil]
            optional :unit, String

            # @!method initialize(amount: nil, unit: nil)
            #   @param amount [Float] The 25th percentile latency.
            #
            #   @param unit [String] The unit of the 25th percentile latency.
          end

          # @see Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency#p_50
          class P50 < Telnyx::Internal::Type::BaseModel
            # @!attribute amount
            #   The 50th percentile latency.
            #
            #   @return [Float, nil]
            optional :amount, Float

            # @!attribute unit
            #   The unit of the 50th percentile latency.
            #
            #   @return [String, nil]
            optional :unit, String

            # @!method initialize(amount: nil, unit: nil)
            #   @param amount [Float] The 50th percentile latency.
            #
            #   @param unit [String] The unit of the 50th percentile latency.
          end

          # @see Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency#p_75
          class P75 < Telnyx::Internal::Type::BaseModel
            # @!attribute amount
            #   The 75th percentile latency.
            #
            #   @return [Float, nil]
            optional :amount, Float

            # @!attribute unit
            #   The unit of the 75th percentile latency.
            #
            #   @return [String, nil]
            optional :unit, String

            # @!method initialize(amount: nil, unit: nil)
            #   @param amount [Float] The 75th percentile latency.
            #
            #   @param unit [String] The unit of the 75th percentile latency.
          end

          # @see Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency#p_90
          class P90 < Telnyx::Internal::Type::BaseModel
            # @!attribute amount
            #   The 90th percentile latency.
            #
            #   @return [Float, nil]
            optional :amount, Float

            # @!attribute unit
            #   The unit of the 90th percentile latency.
            #
            #   @return [String, nil]
            optional :unit, String

            # @!method initialize(amount: nil, unit: nil)
            #   @param amount [Float] The 90th percentile latency.
            #
            #   @param unit [String] The unit of the 90th percentile latency.
          end

          # @see Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data::PercentileLatency#p_99
          class P99 < Telnyx::Internal::Type::BaseModel
            # @!attribute amount
            #   The 99th percentile latency.
            #
            #   @return [Float, nil]
            optional :amount, Float

            # @!attribute unit
            #   The unit of the 99th percentile latency.
            #
            #   @return [String, nil]
            optional :unit, String

            # @!method initialize(amount: nil, unit: nil)
            #   @param amount [Float] The 99th percentile latency.
            #
            #   @param unit [String] The unit of the 99th percentile latency.
          end
        end

        # @see Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data#prober_location
        class ProberLocation < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   Location ID.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute lat
          #   Latitude.
          #
          #   @return [Float, nil]
          optional :lat, Float

          # @!attribute lon
          #   Longitude.
          #
          #   @return [Float, nil]
          optional :lon, Float

          # @!attribute name
          #   Location name.
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(id: nil, lat: nil, lon: nil, name: nil)
          #   @param id [String] Location ID.
          #
          #   @param lat [Float] Latitude.
          #
          #   @param lon [Float] Longitude.
          #
          #   @param name [String] Location name.
        end
      end
    end
  end
end
