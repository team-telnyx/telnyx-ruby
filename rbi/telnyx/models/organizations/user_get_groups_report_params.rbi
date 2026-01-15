# typed: strong

module Telnyx
  module Models
    module Organizations
      class UserGetGroupsReportParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Organizations::UserGetGroupsReportParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Telnyx::Organizations::UserGetGroupsReportParams::Accept::OrSymbol
            )
          )
        end
        attr_reader :accept

        sig do
          params(
            accept:
              Telnyx::Organizations::UserGetGroupsReportParams::Accept::OrSymbol
          ).void
        end
        attr_writer :accept

        sig do
          params(
            accept:
              Telnyx::Organizations::UserGetGroupsReportParams::Accept::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(accept: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              accept:
                Telnyx::Organizations::UserGetGroupsReportParams::Accept::OrSymbol,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        module Accept
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Organizations::UserGetGroupsReportParams::Accept
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APPLICATION_JSON =
            T.let(
              :"application/json",
              Telnyx::Organizations::UserGetGroupsReportParams::Accept::TaggedSymbol
            )
          TEXT_CSV =
            T.let(
              :"text/csv",
              Telnyx::Organizations::UserGetGroupsReportParams::Accept::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Organizations::UserGetGroupsReportParams::Accept::TaggedSymbol
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
