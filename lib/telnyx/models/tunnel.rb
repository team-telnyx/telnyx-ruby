# frozen_string_literal: true

module Telnyx
  module Models
    class Tunnel < Telnyx::Internal::Type::BaseModel
      # @!attribute name
      #   A user specified name for the tunnel.
      #
      #   @return [String, nil]
      optional :name, String

      response_only do
        # @!attribute id
        #   Identifies the resource.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute connection_count
        #   The number of tunnel processes connected with the tunnel's token.
        #
        #   @return [Integer, nil]
        optional :connection_count, Integer

        # @!attribute connections
        #   The tunnel processes connected with the tunnel's token.
        #
        #   @return [Array<Telnyx::Models::Tunnel::Connection>, nil]
        optional :connections, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Tunnel::Connection] }

        # @!attribute created_at
        #   ISO 8601 formatted date-time indicating when the resource was created.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute status
        #   `inactive` when no tunnel process is connected, and `healthy` when one or more
        #   are. `degraded` (Preview, not reported yet) when a process is connected but
        #   fails to reach its destinations.
        #
        #   @return [Symbol, Telnyx::Models::Tunnel::Status, nil]
        optional :status, enum: -> { Telnyx::Tunnel::Status }
      end

      # @!method initialize(id: nil, connection_count: nil, connections: nil, created_at: nil, name: nil, record_type: nil, status: nil)
      #   Some parameter documentations has been truncated, see {Telnyx::Models::Tunnel}
      #   for more details.
      #
      #   @param id [String] Identifies the resource.
      #
      #   @param connection_count [Integer] The number of tunnel processes connected with the tunnel's token.
      #
      #   @param connections [Array<Telnyx::Models::Tunnel::Connection>] The tunnel processes connected with the tunnel's token.
      #
      #   @param created_at [Time] ISO 8601 formatted date-time indicating when the resource was created.
      #
      #   @param name [String] A user specified name for the tunnel.
      #
      #   @param record_type [String] Identifies the type of the resource.
      #
      #   @param status [Symbol, Telnyx::Models::Tunnel::Status] `inactive` when no tunnel process is connected, and `healthy` when one or more a

      class Connection < Telnyx::Internal::Type::BaseModel
        # @!attribute connected_at
        #   When the process connected.
        #
        #   @return [Time, nil]
        optional :connected_at, Time

        # @!attribute hostname
        #   The name the host reports for itself. Preview: empty until the CLI reports it.
        #
        #   @return [String, nil]
        optional :hostname, String

        # @!attribute region_code
        #   The Telnyx region the process is connected to. Preview: empty until the CLI
        #   reports it.
        #
        #   @return [String, nil]
        optional :region_code, String

        # @!attribute version
        #   The `telnyx-edge` CLI version of the process. Preview: empty until the CLI
        #   reports it.
        #
        #   @return [String, nil]
        optional :version, String

        # @!method initialize(connected_at: nil, hostname: nil, region_code: nil, version: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Tunnel::Connection} for more details.
        #
        #   A tunnel process connected to the tunnel.
        #
        #   @param connected_at [Time] When the process connected.
        #
        #   @param hostname [String] The name the host reports for itself. Preview: empty until the CLI reports it.
        #
        #   @param region_code [String] The Telnyx region the process is connected to. Preview: empty until the CLI repo
        #
        #   @param version [String] The `telnyx-edge` CLI version of the process. Preview: empty until the CLI repor
      end

      # `inactive` when no tunnel process is connected, and `healthy` when one or more
      # are. `degraded` (Preview, not reported yet) when a process is connected but
      # fails to reach its destinations.
      #
      # @see Telnyx::Models::Tunnel#status
      module Status
        extend Telnyx::Internal::Type::Enum

        INACTIVE = :inactive
        HEALTHY = :healthy
        DEGRADED = :degraded

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
