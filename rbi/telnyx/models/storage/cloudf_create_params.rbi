# typed: strong

module Telnyx
  module Models
    module Storage
      class CloudfCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Storage::CloudfCreateParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Filesystem name, unique within your organization. Names are trimmed and
        # lowercased; after normalization they may contain lowercase letters, numbers,
        # `.`, `_`, and `-` only.
        sig { returns(String) }
        attr_accessor :name

        # Region where the filesystem's storage and metadata are provisioned.
        sig { returns(Telnyx::Storage::CloudfCreateParams::Region::OrSymbol) }
        attr_accessor :region

        sig { returns(String) }
        attr_accessor :idempotency_key

        sig do
          params(
            name: String,
            region: Telnyx::Storage::CloudfCreateParams::Region::OrSymbol,
            idempotency_key: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Filesystem name, unique within your organization. Names are trimmed and
          # lowercased; after normalization they may contain lowercase letters, numbers,
          # `.`, `_`, and `-` only.
          name:,
          # Region where the filesystem's storage and metadata are provisioned.
          region:,
          idempotency_key:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              name: String,
              region: Telnyx::Storage::CloudfCreateParams::Region::OrSymbol,
              idempotency_key: String,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Region where the filesystem's storage and metadata are provisioned.
        module Region
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Storage::CloudfCreateParams::Region)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          US_CENTRAL_1 =
            T.let(
              :"us-central-1",
              Telnyx::Storage::CloudfCreateParams::Region::TaggedSymbol
            )
          US_EAST_1 =
            T.let(
              :"us-east-1",
              Telnyx::Storage::CloudfCreateParams::Region::TaggedSymbol
            )
          US_WEST_1 =
            T.let(
              :"us-west-1",
              Telnyx::Storage::CloudfCreateParams::Region::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Storage::CloudfCreateParams::Region::TaggedSymbol
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
