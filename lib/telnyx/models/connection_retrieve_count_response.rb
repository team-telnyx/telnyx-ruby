# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Connections#retrieve_count
    class ConnectionRetrieveCountResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::ConnectionRetrieveCountResponse::Data]
      required :data, -> { Telnyx::Models::ConnectionRetrieveCountResponse::Data }

      # @!method initialize(data:)
      #   @param data [Telnyx::Models::ConnectionRetrieveCountResponse::Data]

      # @see Telnyx::Models::ConnectionRetrieveCountResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute counts
        #   Counts of the authenticated user's connections, grouped by connection type.
        #   Forward-only connections are excluded.
        #
        #   @return [Telnyx::Models::ConnectionRetrieveCountResponse::Data::Counts]
        required :counts, -> { Telnyx::Models::ConnectionRetrieveCountResponse::Data::Counts }

        # @!attribute limits
        #   Connection limits that apply to the user. Contains a single global_limit when a
        #   global connection limit applies, or per-type limits (standard_limit, texml_limit
        #   and uac_limit) when the user has per-type connection count capabilities.
        #
        #   @return [Telnyx::Models::ConnectionRetrieveCountResponse::Data::Limits::GlobalConnectionLimit, Telnyx::Models::ConnectionRetrieveCountResponse::Data::Limits::PerTypeConnectionLimits]
        required :limits, union: -> { Telnyx::Models::ConnectionRetrieveCountResponse::Data::Limits }

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [String]
        required :record_type, String

        # @!method initialize(counts:, limits:, record_type:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::ConnectionRetrieveCountResponse::Data} for more details.
        #
        #   @param counts [Telnyx::Models::ConnectionRetrieveCountResponse::Data::Counts] Counts of the authenticated user's connections, grouped by connection type. Forw
        #
        #   @param limits [Telnyx::Models::ConnectionRetrieveCountResponse::Data::Limits::GlobalConnectionLimit, Telnyx::Models::ConnectionRetrieveCountResponse::Data::Limits::PerTypeConnectionLimits] Connection limits that apply to the user. Contains a single global_limit when a
        #
        #   @param record_type [String] Identifies the type of the resource.

        # @see Telnyx::Models::ConnectionRetrieveCountResponse::Data#counts
        class Counts < Telnyx::Internal::Type::BaseModel
          # @!attribute call_control_applications
          #   Number of Call Control applications.
          #
          #   @return [Integer]
          required :call_control_applications, Integer

          # @!attribute credential_connections
          #   Number of credential connections.
          #
          #   @return [Integer]
          required :credential_connections, Integer

          # @!attribute external_connections
          #   Number of external connections.
          #
          #   @return [Integer]
          required :external_connections, Integer

          # @!attribute fax_connections
          #   Number of Fax applications.
          #
          #   @return [Integer]
          required :fax_connections, Integer

          # @!attribute fqdn_connections
          #   Number of FQDN connections.
          #
          #   @return [Integer]
          required :fqdn_connections, Integer

          # @!attribute ip_connections
          #   Number of IP connections.
          #
          #   @return [Integer]
          required :ip_connections, Integer

          # @!attribute microsoft_teams_sbc_connections
          #   Number of Microsoft Teams SBC (direct routing) connections.
          #
          #   @return [Integer]
          required :microsoft_teams_sbc_connections, Integer

          # @!attribute mobile_voice_connections
          #   Number of mobile voice (IMS) connections.
          #
          #   @return [Integer]
          required :mobile_voice_connections, Integer

          # @!attribute operator_connect_connections
          #   Number of Microsoft Operator Connect connections.
          #
          #   @return [Integer]
          required :operator_connect_connections, Integer

          # @!attribute texml_applications
          #   Number of TeXML applications.
          #
          #   @return [Integer]
          required :texml_applications, Integer

          # @!attribute third_party_provider_connections
          #   Number of third-party provider connections.
          #
          #   @return [Integer]
          required :third_party_provider_connections, Integer

          # @!attribute uac_connections
          #   Number of UAC connections.
          #
          #   @return [Integer]
          required :uac_connections, Integer

          # @!attribute zoom_sbc_connections
          #   Number of Zoom SBC connections.
          #
          #   @return [Integer]
          required :zoom_sbc_connections, Integer

          # @!method initialize(call_control_applications:, credential_connections:, external_connections:, fax_connections:, fqdn_connections:, ip_connections:, microsoft_teams_sbc_connections:, mobile_voice_connections:, operator_connect_connections:, texml_applications:, third_party_provider_connections:, uac_connections:, zoom_sbc_connections:)
          #   Counts of the authenticated user's connections, grouped by connection type.
          #   Forward-only connections are excluded.
          #
          #   @param call_control_applications [Integer] Number of Call Control applications.
          #
          #   @param credential_connections [Integer] Number of credential connections.
          #
          #   @param external_connections [Integer] Number of external connections.
          #
          #   @param fax_connections [Integer] Number of Fax applications.
          #
          #   @param fqdn_connections [Integer] Number of FQDN connections.
          #
          #   @param ip_connections [Integer] Number of IP connections.
          #
          #   @param microsoft_teams_sbc_connections [Integer] Number of Microsoft Teams SBC (direct routing) connections.
          #
          #   @param mobile_voice_connections [Integer] Number of mobile voice (IMS) connections.
          #
          #   @param operator_connect_connections [Integer] Number of Microsoft Operator Connect connections.
          #
          #   @param texml_applications [Integer] Number of TeXML applications.
          #
          #   @param third_party_provider_connections [Integer] Number of third-party provider connections.
          #
          #   @param uac_connections [Integer] Number of UAC connections.
          #
          #   @param zoom_sbc_connections [Integer] Number of Zoom SBC connections.
        end

        # Connection limits that apply to the user. Contains a single global_limit when a
        # global connection limit applies, or per-type limits (standard_limit, texml_limit
        # and uac_limit) when the user has per-type connection count capabilities.
        #
        # @see Telnyx::Models::ConnectionRetrieveCountResponse::Data#limits
        module Limits
          extend Telnyx::Internal::Type::Union

          variant -> { Telnyx::Models::ConnectionRetrieveCountResponse::Data::Limits::GlobalConnectionLimit }

          variant -> { Telnyx::Models::ConnectionRetrieveCountResponse::Data::Limits::PerTypeConnectionLimits }

          class GlobalConnectionLimit < Telnyx::Internal::Type::BaseModel
            # @!attribute global_limit
            #   Maximum total number of connections allowed, when a global limit applies.
            #
            #   @return [Integer]
            required :global_limit, Integer

            # @!method initialize(global_limit:)
            #   @param global_limit [Integer] Maximum total number of connections allowed, when a global limit applies.
          end

          class PerTypeConnectionLimits < Telnyx::Internal::Type::BaseModel
            # @!attribute standard_limit
            #   Maximum number of standard connections allowed, when per-type limits apply.
            #
            #   @return [Integer]
            required :standard_limit, Integer

            # @!attribute texml_limit
            #   Maximum number of TeXML applications allowed, when per-type limits apply.
            #
            #   @return [Integer]
            required :texml_limit, Integer

            # @!attribute uac_limit
            #   Maximum number of UAC connections allowed, when per-type limits apply.
            #
            #   @return [Integer]
            required :uac_limit, Integer

            # @!method initialize(standard_limit:, texml_limit:, uac_limit:)
            #   @param standard_limit [Integer] Maximum number of standard connections allowed, when per-type limits apply.
            #
            #   @param texml_limit [Integer] Maximum number of TeXML applications allowed, when per-type limits apply.
            #
            #   @param uac_limit [Integer] Maximum number of UAC connections allowed, when per-type limits apply.
          end

          # @!method self.variants
          #   @return [Array(Telnyx::Models::ConnectionRetrieveCountResponse::Data::Limits::GlobalConnectionLimit, Telnyx::Models::ConnectionRetrieveCountResponse::Data::Limits::PerTypeConnectionLimits)]
        end
      end
    end
  end
end
