# typed: strong

module Telnyx
  module Models
    class ConnectionRtcpSettings < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::ConnectionRtcpSettings, Telnyx::Internal::AnyHash)
        end

      # BETA - Enable the capture and storage of RTCP messages to create QoS reports on
      # the Telnyx Mission Control Portal.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :capture_enabled

      sig { params(capture_enabled: T::Boolean).void }
      attr_writer :capture_enabled

      # RTCP port by default is rtp+1, it can also be set to rtcp-mux
      sig { returns(T.nilable(Telnyx::ConnectionRtcpSettings::Port::OrSymbol)) }
      attr_reader :port

      sig { params(port: Telnyx::ConnectionRtcpSettings::Port::OrSymbol).void }
      attr_writer :port

      # RTCP reports are sent to customers based on the frequency set. Frequency is in
      # seconds and it can be set to values from 5 to 3000 seconds.
      sig { returns(T.nilable(Integer)) }
      attr_reader :report_frequency_secs

      sig { params(report_frequency_secs: Integer).void }
      attr_writer :report_frequency_secs

      sig do
        params(
          capture_enabled: T::Boolean,
          port: Telnyx::ConnectionRtcpSettings::Port::OrSymbol,
          report_frequency_secs: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # BETA - Enable the capture and storage of RTCP messages to create QoS reports on
        # the Telnyx Mission Control Portal.
        capture_enabled: nil,
        # RTCP port by default is rtp+1, it can also be set to rtcp-mux
        port: nil,
        # RTCP reports are sent to customers based on the frequency set. Frequency is in
        # seconds and it can be set to values from 5 to 3000 seconds.
        report_frequency_secs: nil
      )
      end

      sig do
        override.returns(
          {
            capture_enabled: T::Boolean,
            port: Telnyx::ConnectionRtcpSettings::Port::OrSymbol,
            report_frequency_secs: Integer
          }
        )
      end
      def to_hash
      end

      # RTCP port by default is rtp+1, it can also be set to rtcp-mux
      module Port
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::ConnectionRtcpSettings::Port) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RTCP_MUX =
          T.let(:"rtcp-mux", Telnyx::ConnectionRtcpSettings::Port::TaggedSymbol)
        RTP_1 =
          T.let(:"rtp+1", Telnyx::ConnectionRtcpSettings::Port::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::ConnectionRtcpSettings::Port::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
