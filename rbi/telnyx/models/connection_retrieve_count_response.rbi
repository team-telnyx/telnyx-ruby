# typed: strong

module Telnyx
  module Models
    class ConnectionRetrieveCountResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::ConnectionRetrieveCountResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(Telnyx::Models::ConnectionRetrieveCountResponse::Data) }
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::ConnectionRetrieveCountResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::ConnectionRetrieveCountResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::ConnectionRetrieveCountResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::ConnectionRetrieveCountResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Counts of the authenticated user's connections, grouped by connection type.
        # Forward-only connections are excluded.
        sig do
          returns(Telnyx::Models::ConnectionRetrieveCountResponse::Data::Counts)
        end
        attr_reader :counts

        sig do
          params(
            counts:
              Telnyx::Models::ConnectionRetrieveCountResponse::Data::Counts::OrHash
          ).void
        end
        attr_writer :counts

        # Connection limits that apply to the user. Contains a single global_limit when a
        # global connection limit applies, or per-type limits (standard_limit, texml_limit
        # and uac_limit) when the user has per-type connection count capabilities.
        sig do
          returns(
            Telnyx::Models::ConnectionRetrieveCountResponse::Data::Limits::Variants
          )
        end
        attr_accessor :limits

        # Identifies the type of the resource.
        sig { returns(String) }
        attr_accessor :record_type

        sig do
          params(
            counts:
              Telnyx::Models::ConnectionRetrieveCountResponse::Data::Counts::OrHash,
            limits:
              T.any(
                Telnyx::Models::ConnectionRetrieveCountResponse::Data::Limits::GlobalConnectionLimit::OrHash,
                Telnyx::Models::ConnectionRetrieveCountResponse::Data::Limits::PerTypeConnectionLimits::OrHash
              ),
            record_type: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Counts of the authenticated user's connections, grouped by connection type.
          # Forward-only connections are excluded.
          counts:,
          # Connection limits that apply to the user. Contains a single global_limit when a
          # global connection limit applies, or per-type limits (standard_limit, texml_limit
          # and uac_limit) when the user has per-type connection count capabilities.
          limits:,
          # Identifies the type of the resource.
          record_type:
        )
        end

        sig do
          override.returns(
            {
              counts:
                Telnyx::Models::ConnectionRetrieveCountResponse::Data::Counts,
              limits:
                Telnyx::Models::ConnectionRetrieveCountResponse::Data::Limits::Variants,
              record_type: String
            }
          )
        end
        def to_hash
        end

        class Counts < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::ConnectionRetrieveCountResponse::Data::Counts,
                Telnyx::Internal::AnyHash
              )
            end

          # Number of Call Control applications.
          sig { returns(Integer) }
          attr_accessor :call_control_applications

          # Number of credential connections.
          sig { returns(Integer) }
          attr_accessor :credential_connections

          # Number of external connections.
          sig { returns(Integer) }
          attr_accessor :external_connections

          # Number of Fax applications.
          sig { returns(Integer) }
          attr_accessor :fax_connections

          # Number of FQDN connections.
          sig { returns(Integer) }
          attr_accessor :fqdn_connections

          # Number of IP connections.
          sig { returns(Integer) }
          attr_accessor :ip_connections

          # Number of Microsoft Teams SBC (direct routing) connections.
          sig { returns(Integer) }
          attr_accessor :microsoft_teams_sbc_connections

          # Number of mobile voice (IMS) connections.
          sig { returns(Integer) }
          attr_accessor :mobile_voice_connections

          # Number of Microsoft Operator Connect connections.
          sig { returns(Integer) }
          attr_accessor :operator_connect_connections

          # Number of TeXML applications.
          sig { returns(Integer) }
          attr_accessor :texml_applications

          # Number of third-party provider connections.
          sig { returns(Integer) }
          attr_accessor :third_party_provider_connections

          # Number of UAC connections.
          sig { returns(Integer) }
          attr_accessor :uac_connections

          # Number of Zoom SBC connections.
          sig { returns(Integer) }
          attr_accessor :zoom_sbc_connections

          # Counts of the authenticated user's connections, grouped by connection type.
          # Forward-only connections are excluded.
          sig do
            params(
              call_control_applications: Integer,
              credential_connections: Integer,
              external_connections: Integer,
              fax_connections: Integer,
              fqdn_connections: Integer,
              ip_connections: Integer,
              microsoft_teams_sbc_connections: Integer,
              mobile_voice_connections: Integer,
              operator_connect_connections: Integer,
              texml_applications: Integer,
              third_party_provider_connections: Integer,
              uac_connections: Integer,
              zoom_sbc_connections: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # Number of Call Control applications.
            call_control_applications:,
            # Number of credential connections.
            credential_connections:,
            # Number of external connections.
            external_connections:,
            # Number of Fax applications.
            fax_connections:,
            # Number of FQDN connections.
            fqdn_connections:,
            # Number of IP connections.
            ip_connections:,
            # Number of Microsoft Teams SBC (direct routing) connections.
            microsoft_teams_sbc_connections:,
            # Number of mobile voice (IMS) connections.
            mobile_voice_connections:,
            # Number of Microsoft Operator Connect connections.
            operator_connect_connections:,
            # Number of TeXML applications.
            texml_applications:,
            # Number of third-party provider connections.
            third_party_provider_connections:,
            # Number of UAC connections.
            uac_connections:,
            # Number of Zoom SBC connections.
            zoom_sbc_connections:
          )
          end

          sig do
            override.returns(
              {
                call_control_applications: Integer,
                credential_connections: Integer,
                external_connections: Integer,
                fax_connections: Integer,
                fqdn_connections: Integer,
                ip_connections: Integer,
                microsoft_teams_sbc_connections: Integer,
                mobile_voice_connections: Integer,
                operator_connect_connections: Integer,
                texml_applications: Integer,
                third_party_provider_connections: Integer,
                uac_connections: Integer,
                zoom_sbc_connections: Integer
              }
            )
          end
          def to_hash
          end
        end

        # Connection limits that apply to the user. Contains a single global_limit when a
        # global connection limit applies, or per-type limits (standard_limit, texml_limit
        # and uac_limit) when the user has per-type connection count capabilities.
        module Limits
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Telnyx::Models::ConnectionRetrieveCountResponse::Data::Limits::GlobalConnectionLimit,
                Telnyx::Models::ConnectionRetrieveCountResponse::Data::Limits::PerTypeConnectionLimits
              )
            end

          class GlobalConnectionLimit < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::ConnectionRetrieveCountResponse::Data::Limits::GlobalConnectionLimit,
                  Telnyx::Internal::AnyHash
                )
              end

            # Maximum total number of connections allowed, when a global limit applies.
            sig { returns(Integer) }
            attr_accessor :global_limit

            sig { params(global_limit: Integer).returns(T.attached_class) }
            def self.new(
              # Maximum total number of connections allowed, when a global limit applies.
              global_limit:
            )
            end

            sig { override.returns({ global_limit: Integer }) }
            def to_hash
            end
          end

          class PerTypeConnectionLimits < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::ConnectionRetrieveCountResponse::Data::Limits::PerTypeConnectionLimits,
                  Telnyx::Internal::AnyHash
                )
              end

            # Maximum number of standard connections allowed, when per-type limits apply.
            sig { returns(Integer) }
            attr_accessor :standard_limit

            # Maximum number of TeXML applications allowed, when per-type limits apply.
            sig { returns(Integer) }
            attr_accessor :texml_limit

            # Maximum number of UAC connections allowed, when per-type limits apply.
            sig { returns(Integer) }
            attr_accessor :uac_limit

            sig do
              params(
                standard_limit: Integer,
                texml_limit: Integer,
                uac_limit: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              # Maximum number of standard connections allowed, when per-type limits apply.
              standard_limit:,
              # Maximum number of TeXML applications allowed, when per-type limits apply.
              texml_limit:,
              # Maximum number of UAC connections allowed, when per-type limits apply.
              uac_limit:
            )
            end

            sig do
              override.returns(
                {
                  standard_limit: Integer,
                  texml_limit: Integer,
                  uac_limit: Integer
                }
              )
            end
            def to_hash
            end
          end

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::ConnectionRetrieveCountResponse::Data::Limits::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
