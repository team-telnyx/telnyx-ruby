# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MessagingOptouts#list
    class MessagingOptoutListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::MessagingOptoutListResponse::Data>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::MessagingOptoutListResponse::Data] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::MessagingOptoutListResponse::Meta, nil]
      optional :meta, -> { Telnyx::Models::MessagingOptoutListResponse::Meta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::MessagingOptoutListResponse::Data>]
      #   @param meta [Telnyx::Models::MessagingOptoutListResponse::Meta]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute created_at
        #   The timestamp when the opt-out was created
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute from
        #   Sending address (+E.164 formatted phone number, alphanumeric sender ID, or short
        #   code).
        #
        #   @return [String, nil]
        optional :from, String

        # @!attribute keyword
        #   The keyword that triggered the opt-out.
        #
        #   @return [String, nil]
        optional :keyword, String, nil?: true

        # @!attribute messaging_profile_id
        #   Unique identifier for a messaging profile.
        #
        #   @return [String, nil]
        optional :messaging_profile_id, String, nil?: true

        # @!attribute to
        #   Receiving address (+E.164 formatted phone number or short code).
        #
        #   @return [String, nil]
        optional :to, String

        # @!method initialize(created_at: nil, from: nil, keyword: nil, messaging_profile_id: nil, to: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::MessagingOptoutListResponse::Data} for more details.
        #
        #   @param created_at [Time] The timestamp when the opt-out was created
        #
        #   @param from [String] Sending address (+E.164 formatted phone number, alphanumeric sender ID, or short
        #
        #   @param keyword [String, nil] The keyword that triggered the opt-out.
        #
        #   @param messaging_profile_id [String, nil] Unique identifier for a messaging profile.
        #
        #   @param to [String] Receiving address (+E.164 formatted phone number or short code).
      end

      # @see Telnyx::Models::MessagingOptoutListResponse#meta
      class Meta < Telnyx::Internal::Type::BaseModel
        # @!attribute page_number
        #
        #   @return [Integer]
        required :page_number, Integer

        # @!attribute page_size
        #
        #   @return [Integer]
        required :page_size, Integer

        # @!attribute total_pages
        #
        #   @return [Integer]
        required :total_pages, Integer

        # @!attribute total_results
        #
        #   @return [Integer]
        required :total_results, Integer

        # @!method initialize(page_number:, page_size:, total_pages:, total_results:)
        #   @param page_number [Integer]
        #   @param page_size [Integer]
        #   @param total_pages [Integer]
        #   @param total_results [Integer]
      end
    end
  end
end
