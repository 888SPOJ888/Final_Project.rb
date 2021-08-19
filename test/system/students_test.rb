require "application_system_test_case"

class StudentsTest < ApplicationSystemTestCase
  setup do
    @student = students(:one)
  end

  test "visiting the index" do
    visit students_url
    assert_selector "h1", text: "Students"
  end

  test "creating a Student" do
    visit students_url
    click_on "New Student"

    fill_in "Company", with: @student.company
    fill_in "Course", with: @student.course
    fill_in "Email", with: @student.email
    fill_in "Level", with: @student.level
    fill_in "Name", with: @student.name
    fill_in "Telephone number", with: @student.telephone_number
    click_on "Create Student"

    assert_text "Student was successfully created"
    click_on "Back"
  end

  test "updating a Student" do
    visit students_url
    click_on "Edit", match: :first

    fill_in "Company", with: @student.company
    fill_in "Course", with: @student.course
    fill_in "Email", with: @student.email
    fill_in "Level", with: @student.level
    fill_in "Name", with: @student.name
    fill_in "Telephone number", with: @student.telephone_number
    click_on "Update Student"

    assert_text "Student was successfully updated"
    click_on "Back"
  end

  test "destroying a Student" do
    visit students_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Student was successfully destroyed"
  end
end
