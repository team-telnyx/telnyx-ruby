# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::GlobalIPUsage#retrieve
    class GlobalIPUsageRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::GlobalIPUsageRetrieveResponse::Data>, nil]
      optional :data,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::GlobalIPUsageRetrieveResponse::Data] }

      # @!method initialize(data: nil)
      #   @param data [Array<Telnyx::Models::GlobalIPUsageRetrieveResponse::Data>]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute global_ip
        #
        #   @return [Telnyx::Models::GlobalIPUsageRetrieveResponse::Data::GlobalIP, nil]
        optional :global_ip, -> { Telnyx::Models::GlobalIPUsageRetrieveResponse::Data::GlobalIP }

        # @!attribute received
        #
        #   @return [Telnyx::Models::GlobalIPUsageRetrieveResponse::Data::Received, nil]
        optional :received, -> { Telnyx::Models::GlobalIPUsageRetrieveResponse::Data::Received }

        # @!attribute timestamp
        #   The timestamp of the metric.
        #
        #   @return [Time, nil]
        optional :timestamp, Time

        # @!attribute transmitted
        #
        #   @return [Telnyx::Models::GlobalIPUsageRetrieveResponse::Data::Transmitted, nil]
        optional :transmitted, -> { Telnyx::Models::GlobalIPUsageRetrieveResponse::Data::Transmitted }

        # @!method initialize(global_ip: nil, received: nil, timestamp: nil, transmitted: nil)
        #   @param global_ip [Telnyx::Models::GlobalIPUsageRetrieveResponse::Data::GlobalIP]
        #
        #   @param received [Telnyx::Models::GlobalIPUsageRetrieveResponse::Data::Received]
        #
        #   @param timestamp [Time] The timestamp of the metric.
        #
        #   @param transmitted [Telnyx::Models::GlobalIPUsageRetrieveResponse::Data::Transmitted]

        # @see Telnyx::Models::GlobalIPUsageRetrieveResponse::Data#global_ip
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

        # @see Telnyx::Models::GlobalIPUsageRetrieveResponse::Data#received
        class Received < Telnyx::Internal::Type::BaseModel
          # @!attribute amount
          #   The amount of data received.
          #
          #   @return [Float, nil]
          optional :amount, Float

          # @!attribute unit
          #   The unit of the amount of data received.
          #
          #   @return [String, nil]
          optional :unit, String

          # @!method initialize(amount: nil, unit: nil)
          #   @param amount [Float] The amount of data received.
          #
          #   @param unit [String] The unit of the amount of data received.
        end

        # @see Telnyx::Models::GlobalIPUsageRetrieveResponse::Data#transmitted
        class Transmitted < Telnyx::Internal::Type::BaseModel
          # @!attribute amount
          #   The amount of data transmitted.
          #
          #   @return [Float, nil]
          optional :amount, Float

          # @!attribute unit
          #   The unit of the amount of data transmitted.
          #
          #   @return [String, nil]
          optional :unit, String

          # @!method initialize(amount: nil, unit: nil)
          #   @param amount [Float] The amount of data transmitted.
          #
          #   @param unit [String] The unit of the amount of data transmitted.
        end
      end
    end
  end
end
