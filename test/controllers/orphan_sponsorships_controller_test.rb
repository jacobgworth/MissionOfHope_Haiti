require 'test_helper'

class OrphanSponsorshipsControllerTest < ActionController::TestCase
  setup do
    @orphan_sponsorship = orphan_sponsorships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orphan_sponsorships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create orphan_sponsorship" do
    assert_difference('OrphanSponsorship.count') do
      post :create, orphan_sponsorship: { age: @orphan_sponsorship.age, bio: @orphan_sponsorship.bio, first_name: @orphan_sponsorship.first_name, image: @orphan_sponsorship.image, slug: @orphan_sponsorship.slug, sponsorship_number: @orphan_sponsorship.sponsorship_number }
    end

    assert_redirected_to orphan_sponsorship_path(assigns(:orphan_sponsorship))
  end

  test "should show orphan_sponsorship" do
    get :show, id: @orphan_sponsorship
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @orphan_sponsorship
    assert_response :success
  end

  test "should update orphan_sponsorship" do
    patch :update, id: @orphan_sponsorship, orphan_sponsorship: { age: @orphan_sponsorship.age, bio: @orphan_sponsorship.bio, first_name: @orphan_sponsorship.first_name, image: @orphan_sponsorship.image, slug: @orphan_sponsorship.slug, sponsorship_number: @orphan_sponsorship.sponsorship_number }
    assert_redirected_to orphan_sponsorship_path(assigns(:orphan_sponsorship))
  end

  test "should destroy orphan_sponsorship" do
    assert_difference('OrphanSponsorship.count', -1) do
      delete :destroy, id: @orphan_sponsorship
    end

    assert_redirected_to orphan_sponsorships_path
  end
end
