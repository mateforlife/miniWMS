require 'test_helper'

class PalletAssignmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pallet_assignment = pallet_assignments(:one)
  end

  test "should get index" do
    get pallet_assignments_url
    assert_response :success
  end

  test "should get new" do
    get new_pallet_assignment_url
    assert_response :success
  end

  test "should create pallet_assignment" do
    assert_difference('PalletAssignment.count') do
      post pallet_assignments_url, params: { pallet_assignment: { location_id: @pallet_assignment.location_id, pallet_id: @pallet_assignment.pallet_id } }
    end

    assert_redirected_to pallet_assignment_url(PalletAssignment.last)
  end

  test "should show pallet_assignment" do
    get pallet_assignment_url(@pallet_assignment)
    assert_response :success
  end

  test "should get edit" do
    get edit_pallet_assignment_url(@pallet_assignment)
    assert_response :success
  end

  test "should update pallet_assignment" do
    patch pallet_assignment_url(@pallet_assignment), params: { pallet_assignment: { location_id: @pallet_assignment.location_id, pallet_id: @pallet_assignment.pallet_id } }
    assert_redirected_to pallet_assignment_url(@pallet_assignment)
  end

  test "should destroy pallet_assignment" do
    assert_difference('PalletAssignment.count', -1) do
      delete pallet_assignment_url(@pallet_assignment)
    end

    assert_redirected_to pallet_assignments_url
  end
end
