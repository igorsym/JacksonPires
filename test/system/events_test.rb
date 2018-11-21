require "application_system_test_case"

class EventsTest < ApplicationSystemTestCase
  setup do
    @event = events(:one)
  end

  test "visiting the index" do
    visit events_url
    assert_selector "h1", text: "Events"
  end

  test "creating a Event" do
    visit events_url
    click_on "New Event"

    fill_in "All Can Invite", with: @event.all_can_invite
    fill_in "Description", with: @event.description
    fill_in "End Time", with: @event.end_time
    fill_in "Event Date", with: @event.event_date
    fill_in "Frequency", with: @event.frequency
    fill_in "Name", with: @event.name
    fill_in "Place", with: @event.place
    fill_in "Sport", with: @event.sport
    fill_in "Start Time", with: @event.start_time
    click_on "Create Event"

    assert_text "Event was successfully created"
    click_on "Back"
  end

  test "updating a Event" do
    visit events_url
    click_on "Edit", match: :first

    fill_in "All Can Invite", with: @event.all_can_invite
    fill_in "Description", with: @event.description
    fill_in "End Time", with: @event.end_time
    fill_in "Event Date", with: @event.event_date
    fill_in "Frequency", with: @event.frequency
    fill_in "Name", with: @event.name
    fill_in "Place", with: @event.place
    fill_in "Sport", with: @event.sport
    fill_in "Start Time", with: @event.start_time
    click_on "Update Event"

    assert_text "Event was successfully updated"
    click_on "Back"
  end

  test "destroying a Event" do
    visit events_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Event was successfully destroyed"
  end
end
