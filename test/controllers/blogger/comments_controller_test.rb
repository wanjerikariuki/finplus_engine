require "test_helper"

module Blogger
  class CommentsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get index" do
      get comments_index_url
      assert_response :success
    end
  end
end
