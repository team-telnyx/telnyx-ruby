# frozen_string_literal: true

module Telnyx
  module Models
    class ConnectionRtcpSettings < Telnyx::Internal::Type::BaseModel
      # @!attribute capture_enabled
      #   BETA - Enable the capture and storage of RTCP messages to create QoS reports on
      #   the Telnyx Mission Control Portal.
      #
      #   @return [Boolean, nil]
      optional :capture_enabled, Telnyx::Internal::Type::Boolean

      # @!attribute port
      #   RTCP port by default is rtp+1, it can also be set to rtcp-mux
      #
      #   @return [Symbol, Telnyx::Models::ConnectionRtcpSettings::Port, nil]
      optional :port, enum: -> { Telnyx::ConnectionRtcpSettings::Port }

      # @!attribute report_frequency_secs
      #   RTCP reports are sent to customers based on the frequency set. Frequency is in
      #   seconds and it can be set to values from 5 to 3000 seconds.
      #
      #   @return [Integer, nil]
      optional :report_frequency_secs, Integer

      # @!method initialize(capture_enabled: nil, port: nil, report_frequency_secs: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::ConnectionRtcpSettings} for more details.
      #
      #   @param capture_enabled [Boolean] BETA - Enable the capture and storage of RTCP messages to create QoS reports on
      #
      #   @param port [Symbol, Telnyx::Models::ConnectionRtcpSettings::Port] RTCP port by default is rtp+1, it can also be set to rtcp-mux
      #
      #   @param report_frequency_secs [Integer] RTCP reports are sent to customers based on the frequency set. Frequency is in s

      # RTCP port by default is rtp+1, it can also be set to rtcp-mux
      #
      # @see Telnyx::Models::ConnectionRtcpSettings#port
      module Port
        extend Telnyx::Internal::Type::Enum

        RTCP_MUX = :"rtcp-mux"
        RTP_1 = :"rtp+1"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
