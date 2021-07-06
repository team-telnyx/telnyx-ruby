# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class ListObjectTest < Test::Unit::TestCase
    should "provide .empty_list" do
      list = Telnyx::ListObject.empty_list
      assert list.empty?
    end

    should "provide #count via enumerable" do
      list = Telnyx::ListObject.construct_from(data: [{ record_type: "messaging_profile" }])
      assert_equal 1, list.count
    end

    should "provide #each" do
      arr = [
        { id: 1 },
        { id: 2 },
        { id: 3 },
      ]
      expected = Util.convert_to_telnyx_object(arr, {})
      list = Telnyx::ListObject.construct_from(data: arr)
      assert_equal expected, list.each.to_a
    end

    should "provide #auto_paging_each" do
      arr = [
        { id: 1 },
        { id: 2 },
        { id: 3 },
      ]
      expected = Util.convert_to_telnyx_object(arr, {})

      list = TestListObject.construct_from(data: [{ id: 1 }],
                                           meta: { page_number: 1, total_pages: 4 },
                                           url: "/things")
      stub_request(:get, "#{Telnyx.api_base}/things")
        .with(query: { page: { number: 2, size: 20 } })
        .to_return(body: JSON.generate(data: [{ id: 2 }], meta: { page_number: 2, total_pages: 4 }))
      stub_request(:get, "#{Telnyx.api_base}/things")
        .with(query: { page: { number: 3, size: 20 } })
        .to_return(body: JSON.generate(data: [{ id: 3 }], meta: { page_number: 3, total_pages: 4 }))
      stub_request(:get, "#{Telnyx.api_base}/things")
        .with(query: { page: { number: 4, size: 20 } })
        .to_return(body: JSON.generate(data: [], meta: { page_number: 4, total_pages: 4 }))

      assert_equal expected, list.auto_paging_each.to_a
    end

    should "provide #auto_paging_each that responds to a block" do
      arr = [
        { id: 1 },
        { id: 2 },
        { id: 3 },
      ]
      expected = Util.convert_to_telnyx_object(arr, {})

      list = TestListObject.construct_from(data: [{ id: 1 }],
                                           meta: { page_number: 1, total_pages: 4 },
                                           url: "/things")
      stub_request(:get, "#{Telnyx.api_base}/things")
        .with(query: { page: { number: 2, size: 20 } })
        .to_return(body: JSON.generate(data: [{ id: 2 }], meta: { page_number: 2, total_pages: 4 }))
      stub_request(:get, "#{Telnyx.api_base}/things")
        .with(query: { page: { number: 3, size: 20 } })
        .to_return(body: JSON.generate(data: [{ id: 3 }], meta: { page_number: 3, total_pages: 4 }))
      stub_request(:get, "#{Telnyx.api_base}/things")
        .with(query: { page: { number: 4, size: 20 } })
        .to_return(body: JSON.generate(data: [], meta: { page_number: 4, total_pages: 4 }))

      actual = []
      list.auto_paging_each do |obj|
        actual << obj
      end

      assert_equal expected, actual
    end

    should "provide #empty?" do
      list = Telnyx::ListObject.construct_from(data: [])
      assert list.empty?
      list = Telnyx::ListObject.construct_from(data: [{}])
      refute list.empty?
    end

    #
    # page_size
    #

    should "fetch the current page size via #page_size" do
      list = TestListObject.construct_from(
        data: [
          { id: 1 },
          { id: 2 },
          { id: 3 },
        ],
        meta: {
          page_size: 5,
          total_results: 3,
          total_pages: 1,
          page_number: 1,
        },
        url: "/things"
      )

      assert_equal(list.page_size, 5)
    end

    #
    # page_number
    #

    should "fetch the current page number via #page_number" do
      list = TestListObject.construct_from(
        data: [
          { id: 1 },
          { id: 2 },
          { id: 3 },
        ],
        meta: {
          page_size: 5,
          total_results: 3,
          total_pages: 1,
          page_number: 1,
        },
        url: "/things"
      )

      assert_equal(list.page_number, 1)
    end

    #
    # next_page
    #

    should "fetch a next page through #next_page" do
      list = TestListObject.construct_from(data: [{ id: 1 }],
                                           meta: { page_number: 1, total_pages: 2 },
                                           url: "/things")
      stub_request(:get, "#{Telnyx.api_base}/things")
        .with(query: { page: { number: 2, size: 20 } })
        .to_return(body: JSON.generate(data: [{ id: 2 }]))
      next_list = list.next_page
      refute next_list.empty?
    end

    should "fetch a next page through #next_page and respect filters" do
      list = TestListObject.construct_from(data: [{ id: 1 }],
                                           meta: { page_number: 1, total_pages: 2 },
                                           url: "/things")
      list.filters = { enabled: true }
      stub_request(:get, "#{Telnyx.api_base}/things")
        .with(query: { page: { number: 2, size: 20 }, enabled: true })
        .to_return(body: JSON.generate(data: [{ id: 2 }], meta: { page_number: 2, total_pages: 2 }))
      next_list = list.next_page
      assert_equal({ enabled: true, page: { number: 2, size: 20 } }, next_list.filters)
    end

    should "fetch an empty page through #next_page" do
      list = TestListObject.construct_from(data: [{ id: 1 }],
                                           meta: { page_number: 1, total_pages: 1 },
                                           url: "/things")
      next_list = list.next_page
      assert_equal Telnyx::ListObject.empty_list, next_list
    end

    #
    # previous_page
    #

    should "fetch a next page through #previous_page" do
      list = TestListObject.construct_from(data: [{ id: 2 }],
                                           meta: { page_number: 2, total_pages: 3 },
                                           url: "/things")
      stub_request(:get, "#{Telnyx.api_base}/things")
        .with(query: { page: { number: 1, size: 20 } })
        .to_return(body: JSON.generate(data: [{ id: 1 }], meta: { page_number: 3, total_pages: 3 }))
      next_list = list.previous_page
      refute next_list.empty?
    end

    should "fetch a next page through #previous_page and respect filters" do
      list = TestListObject.construct_from(data: [{ id: 2 }],
                                           meta: { page_number: 2, total_pages: 2 },
                                           url: "/things")
      list.filters = { enabled: true }
      stub_get = stub_request(:get, "#{Telnyx.api_base}/things")
                 .with(query: { enabled: true, page: { number: 1, size: 20 } })
                 .to_return(body: JSON.generate(data: [{ id: 1 }], meta: { page_number: 1, total_pages: 2 }))

      next_list = list.previous_page
      assert_requested(stub_get)
      assert_equal({ enabled: true, page: { number: 1, size: 20 } }, next_list.filters)
    end
  end
end

# A helper class with a URL that allows us to try out pagination.
class TestListObject < Telnyx::ListObject
end
