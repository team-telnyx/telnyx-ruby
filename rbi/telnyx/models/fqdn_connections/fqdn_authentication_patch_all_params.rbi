# typed: strong

module Telnyx
  module Models
    module FqdnConnections
      class FqdnAuthenticationPatchAllParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::FqdnConnections::FqdnAuthenticationPatchAllParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :fqdn_connection_id

        # The failover webhook URL.
        sig { returns(T.nilable(String)) }
        attr_reader :failover_url

        sig { params(failover_url: String).void }
        attr_writer :failover_url

        # The outbound authentication type.
        sig do
          returns(
            T.nilable(
              Telnyx::FqdnConnections::FqdnAuthenticationPatchAllParams::FqdnOutboundAuthentication::OrSymbol
            )
          )
        end
        attr_reader :fqdn_outbound_authentication

        sig do
          params(
            fqdn_outbound_authentication:
              Telnyx::FqdnConnections::FqdnAuthenticationPatchAllParams::FqdnOutboundAuthentication::OrSymbol
          ).void
        end
        attr_writer :fqdn_outbound_authentication

        # The IP authentication method.
        sig do
          returns(
            T.nilable(
              Telnyx::FqdnConnections::FqdnAuthenticationPatchAllParams::IPAuthenticationMethod::OrSymbol
            )
          )
        end
        attr_reader :ip_authentication_method

        sig do
          params(
            ip_authentication_method:
              Telnyx::FqdnConnections::FqdnAuthenticationPatchAllParams::IPAuthenticationMethod::OrSymbol
          ).void
        end
        attr_writer :ip_authentication_method

        # The password for authentication.
        sig { returns(T.nilable(String)) }
        attr_reader :password

        sig { params(password: String).void }
        attr_writer :password

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
            fqdn_connection_id: String,
            failover_url: String,
            fqdn_outbound_authentication:
              Telnyx::FqdnConnections::FqdnAuthenticationPatchAllParams::FqdnOutboundAuthentication::OrSymbol,
            ip_authentication_method:
              Telnyx::FqdnConnections::FqdnAuthenticationPatchAllParams::IPAuthenticationMethod::OrSymbol,
            password: String,
            txt_name: String,
            txt_ttl: Integer,
            txt_value: String,
            user_name: String,
            webhook_url: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          fqdn_connection_id:,
          # The failover webhook URL.
          failover_url: nil,
          # The outbound authentication type.
          fqdn_outbound_authentication: nil,
          # The IP authentication method.
          ip_authentication_method: nil,
          # The password for authentication.
          password: nil,
          # The TXT record name for Microsoft Teams SBC DNS verification.
          txt_name: nil,
          # The TTL for the TXT record.
          txt_ttl: nil,
          # The TXT record value for Microsoft Teams SBC DNS verification.
          txt_value: nil,
          # The username for authentication.
          user_name: nil,
          # The webhook URL for authentication events.
          webhook_url: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              fqdn_connection_id: String,
              failover_url: String,
              fqdn_outbound_authentication:
                Telnyx::FqdnConnections::FqdnAuthenticationPatchAllParams::FqdnOutboundAuthentication::OrSymbol,
              ip_authentication_method:
                Telnyx::FqdnConnections::FqdnAuthenticationPatchAllParams::IPAuthenticationMethod::OrSymbol,
              password: String,
              txt_name: String,
              txt_ttl: Integer,
              txt_value: String,
              user_name: String,
              webhook_url: String,
              request_options: Telnyx::RequestOptions
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
                Telnyx::FqdnConnections::FqdnAuthenticationPatchAllParams::FqdnOutboundAuthentication
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IP_AUTHENTICATION =
            T.let(
              :"ip-authentication",
              Telnyx::FqdnConnections::FqdnAuthenticationPatchAllParams::FqdnOutboundAuthentication::TaggedSymbol
            )
          CREDENTIAL_AUTHENTICATION =
            T.let(
              :"credential-authentication",
              Telnyx::FqdnConnections::FqdnAuthenticationPatchAllParams::FqdnOutboundAuthentication::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::FqdnConnections::FqdnAuthenticationPatchAllParams::FqdnOutboundAuthentication::TaggedSymbol
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
                Telnyx::FqdnConnections::FqdnAuthenticationPatchAllParams::IPAuthenticationMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TOKEN =
            T.let(
              :token,
              Telnyx::FqdnConnections::FqdnAuthenticationPatchAllParams::IPAuthenticationMethod::TaggedSymbol
            )
          P_CHARGE_INFO =
            T.let(
              :"p-charge-info",
              Telnyx::FqdnConnections::FqdnAuthenticationPatchAllParams::IPAuthenticationMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::FqdnConnections::FqdnAuthenticationPatchAllParams::IPAuthenticationMethod::TaggedSymbol
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
