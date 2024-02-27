# frozen_string_literal: true

module Telnyx
  class ShortCode < APIResource
    include APIOperations::Save
    extend APIOperations::List

    OBJECT_NAME = "short_code".freeze
  end
end
