require "application_system_test_case"

class LibrariesTest < ApplicationSystemTestCase
  setup do
    @library = libraries(:one)
  end

  test "visiting the index" do
    visit libraries_url
    assert_selector "h1", text: "Libraries"
  end

  test "should create library" do
    visit libraries_url
    click_on "New library"

    fill_in "Address", with: @library.address
    fill_in "Latitude", with: @library.latitude
    fill_in "Longitude", with: @library.longitude
    fill_in "Name", with: @library.name
    fill_in "Phone", with: @library.phone
    fill_in "Website", with: @library.website
    click_on "Create Library"

    assert_text "Library was successfully created"
    click_on "Back"
  end

  test "should update Library" do
    visit library_url(@library)
    click_on "Edit this library", match: :first

    fill_in "Address", with: @library.address
    fill_in "Latitude", with: @library.latitude
    fill_in "Longitude", with: @library.longitude
    fill_in "Name", with: @library.name
    fill_in "Phone", with: @library.phone
    fill_in "Website", with: @library.website
    click_on "Update Library"

    assert_text "Library was successfully updated"
    click_on "Back"
  end

  test "should destroy Library" do
    visit library_url(@library)
    click_on "Destroy this library", match: :first

    assert_text "Library was successfully destroyed"
  end
end
