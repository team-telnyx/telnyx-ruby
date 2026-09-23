# typed: strong

module Telnyx
  module Models
    module Texml
      class CallCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::Texml::CallCreateParams, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :connection_id

        # The E.164-formatted phone number or SIP URI to present as the caller.
        sig { returns(String) }
        attr_accessor :from

        # The E.164-formatted phone number or SIP URI to call.
        sig { returns(String) }
        attr_accessor :to

        # HTTP method used to retrieve TeXML instructions from Url.
        sig do
          returns(T.nilable(Telnyx::Texml::CallCreateParams::Method::OrSymbol))
        end
        attr_reader :method_

        sig do
          params(
            method_: Telnyx::Texml::CallCreateParams::Method::OrSymbol
          ).void
        end
        attr_writer :method_

        # Inline TeXML instructions to execute when the call is answered.
        sig { returns(T.nilable(String)) }
        attr_reader :texml

        sig { params(texml: String).void }
        attr_writer :texml

        # The URL from which to retrieve TeXML instructions. Overrides the TeXML
        # application XML request URL.
        sig { returns(T.nilable(String)) }
        attr_reader :url

        sig { params(url: String).void }
        attr_writer :url

        sig do
          params(
            connection_id: String,
            from: String,
            to: String,
            method_: Telnyx::Texml::CallCreateParams::Method::OrSymbol,
            texml: String,
            url: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          connection_id:,
          # The E.164-formatted phone number or SIP URI to present as the caller.
          from:,
          # The E.164-formatted phone number or SIP URI to call.
          to:,
          # HTTP method used to retrieve TeXML instructions from Url.
          method_: nil,
          # Inline TeXML instructions to execute when the call is answered.
          texml: nil,
          # The URL from which to retrieve TeXML instructions. Overrides the TeXML
          # application XML request URL.
          url: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              connection_id: String,
              from: String,
              to: String,
              method_: Telnyx::Texml::CallCreateParams::Method::OrSymbol,
              texml: String,
              url: String,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # HTTP method used to retrieve TeXML instructions from Url.
        module Method
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Texml::CallCreateParams::Method)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          GET =
            T.let(:GET, Telnyx::Texml::CallCreateParams::Method::TaggedSymbol)
          POST =
            T.let(:POST, Telnyx::Texml::CallCreateParams::Method::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::Texml::CallCreateParams::Method::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
