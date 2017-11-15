require 'test_helper'

class MessagesControllerTest < ActionController::TestCase
  setup do
    @message = messages(:one)
  end

  test "should get index" do
    assert_nil assigns(:messages)
  end

  test "should create message" do
    assert_difference('Message.count') do
      post :create, message: { text: @message.text }
    end

    assert_redirected_to message_path(assigns(:message))
  end

  test "should show message" do
    assert_response :success
  end

  test "should get edit" do
    assert true
  end

  test "should update message" do
    patch :update, id: @message, message: { text: @message.text }
    assert_redirected_to message_path(assigns(:message))
  end

  test "should destroy message" do
    assert_difference('Message.count', -1) do
      delete :destroy, id: @message
    end

    assert_redirected_to messages_path
  end
end
