# typed: strong

module Telnyx
  module Models
    module Dir
      class PhoneNumberListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::Dir::PhoneNumberListParams, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :dir_id

        # 1-based page number. Out-of-range values return an empty page with correct meta.
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_number

        sig { params(page_number: Integer).void }
        attr_writer :page_number

        # Items per page. Maximum 250; values above are clamped to 250.
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_size

        sig { params(page_size: Integer).void }
        attr_writer :page_size

        # Filter by phone-number status.
        sig do
          returns(
            T.nilable(Telnyx::Dir::PhoneNumberListParams::Status::OrSymbol)
          )
        end
        attr_reader :status

        sig do
          params(
            status: Telnyx::Dir::PhoneNumberListParams::Status::OrSymbol
          ).void
        end
        attr_writer :status

        sig do
          params(
            dir_id: String,
            page_number: Integer,
            page_size: Integer,
            status: Telnyx::Dir::PhoneNumberListParams::Status::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          dir_id:,
          # 1-based page number. Out-of-range values return an empty page with correct meta.
          page_number: nil,
          # Items per page. Maximum 250; values above are clamped to 250.
          page_size: nil,
          # Filter by phone-number status.
          status: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              dir_id: String,
              page_number: Integer,
              page_size: Integer,
              status: Telnyx::Dir::PhoneNumberListParams::Status::OrSymbol,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Filter by phone-number status.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Dir::PhoneNumberListParams::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SUBMITTED =
            T.let(
              :submitted,
              Telnyx::Dir::PhoneNumberListParams::Status::TaggedSymbol
            )
          IN_REVIEW =
            T.let(
              :in_review,
              Telnyx::Dir::PhoneNumberListParams::Status::TaggedSymbol
            )
          VERIFIED =
            T.let(
              :verified,
              Telnyx::Dir::PhoneNumberListParams::Status::TaggedSymbol
            )
          UNSUCCESSFUL =
            T.let(
              :unsuccessful,
              Telnyx::Dir::PhoneNumberListParams::Status::TaggedSymbol
            )
          SUSPENDED =
            T.let(
              :suspended,
              Telnyx::Dir::PhoneNumberListParams::Status::TaggedSymbol
            )
          EXPIRED =
            T.let(
              :expired,
              Telnyx::Dir::PhoneNumberListParams::Status::TaggedSymbol
            )
          PERMANENTLY_REJECTED =
            T.let(
              :permanently_rejected,
              Telnyx::Dir::PhoneNumberListParams::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::Dir::PhoneNumberListParams::Status::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
