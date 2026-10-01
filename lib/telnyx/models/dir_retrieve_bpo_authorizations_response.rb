# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Dir#retrieve_bpo_authorizations
    class DirRetrieveBpoAuthorizationsResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::DirRetrieveBpoAuthorizationsResponse::Data>]
      required :data,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::DirRetrieveBpoAuthorizationsResponse::Data] }

      # @!attribute meta
      #   JSON:API pagination metadata returned with every paginated list response. Page
      #   numbering is 1-based. `page_size` reports the number of items actually returned
      #   in `data` for this page; the requested size is taken from the `page[size]` query
      #   parameter.
      #
      #   @return [Telnyx::Models::BrandedCallingPaginationMeta]
      required :meta, -> { Telnyx::BrandedCallingPaginationMeta }

      # @!method initialize(data:, meta:)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::DirRetrieveBpoAuthorizationsResponse} for more details.
      #
      #   Paginated list of a DIR's BPO authorizations.
      #
      #   @param data [Array<Telnyx::Models::DirRetrieveBpoAuthorizationsResponse::Data>]
      #
      #   @param meta [Telnyx::Models::BrandedCallingPaginationMeta] JSON:API pagination metadata returned with every paginated list response. Page n

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute bpo_enterprise_id
        #   The authorized BPO account's enterprise id.
        #
        #   @return [String]
        required :bpo_enterprise_id, String

        # @!attribute loa_document_id
        #   Id of the signed Letter of Authorization document submitted for this BPO. Send
        #   it back unchanged in `bpo_authorizations` when updating the DIR to keep this
        #   authorization and its review state.
        #
        #   @return [String]
        required :loa_document_id, String

        # @!attribute status
        #   Review state of this authorization. `pending` on create or when the Letter of
        #   Authorization is re-uploaded; an admin moves it to `approved` or `rejected`.
        #   Only an `approved` authorization adds the BPO to this DIR's authorized callers
        #   in the branded calling registry.
        #
        #   @return [Symbol, Telnyx::Models::DirRetrieveBpoAuthorizationsResponse::Data::Status]
        required :status, enum: -> { Telnyx::Models::DirRetrieveBpoAuthorizationsResponse::Data::Status }

        # @!attribute rejection_reason
        #   Why the authorization was rejected. `null` unless `status` is `rejected`.
        #
        #   @return [String, nil]
        optional :rejection_reason, String, nil?: true

        response_only do
          # @!attribute record_type
          #   Always `bpo_authorization`.
          #
          #   @return [Symbol, Telnyx::Models::DirRetrieveBpoAuthorizationsResponse::Data::RecordType]
          required :record_type, enum: -> { Telnyx::Models::DirRetrieveBpoAuthorizationsResponse::Data::RecordType }
        end

        # @!method initialize(bpo_enterprise_id:, loa_document_id:, record_type:, status:, rejection_reason: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::DirRetrieveBpoAuthorizationsResponse::Data} for more details.
        #
        #   A single authorization of a BPO (Business Process Outsourcer) account on a DIR.
        #
        #   @param bpo_enterprise_id [String] The authorized BPO account's enterprise id.
        #
        #   @param loa_document_id [String] Id of the signed Letter of Authorization document submitted for this BPO. Send i
        #
        #   @param record_type [Symbol, Telnyx::Models::DirRetrieveBpoAuthorizationsResponse::Data::RecordType] Always `bpo_authorization`.
        #
        #   @param status [Symbol, Telnyx::Models::DirRetrieveBpoAuthorizationsResponse::Data::Status] Review state of this authorization. `pending` on create or when the Letter of Au
        #
        #   @param rejection_reason [String, nil] Why the authorization was rejected. `null` unless `status` is `rejected`.

        # Always `bpo_authorization`.
        #
        # @see Telnyx::Models::DirRetrieveBpoAuthorizationsResponse::Data#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          BPO_AUTHORIZATION = :bpo_authorization

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Review state of this authorization. `pending` on create or when the Letter of
        # Authorization is re-uploaded; an admin moves it to `approved` or `rejected`.
        # Only an `approved` authorization adds the BPO to this DIR's authorized callers
        # in the branded calling registry.
        #
        # @see Telnyx::Models::DirRetrieveBpoAuthorizationsResponse::Data#status
        module Status
          extend Telnyx::Internal::Type::Enum

          PENDING = :pending
          APPROVED = :approved
          REJECTED = :rejected

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
