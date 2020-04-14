require "application_system_test_case"

class ProjectsTest < ApplicationSystemTestCase
  setup do
    @project = projects(:one)
  end

  test "visiting the index" do
    visit projects_url
    assert_selector "h1", text: "Projects"
  end

  test "creating a Project" do
    visit projects_url
    click_on "New Project"

    fill_in "Body", with: @project.body
    fill_in "Client", with: @project.client
    fill_in "Enddate", with: @project.enddate_id
    fill_in "Guid", with: @project.guid
    fill_in "Psubtitle", with: @project.psubtitle
    fill_in "Ptitle", with: @project.ptitle
    fill_in "Slug", with: @project.slug
    fill_in "Startdate", with: @project.startdate_id
    click_on "Create Project"

    assert_text "Project was successfully created"
    click_on "Back"
  end

  test "updating a Project" do
    visit projects_url
    click_on "Edit", match: :first

    fill_in "Body", with: @project.body
    fill_in "Client", with: @project.client
    fill_in "Enddate", with: @project.enddate_id
    fill_in "Guid", with: @project.guid
    fill_in "Psubtitle", with: @project.psubtitle
    fill_in "Ptitle", with: @project.ptitle
    fill_in "Slug", with: @project.slug
    fill_in "Startdate", with: @project.startdate_id
    click_on "Update Project"

    assert_text "Project was successfully updated"
    click_on "Back"
  end

  test "destroying a Project" do
    visit projects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Project was successfully destroyed"
  end
end
