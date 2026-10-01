# typed: strong

module Telnyx
  module Models
    class DirRetrieveBpoAuthorizationsResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::DirRetrieveBpoAuthorizationsResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T::Array[Telnyx::Models::DirRetrieveBpoAuthorizationsResponse::Data]
        )
      end
      attr_accessor :data

      # JSON:API pagination metadata returned with every paginated list response. Page
      # numbering is 1-based. `page_size` reports the number of items actually returned
      # in `data` for this page; the requested size is taken from the `page[size]` query
      # parameter.
      sig { returns(Telnyx::BrandedCallingPaginationMeta) }
      attr_reader :meta

      sig { params(meta: Telnyx::BrandedCallingPaginationMeta::OrHash).void }
      attr_writer :meta

      # Paginated list of a DIR's BPO authorizations.
      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::DirRetrieveBpoAuthorizationsResponse::Data::OrHash
            ],
          meta: Telnyx::BrandedCallingPaginationMeta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        data:,
        # JSON:API pagination metadata returned with every paginated list response. Page
        # numbering is 1-based. `page_size` reports the number of items actually returned
        # in `data` for this page; the requested size is taken from the `page[size]` query
        # parameter.
        meta:
      )
      end

      sig do
        override.returns(
          {
            data:
              T::Array[
                Telnyx::Models::DirRetrieveBpoAuthorizationsResponse::Data
              ],
            meta: Telnyx::BrandedCallingPaginationMeta
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::DirRetrieveBpoAuthorizationsResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # The authorized BPO account's enterprise id.
        sig { returns(String) }
        attr_accessor :bpo_enterprise_id

        # Id of the signed Letter of Authorization document submitted for this BPO. Send
        # it back unchanged in `bpo_authorizations` when updating the DIR to keep this
        # authorization and its review state.
        sig { returns(String) }
        attr_accessor :loa_document_id

        # Review state of this authorization. `pending` on create or when the Letter of
        # Authorization is re-uploaded; an admin moves it to `approved` or `rejected`.
        # Only an `approved` authorization adds the BPO to this DIR's authorized callers
        # in the branded calling registry.
        sig do
          returns(
            Telnyx::Models::DirRetrieveBpoAuthorizationsResponse::Data::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # Why the authorization was rejected. `null` unless `status` is `rejected`.
        sig { returns(T.nilable(String)) }
        attr_accessor :rejection_reason

        # Always `bpo_authorization`.
        sig do
          returns(
            Telnyx::Models::DirRetrieveBpoAuthorizationsResponse::Data::RecordType::TaggedSymbol
          )
        end
        attr_accessor :record_type

        # A single authorization of a BPO (Business Process Outsourcer) account on a DIR.
        sig do
          params(
            bpo_enterprise_id: String,
            loa_document_id: String,
            record_type:
              Telnyx::Models::DirRetrieveBpoAuthorizationsResponse::Data::RecordType::OrSymbol,
            status:
              Telnyx::Models::DirRetrieveBpoAuthorizationsResponse::Data::Status::OrSymbol,
            rejection_reason: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The authorized BPO account's enterprise id.
          bpo_enterprise_id:,
          # Id of the signed Letter of Authorization document submitted for this BPO. Send
          # it back unchanged in `bpo_authorizations` when updating the DIR to keep this
          # authorization and its review state.
          loa_document_id:,
          # Always `bpo_authorization`.
          record_type:,
          # Review state of this authorization. `pending` on create or when the Letter of
          # Authorization is re-uploaded; an admin moves it to `approved` or `rejected`.
          # Only an `approved` authorization adds the BPO to this DIR's authorized callers
          # in the branded calling registry.
          status:,
          # Why the authorization was rejected. `null` unless `status` is `rejected`.
          rejection_reason: nil
        )
        end

        sig do
          override.returns(
            {
              bpo_enterprise_id: String,
              loa_document_id: String,
              record_type:
                Telnyx::Models::DirRetrieveBpoAuthorizationsResponse::Data::RecordType::TaggedSymbol,
              status:
                Telnyx::Models::DirRetrieveBpoAuthorizationsResponse::Data::Status::TaggedSymbol,
              rejection_reason: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        # Always `bpo_authorization`.
        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::DirRetrieveBpoAuthorizationsResponse::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BPO_AUTHORIZATION =
            T.let(
              :bpo_authorization,
              Telnyx::Models::DirRetrieveBpoAuthorizationsResponse::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::DirRetrieveBpoAuthorizationsResponse::Data::RecordType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Review state of this authorization. `pending` on create or when the Letter of
        # Authorization is re-uploaded; an admin moves it to `approved` or `rejected`.
        # Only an `approved` authorization adds the BPO to this DIR's authorized callers
        # in the branded calling registry.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::DirRetrieveBpoAuthorizationsResponse::Data::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              Telnyx::Models::DirRetrieveBpoAuthorizationsResponse::Data::Status::TaggedSymbol
            )
          APPROVED =
            T.let(
              :approved,
              Telnyx::Models::DirRetrieveBpoAuthorizationsResponse::Data::Status::TaggedSymbol
            )
          REJECTED =
            T.let(
              :rejected,
              Telnyx::Models::DirRetrieveBpoAuthorizationsResponse::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::DirRetrieveBpoAuthorizationsResponse::Data::Status::TaggedSymbol
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
