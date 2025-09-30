# typed: strong

module Telnyx
  module Models
    module MessagingProfiles
      class AutorespConfigListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::MessagingProfiles::AutorespConfigListParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :country_code

        sig { params(country_code: String).void }
        attr_writer :country_code

        # Consolidated created_at parameter (deepObject style). Originally:
        # created_at[gte], created_at[lte]
        sig do
          returns(
            T.nilable(
              Telnyx::MessagingProfiles::AutorespConfigListParams::CreatedAt
            )
          )
        end
        attr_reader :created_at

        sig do
          params(
            created_at:
              Telnyx::MessagingProfiles::AutorespConfigListParams::CreatedAt::OrHash
          ).void
        end
        attr_writer :created_at

        # Consolidated updated_at parameter (deepObject style). Originally:
        # updated_at[gte], updated_at[lte]
        sig do
          returns(
            T.nilable(
              Telnyx::MessagingProfiles::AutorespConfigListParams::UpdatedAt
            )
          )
        end
        attr_reader :updated_at

        sig do
          params(
            updated_at:
              Telnyx::MessagingProfiles::AutorespConfigListParams::UpdatedAt::OrHash
          ).void
        end
        attr_writer :updated_at

        sig do
          params(
            country_code: String,
            created_at:
              Telnyx::MessagingProfiles::AutorespConfigListParams::CreatedAt::OrHash,
            updated_at:
              Telnyx::MessagingProfiles::AutorespConfigListParams::UpdatedAt::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          country_code: nil,
          # Consolidated created_at parameter (deepObject style). Originally:
          # created_at[gte], created_at[lte]
          created_at: nil,
          # Consolidated updated_at parameter (deepObject style). Originally:
          # updated_at[gte], updated_at[lte]
          updated_at: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              country_code: String,
              created_at:
                Telnyx::MessagingProfiles::AutorespConfigListParams::CreatedAt,
              updated_at:
                Telnyx::MessagingProfiles::AutorespConfigListParams::UpdatedAt,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        class CreatedAt < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::MessagingProfiles::AutorespConfigListParams::CreatedAt,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :gte

          sig { params(gte: String).void }
          attr_writer :gte

          sig { returns(T.nilable(String)) }
          attr_reader :lte

          sig { params(lte: String).void }
          attr_writer :lte

          # Consolidated created_at parameter (deepObject style). Originally:
          # created_at[gte], created_at[lte]
          sig { params(gte: String, lte: String).returns(T.attached_class) }
          def self.new(gte: nil, lte: nil)
          end

          sig { override.returns({ gte: String, lte: String }) }
          def to_hash
          end
        end

        class UpdatedAt < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::MessagingProfiles::AutorespConfigListParams::UpdatedAt,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :gte

          sig { params(gte: String).void }
          attr_writer :gte

          sig { returns(T.nilable(String)) }
          attr_reader :lte

          sig { params(lte: String).void }
          attr_writer :lte

          # Consolidated updated_at parameter (deepObject style). Originally:
          # updated_at[gte], updated_at[lte]
          sig { params(gte: String, lte: String).returns(T.attached_class) }
          def self.new(gte: nil, lte: nil)
          end

          sig { override.returns({ gte: String, lte: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
