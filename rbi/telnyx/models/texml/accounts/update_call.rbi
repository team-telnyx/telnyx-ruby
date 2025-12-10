# typed: strong

module Telnyx
  module Models
    module Texml
      module Accounts
        class UpdateCall < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Texml::Accounts::UpdateCall,
                Telnyx::Internal::AnyHash
              )
            end

          # HTTP request type used for `FallbackUrl`.
          sig do
            returns(
              T.nilable(
                Telnyx::Texml::Accounts::UpdateCall::FallbackMethod::OrSymbol
              )
            )
          end
          attr_reader :fallback_method

          sig do
            params(
              fallback_method:
                Telnyx::Texml::Accounts::UpdateCall::FallbackMethod::OrSymbol
            ).void
          end
          attr_writer :fallback_method

          # A failover URL for which Telnyx will retrieve the TeXML call instructions if the
          # Url is not responding.
          sig { returns(T.nilable(String)) }
          attr_reader :fallback_url

          sig { params(fallback_url: String).void }
          attr_writer :fallback_url

          # HTTP request type used for `Url`.
          sig do
            returns(
              T.nilable(Telnyx::Texml::Accounts::UpdateCall::Method::OrSymbol)
            )
          end
          attr_reader :http_method

          sig do
            params(
              http_method: Telnyx::Texml::Accounts::UpdateCall::Method::OrSymbol
            ).void
          end
          attr_writer :http_method

          # The value to set the call status to. Setting the status to completed ends the
          # call.
          sig { returns(T.nilable(String)) }
          attr_reader :status

          sig { params(status: String).void }
          attr_writer :status

          # URL destination for Telnyx to send status callback events to for the call.
          sig { returns(T.nilable(String)) }
          attr_reader :status_callback

          sig { params(status_callback: String).void }
          attr_writer :status_callback

          # HTTP request type used for `StatusCallback`.
          sig do
            returns(
              T.nilable(
                Telnyx::Texml::Accounts::UpdateCall::StatusCallbackMethod::OrSymbol
              )
            )
          end
          attr_reader :status_callback_method

          sig do
            params(
              status_callback_method:
                Telnyx::Texml::Accounts::UpdateCall::StatusCallbackMethod::OrSymbol
            ).void
          end
          attr_writer :status_callback_method

          # TeXML to replace the current one with.
          sig { returns(T.nilable(String)) }
          attr_reader :texml

          sig { params(texml: String).void }
          attr_writer :texml

          # The URL where TeXML will make a request to retrieve a new set of TeXML
          # instructions to continue the call flow.
          sig { returns(T.nilable(String)) }
          attr_reader :url

          sig { params(url: String).void }
          attr_writer :url

          sig do
            params(
              fallback_method:
                Telnyx::Texml::Accounts::UpdateCall::FallbackMethod::OrSymbol,
              fallback_url: String,
              http_method:
                Telnyx::Texml::Accounts::UpdateCall::Method::OrSymbol,
              status: String,
              status_callback: String,
              status_callback_method:
                Telnyx::Texml::Accounts::UpdateCall::StatusCallbackMethod::OrSymbol,
              texml: String,
              url: String
            ).returns(T.attached_class)
          end
          def self.new(
            # HTTP request type used for `FallbackUrl`.
            fallback_method: nil,
            # A failover URL for which Telnyx will retrieve the TeXML call instructions if the
            # Url is not responding.
            fallback_url: nil,
            # HTTP request type used for `Url`.
            http_method: nil,
            # The value to set the call status to. Setting the status to completed ends the
            # call.
            status: nil,
            # URL destination for Telnyx to send status callback events to for the call.
            status_callback: nil,
            # HTTP request type used for `StatusCallback`.
            status_callback_method: nil,
            # TeXML to replace the current one with.
            texml: nil,
            # The URL where TeXML will make a request to retrieve a new set of TeXML
            # instructions to continue the call flow.
            url: nil
          )
          end

          sig do
            override.returns(
              {
                fallback_method:
                  Telnyx::Texml::Accounts::UpdateCall::FallbackMethod::OrSymbol,
                fallback_url: String,
                http_method:
                  Telnyx::Texml::Accounts::UpdateCall::Method::OrSymbol,
                status: String,
                status_callback: String,
                status_callback_method:
                  Telnyx::Texml::Accounts::UpdateCall::StatusCallbackMethod::OrSymbol,
                texml: String,
                url: String
              }
            )
          end
          def to_hash
          end

          # HTTP request type used for `FallbackUrl`.
          module FallbackMethod
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Texml::Accounts::UpdateCall::FallbackMethod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            GET =
              T.let(
                :GET,
                Telnyx::Texml::Accounts::UpdateCall::FallbackMethod::TaggedSymbol
              )
            POST =
              T.let(
                :POST,
                Telnyx::Texml::Accounts::UpdateCall::FallbackMethod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Texml::Accounts::UpdateCall::FallbackMethod::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # HTTP request type used for `Url`.
          module Method
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Telnyx::Texml::Accounts::UpdateCall::Method)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            GET =
              T.let(
                :GET,
                Telnyx::Texml::Accounts::UpdateCall::Method::TaggedSymbol
              )
            POST =
              T.let(
                :POST,
                Telnyx::Texml::Accounts::UpdateCall::Method::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Texml::Accounts::UpdateCall::Method::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # HTTP request type used for `StatusCallback`.
          module StatusCallbackMethod
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Texml::Accounts::UpdateCall::StatusCallbackMethod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            GET =
              T.let(
                :GET,
                Telnyx::Texml::Accounts::UpdateCall::StatusCallbackMethod::TaggedSymbol
              )
            POST =
              T.let(
                :POST,
                Telnyx::Texml::Accounts::UpdateCall::StatusCallbackMethod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Texml::Accounts::UpdateCall::StatusCallbackMethod::TaggedSymbol
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
end
