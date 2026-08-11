# typed: strong

module Telnyx
  module Models
    module FqdnConnections
      class FqdnConnectionsFqdnAuthentication < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::FqdnConnections::FqdnConnectionsFqdnAuthentication,
              Telnyx::Internal::AnyHash
            )
          end

        # Identifies the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # The ID of the FQDN connection this authentication strategy belongs to.
        sig { returns(T.nilable(String)) }
        attr_reader :connection_id

        sig { params(connection_id: String).void }
        attr_writer :connection_id

        # The failover webhook URL.
        sig { returns(T.nilable(String)) }
        attr_reader :failover_url

        sig { params(failover_url: String).void }
        attr_writer :failover_url

        # The outbound authentication type.
        sig do
          returns(
            T.nilable(
              Telnyx::FqdnConnections::FqdnConnectionsFqdnAuthentication::FqdnOutboundAuthentication::TaggedSymbol
            )
          )
        end
        attr_reader :fqdn_outbound_authentication

        sig do
          params(
            fqdn_outbound_authentication:
              Telnyx::FqdnConnections::FqdnConnectionsFqdnAuthentication::FqdnOutboundAuthentication::OrSymbol
          ).void
        end
        attr_writer :fqdn_outbound_authentication

        # The IP authentication method.
        sig do
          returns(
            T.nilable(
              Telnyx::FqdnConnections::FqdnConnectionsFqdnAuthentication::IPAuthenticationMethod::TaggedSymbol
            )
          )
        end
        attr_reader :ip_authentication_method

        sig do
          params(
            ip_authentication_method:
              Telnyx::FqdnConnections::FqdnConnectionsFqdnAuthentication::IPAuthenticationMethod::OrSymbol
          ).void
        end
        attr_writer :ip_authentication_method

        # Whether the connection is a Microsoft Teams SBC.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :microsoft_teams_sbc

        sig { params(microsoft_teams_sbc: T::Boolean).void }
        attr_writer :microsoft_teams_sbc

        # The password for authentication.
        sig { returns(T.nilable(String)) }
        attr_reader :password

        sig { params(password: String).void }
        attr_writer :password

        # Identifies the type of the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        # The TXT record name for Microsoft Teams SBC DNS verification.
        sig { returns(T.nilable(String)) }
        attr_reader :txt_name

        sig { params(txt_name: String).void }
        attr_writer :txt_name

        # The TTL for the TXT record.
        sig { returns(T.nilable(Integer)) }
        attr_reader :txt_ttl

        sig { params(txt_ttl: Integer).void }
        attr_writer :txt_ttl

        # The TXT record value for Microsoft Teams SBC DNS verification.
        sig { returns(T.nilable(String)) }
        attr_reader :txt_value

        sig { params(txt_value: String).void }
        attr_writer :txt_value

        # The username for authentication.
        sig { returns(T.nilable(String)) }
        attr_reader :user_name

        sig { params(user_name: String).void }
        attr_writer :user_name

        # The webhook URL for authentication events.
        sig { returns(T.nilable(String)) }
        attr_reader :webhook_url

        sig { params(webhook_url: String).void }
        attr_writer :webhook_url

        sig do
          params(
            id: String,
            connection_id: String,
            failover_url: String,
            fqdn_outbound_authentication:
              Telnyx::FqdnConnections::FqdnConnectionsFqdnAuthentication::FqdnOutboundAuthentication::OrSymbol,
            ip_authentication_method:
              Telnyx::FqdnConnections::FqdnConnectionsFqdnAuthentication::IPAuthenticationMethod::OrSymbol,
            microsoft_teams_sbc: T::Boolean,
            password: String,
            record_type: String,
            txt_name: String,
            txt_ttl: Integer,
            txt_value: String,
            user_name: String,
            webhook_url: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifies the resource.
          id: nil,
          # The ID of the FQDN connection this authentication strategy belongs to.
          connection_id: nil,
          # The failover webhook URL.
          failover_url: nil,
          # The outbound authentication type.
          fqdn_outbound_authentication: nil,
          # The IP authentication method.
          ip_authentication_method: nil,
          # Whether the connection is a Microsoft Teams SBC.
          microsoft_teams_sbc: nil,
          # The password for authentication.
          password: nil,
          # Identifies the type of the resource.
          record_type: nil,
          # The TXT record name for Microsoft Teams SBC DNS verification.
          txt_name: nil,
          # The TTL for the TXT record.
          txt_ttl: nil,
          # The TXT record value for Microsoft Teams SBC DNS verification.
          txt_value: nil,
          # The username for authentication.
          user_name: nil,
          # The webhook URL for authentication events.
          webhook_url: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              connection_id: String,
              failover_url: String,
              fqdn_outbound_authentication:
                Telnyx::FqdnConnections::FqdnConnectionsFqdnAuthentication::FqdnOutboundAuthentication::TaggedSymbol,
              ip_authentication_method:
                Telnyx::FqdnConnections::FqdnConnectionsFqdnAuthentication::IPAuthenticationMethod::TaggedSymbol,
              microsoft_teams_sbc: T::Boolean,
              password: String,
              record_type: String,
              txt_name: String,
              txt_ttl: Integer,
              txt_value: String,
              user_name: String,
              webhook_url: String
            }
          )
        end
        def to_hash
        end

        # The outbound authentication type.
        module FqdnOutboundAuthentication
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::FqdnConnections::FqdnConnectionsFqdnAuthentication::FqdnOutboundAuthentication
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IP_AUTHENTICATION =
            T.let(
              :"ip-authentication",
              Telnyx::FqdnConnections::FqdnConnectionsFqdnAuthentication::FqdnOutboundAuthentication::TaggedSymbol
            )
          CREDENTIAL_AUTHENTICATION =
            T.let(
              :"credential-authentication",
              Telnyx::FqdnConnections::FqdnConnectionsFqdnAuthentication::FqdnOutboundAuthentication::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::FqdnConnections::FqdnConnectionsFqdnAuthentication::FqdnOutboundAuthentication::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The IP authentication method.
        module IPAuthenticationMethod
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::FqdnConnections::FqdnConnectionsFqdnAuthentication::IPAuthenticationMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TOKEN =
            T.let(
              :token,
              Telnyx::FqdnConnections::FqdnConnectionsFqdnAuthentication::IPAuthenticationMethod::TaggedSymbol
            )
          P_CHARGE_INFO =
            T.let(
              :"p-charge-info",
              Telnyx::FqdnConnections::FqdnConnectionsFqdnAuthentication::IPAuthenticationMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::FqdnConnections::FqdnConnectionsFqdnAuthentication::IPAuthenticationMethod::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
