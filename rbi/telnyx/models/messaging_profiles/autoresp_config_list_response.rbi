# typed: strong

module Telnyx
  module Models
    module MessagingProfiles
      class AutorespConfigListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::MessagingProfiles::AutorespConfigListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T::Array[Telnyx::MessagingProfiles::AutoRespConfig]) }
        attr_accessor :data

        sig do
          returns(
            Telnyx::Models::MessagingProfiles::AutorespConfigListResponse::Meta
          )
        end
        attr_reader :meta

        sig do
          params(
            meta:
              Telnyx::Models::MessagingProfiles::AutorespConfigListResponse::Meta::OrHash
          ).void
        end
        attr_writer :meta

        # List of Auto-Response Settings
        sig do
          params(
            data: T::Array[Telnyx::MessagingProfiles::AutoRespConfig::OrHash],
            meta:
              Telnyx::Models::MessagingProfiles::AutorespConfigListResponse::Meta::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:, meta:)
        end

        sig do
          override.returns(
            {
              data: T::Array[Telnyx::MessagingProfiles::AutoRespConfig],
              meta:
                Telnyx::Models::MessagingProfiles::AutorespConfigListResponse::Meta
            }
          )
        end
        def to_hash
        end

        class Meta < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::MessagingProfiles::AutorespConfigListResponse::Meta,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :page_number

          sig { returns(Integer) }
          attr_accessor :page_size

          sig { returns(Integer) }
          attr_accessor :total_pages

          sig { returns(Integer) }
          attr_accessor :total_results

          sig do
            params(
              page_number: Integer,
              page_size: Integer,
              total_pages: Integer,
              total_results: Integer
            ).returns(T.attached_class)
          end
          def self.new(page_number:, page_size:, total_pages:, total_results:)
          end

          sig do
            override.returns(
              {
                page_number: Integer,
                page_size: Integer,
                total_pages: Integer,
                total_results: Integer
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
