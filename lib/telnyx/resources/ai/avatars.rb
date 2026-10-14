# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      # Create and manage real-time AI avatars
      class Avatars
        # Uploads an image, validates its file type, size, safe decoding, and resolution,
        # stores it in Telnyx-managed private storage, and creates an avatar owned by the
        # authenticated organization. Creating an avatar does not update an AI Assistant;
        # use the returned ID separately wherever the avatar is consumed. The avatar image
        # is stored independently from the rendering model and background, which are
        # selected where the avatar is consumed. Supported image types are JPEG, PNG, and
        # WebP. Images may be up to 10 MiB, must be between 256 and 8192 pixels on each
        # side, and may contain at most 40 megapixels. Each organization may have up to 20
        # custom avatars. For best results, use a 16:9 landscape image, preferably 1920 by
        # 1080 pixels and at least 1280 by 720 pixels. Show one centered, front-facing
        # person from the shoulders up, keep the full head and hair visible with space
        # around it, and use a sharp, evenly lit image with unobstructed eyes and mouth.
        # Use a transparent PNG or WebP when the avatar will be combined with a selectable
        # background. These composition recommendations are not enforced in the first
        # release; the first release does not validate the number of faces, pose, or image
        # content.
        #
        # @overload create(image_file:, name:, request_options: {})
        #
        # @param image_file [Pathname, StringIO, IO, String, Telnyx::FilePart] JPEG, PNG, or WebP image file. The maximum file size is 10 MiB.
        #
        # @param name [String] Customer-facing name of the custom avatar.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::AvatarResponse]
        #
        # @see Telnyx::Models::AI::AvatarCreateParams
        def create(params)
          parsed, options = Telnyx::AI::AvatarCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "ai/avatars",
            headers: {"content-type" => "multipart/form-data"},
            body: parsed,
            model: Telnyx::AI::AvatarResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::AI::AvatarRetrieveParams} for more details.
        #
        # Returns a Telnyx stock avatar or a custom avatar owned by the authenticated
        # organization. A custom avatar belonging to another organization is returned as
        # not found.
        #
        # @overload retrieve(avatar_id, request_options: {})
        #
        # @param avatar_id [Symbol, String, Telnyx::Models::AI::AvatarID] Stable identifier of a Telnyx stock avatar or an organization-owned custom avata
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::AvatarResponse]
        #
        # @see Telnyx::Models::AI::AvatarRetrieveParams
        def retrieve(avatar_id, params = {})
          @client.request(
            method: :get,
            path: ["ai/avatars/%1$s", avatar_id],
            model: Telnyx::AI::AvatarResponse,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::AI::AvatarUpdateParams} for more details.
        #
        # Updates the customer-facing name of a custom avatar owned by the authenticated
        # organization. Stock avatars cannot be modified. To replace the image, create a
        # new custom avatar so existing references keep their original content.
        #
        # @overload update(avatar_id, name:, request_options: {})
        #
        # @param avatar_id [Symbol, String, Telnyx::Models::AI::AvatarID] Stable identifier of a Telnyx stock avatar or an organization-owned custom avata
        #
        # @param name [String] New customer-facing name of the custom avatar.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::AvatarResponse]
        #
        # @see Telnyx::Models::AI::AvatarUpdateParams
        def update(avatar_id, params)
          parsed, options = Telnyx::AI::AvatarUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["ai/avatars/%1$s", avatar_id],
            body: parsed,
            model: Telnyx::AI::AvatarResponse,
            options: options
          )
        end

        # Returns a paginated list of the Telnyx stock avatars and custom avatars
        # available to the authenticated organization. Custom avatars owned by other
        # organizations are never returned. The `image_url` value is suitable for
        # displaying a thumbnail and may be refreshed by listing or retrieving the avatar
        # again.
        #
        # @overload list(filter_avatar_type: nil, filter_id: nil, filter_name: nil, page_number: nil, page_size: nil, request_options: {})
        #
        # @param filter_avatar_type [Symbol, Telnyx::Models::AI::AvatarType] Return only stock or custom avatars.
        #
        # @param filter_id [Symbol, String, Telnyx::Models::AI::AvatarID] Return the avatar with this exact ID.
        #
        # @param filter_name [String] Return avatars whose names contain this value, using case-insensitive matching.
        #
        # @param page_number [Integer] Page number to retrieve, starting at 1.
        #
        # @param page_size [Integer] Number of avatars to return per page.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::AI::Avatar>]
        #
        # @see Telnyx::Models::AI::AvatarListParams
        def list(params = {})
          parsed, options = Telnyx::AI::AvatarListParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "ai/avatars",
            query: query.transform_keys(
              filter_avatar_type: "filter[avatar_type]",
              filter_id: "filter[id]",
              filter_name: "filter[name]",
              page_number: "page[number]",
              page_size: "page[size]"
            ),
            page: Telnyx::Internal::DefaultFlatPagination,
            model: Telnyx::AI::Avatar,
            options: options
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
