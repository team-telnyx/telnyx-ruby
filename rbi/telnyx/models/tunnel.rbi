# typed: strong

module Telnyx
  module Models
    class Tunnel < Telnyx::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Telnyx::Tunnel, Telnyx::Internal::AnyHash) }

      # A user specified name for the tunnel.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # Identifies the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # The number of tunnel processes connected with the tunnel's token.
      sig { returns(T.nilable(Integer)) }
      attr_reader :connection_count

      sig { params(connection_count: Integer).void }
      attr_writer :connection_count

      # The tunnel processes connected with the tunnel's token.
      sig { returns(T.nilable(T::Array[Telnyx::Tunnel::Connection])) }
      attr_reader :connections

      sig do
        params(connections: T::Array[Telnyx::Tunnel::Connection::OrHash]).void
      end
      attr_writer :connections

      # ISO 8601 formatted date-time indicating when the resource was created.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # Identifies the type of the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      # `inactive` when no tunnel process is connected, and `healthy` when one or more
      # are. `degraded` (Preview, not reported yet) when a process is connected but
      # fails to reach its destinations.
      sig { returns(T.nilable(Telnyx::Tunnel::Status::TaggedSymbol)) }
      attr_reader :status

      sig { params(status: Telnyx::Tunnel::Status::OrSymbol).void }
      attr_writer :status

      sig do
        params(
          id: String,
          connection_count: Integer,
          connections: T::Array[Telnyx::Tunnel::Connection::OrHash],
          created_at: Time,
          name: String,
          record_type: String,
          status: Telnyx::Tunnel::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifies the resource.
        id: nil,
        # The number of tunnel processes connected with the tunnel's token.
        connection_count: nil,
        # The tunnel processes connected with the tunnel's token.
        connections: nil,
        # ISO 8601 formatted date-time indicating when the resource was created.
        created_at: nil,
        # A user specified name for the tunnel.
        name: nil,
        # Identifies the type of the resource.
        record_type: nil,
        # `inactive` when no tunnel process is connected, and `healthy` when one or more
        # are. `degraded` (Preview, not reported yet) when a process is connected but
        # fails to reach its destinations.
        status: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            connection_count: Integer,
            connections: T::Array[Telnyx::Tunnel::Connection],
            created_at: Time,
            name: String,
            record_type: String,
            status: Telnyx::Tunnel::Status::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Connection < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::Tunnel::Connection, Telnyx::Internal::AnyHash)
          end

        # When the process connected.
        sig { returns(T.nilable(Time)) }
        attr_reader :connected_at

        sig { params(connected_at: Time).void }
        attr_writer :connected_at

        # The name the host reports for itself. Preview: empty until the CLI reports it.
        sig { returns(T.nilable(String)) }
        attr_reader :hostname

        sig { params(hostname: String).void }
        attr_writer :hostname

        # The Telnyx region the process is connected to. Preview: empty until the CLI
        # reports it.
        sig { returns(T.nilable(String)) }
        attr_reader :region_code

        sig { params(region_code: String).void }
        attr_writer :region_code

        # The `telnyx-edge` CLI version of the process. Preview: empty until the CLI
        # reports it.
        sig { returns(T.nilable(String)) }
        attr_reader :version

        sig { params(version: String).void }
        attr_writer :version

        # A tunnel process connected to the tunnel.
        sig do
          params(
            connected_at: Time,
            hostname: String,
            region_code: String,
            version: String
          ).returns(T.attached_class)
        end
        def self.new(
          # When the process connected.
          connected_at: nil,
          # The name the host reports for itself. Preview: empty until the CLI reports it.
          hostname: nil,
          # The Telnyx region the process is connected to. Preview: empty until the CLI
          # reports it.
          region_code: nil,
          # The `telnyx-edge` CLI version of the process. Preview: empty until the CLI
          # reports it.
          version: nil
        )
        end

        sig do
          override.returns(
            {
              connected_at: Time,
              hostname: String,
              region_code: String,
              version: String
            }
          )
        end
        def to_hash
        end
      end

      # `inactive` when no tunnel process is connected, and `healthy` when one or more
      # are. `degraded` (Preview, not reported yet) when a process is connected but
      # fails to reach its destinations.
      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Telnyx::Tunnel::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INACTIVE = T.let(:inactive, Telnyx::Tunnel::Status::TaggedSymbol)
        HEALTHY = T.let(:healthy, Telnyx::Tunnel::Status::TaggedSymbol)
        DEGRADED = T.let(:degraded, Telnyx::Tunnel::Status::TaggedSymbol)

        sig { override.returns(T::Array[Telnyx::Tunnel::Status::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
