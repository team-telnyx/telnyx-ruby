# typed: strong

module Telnyx
  module Models
    module Calls
      class ActionReferParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::Calls::ActionReferParams, Telnyx::Internal::AnyHash)
          end

        # The SIP URI to which the call will be referred to.
        sig { returns(String) }
        attr_accessor :sip_address

        # Use this field to add state to every subsequent webhook. It must be a valid
        # Base-64 encoded string.
        sig { returns(T.nilable(String)) }
        attr_reader :client_state

        sig { params(client_state: String).void }
        attr_writer :client_state

        # Use this field to avoid execution of duplicate commands. Telnyx will ignore
        # subsequent commands with the same `command_id` as one that has already been
        # executed.
        sig { returns(T.nilable(String)) }
        attr_reader :command_id

        sig { params(command_id: String).void }
        attr_writer :command_id

        # Custom headers to be added to the SIP INVITE.
        sig { returns(T.nilable(T::Array[Telnyx::CustomSipHeader])) }
        attr_reader :custom_headers

        sig do
          params(custom_headers: T::Array[Telnyx::CustomSipHeader::OrHash]).void
        end
        attr_writer :custom_headers

        # SIP Authentication password used for SIP challenges.
        sig { returns(T.nilable(String)) }
        attr_reader :sip_auth_password

        sig { params(sip_auth_password: String).void }
        attr_writer :sip_auth_password

        # SIP Authentication username used for SIP challenges.
        sig { returns(T.nilable(String)) }
        attr_reader :sip_auth_username

        sig { params(sip_auth_username: String).void }
        attr_writer :sip_auth_username

        # SIP headers to be added to the request. Currently only User-to-User header is
        # supported.
        sig { returns(T.nilable(T::Array[Telnyx::SipHeader])) }
        attr_reader :sip_headers

        sig { params(sip_headers: T::Array[Telnyx::SipHeader::OrHash]).void }
        attr_writer :sip_headers

        sig do
          params(
            sip_address: String,
            client_state: String,
            command_id: String,
            custom_headers: T::Array[Telnyx::CustomSipHeader::OrHash],
            sip_auth_password: String,
            sip_auth_username: String,
            sip_headers: T::Array[Telnyx::SipHeader::OrHash],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The SIP URI to which the call will be referred to.
          sip_address:,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid execution of duplicate commands. Telnyx will ignore
          # subsequent commands with the same `command_id` as one that has already been
          # executed.
          command_id: nil,
          # Custom headers to be added to the SIP INVITE.
          custom_headers: nil,
          # SIP Authentication password used for SIP challenges.
          sip_auth_password: nil,
          # SIP Authentication username used for SIP challenges.
          sip_auth_username: nil,
          # SIP headers to be added to the request. Currently only User-to-User header is
          # supported.
          sip_headers: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              sip_address: String,
              client_state: String,
              command_id: String,
              custom_headers: T::Array[Telnyx::CustomSipHeader],
              sip_auth_password: String,
              sip_auth_username: String,
              sip_headers: T::Array[Telnyx::SipHeader],
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
