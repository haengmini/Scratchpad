# Person Page Test Plan

## Application Overview

This test plan covers comprehensive testing scenarios for the Person page (http://localhost:3000/person). The Person page is expected to provide functionality for managing person records including creating, reading, updating, and deleting person information. The test plan includes happy path scenarios, edge cases, validation testing, and error handling to ensure complete coverage of all features.

## Test Scenarios

### 1. Person List Display

**Seed:** `tests/seed.spec.ts`

#### 1.1. Display empty person list

**File:** `tests/person-list-display/empty-list.spec.ts`

**Steps:**
  1. Navigate to the person page at http://localhost:3000/person
    - expect: The page loads successfully without errors
    - expect: The page title or heading indicates this is the Person management page
    - expect: An appropriate message is displayed indicating no persons exist (e.g., 'No persons found' or 'Empty list')

#### 1.2. Display person list with data

**File:** `tests/person-list-display/list-with-data.spec.ts`

**Steps:**
  1. Navigate to the person page
    - expect: The page loads successfully
  2. Verify the presence of a person list/table/grid
    - expect: A list, table, or grid of persons is visible
    - expect: Person data is displayed with appropriate columns (e.g., Name, Age, Email, Address, Phone)
    - expect: Each person record has action buttons (Edit, Delete, View)

#### 1.3. Verify table column headers

**File:** `tests/person-list-display/table-headers.spec.ts`

**Steps:**
  1. Navigate to the person page and locate the person table
    - expect: Table headers are displayed correctly
    - expect: Column headers include fields like: ID, Name, Email, Phone, Age, Address, Actions
    - expect: Headers are properly aligned with their respective columns

#### 1.4. Test table sorting functionality

**File:** `tests/person-list-display/table-sorting.spec.ts`

**Steps:**
  1. Click on the Name column header to sort by name ascending
    - expect: The table is sorted by name in ascending order (A-Z)
    - expect: A sort indicator (arrow icon) appears next to the Name header
  2. Click on the Name column header again to sort descending
    - expect: The table is sorted by name in descending order (Z-A)
    - expect: The sort indicator changes direction
  3. Click on other sortable columns (Age, Email) and verify sorting
    - expect: Each column sorts correctly according to its data type
    - expect: Only one column shows the active sort indicator at a time

#### 1.5. Test pagination functionality

**File:** `tests/person-list-display/pagination.spec.ts`

**Steps:**
  1. Navigate to the person page with sufficient data to trigger pagination
    - expect: Pagination controls are visible at the bottom of the table
    - expect: Current page number is highlighted
    - expect: Total number of pages or records is displayed
  2. Click on the next page button
    - expect: The table displays the next set of person records
    - expect: Page number indicator updates correctly
    - expect: Previous page button becomes enabled
  3. Click on a specific page number
    - expect: The table displays the correct page of records
    - expect: The selected page number is highlighted
  4. Click on the last page button
    - expect: The table displays the last page of records
    - expect: Next page button becomes disabled

#### 1.6. Test search/filter functionality

**File:** `tests/person-list-display/search-filter.spec.ts`

**Steps:**
  1. Locate the search input field on the person page
    - expect: A search input field is visible
    - expect: Placeholder text provides guidance (e.g., 'Search persons...')
  2. Enter a valid person name in the search field
    - expect: The table filters to show only matching persons
    - expect: Non-matching records are hidden
    - expect: Search results update in real-time or after pressing Enter
  3. Enter a search term that matches no records
    - expect: The table displays an appropriate 'No results found' message
    - expect: The table is empty or shows zero records
  4. Clear the search field
    - expect: The table returns to displaying all person records
    - expect: All filters are removed

### 2. Create Person Functionality

**Seed:** `tests/seed.spec.ts`

#### 2.1. Open create person form

**File:** `tests/create-person/open-form.spec.ts`

**Steps:**
  1. Navigate to the person page
    - expect: The page loads successfully
  2. Locate and click the 'Add Person' or 'Create New' button
    - expect: A form appears (modal, drawer, or new page) for creating a new person
    - expect: The form title indicates this is for creating a new person (e.g., 'Add New Person')
    - expect: All required input fields are present and empty

#### 2.2. Create person with valid data

**File:** `tests/create-person/valid-data.spec.ts`

**Steps:**
  1. Click the 'Add Person' button to open the create form
    - expect: The create person form is displayed
  2. Fill in all required fields with valid data: Name: 'John Doe', Email: 'john.doe@example.com', Phone: '123-456-7890', Age: '30', Address: '123 Main St'
    - expect: All input fields accept the data without errors
    - expect: No validation error messages appear
  3. Click the 'Submit' or 'Save' button
    - expect: A success message is displayed (e.g., 'Person created successfully')
    - expect: The form closes and returns to the person list
    - expect: The newly created person appears in the list
    - expect: The new person's data matches what was entered

#### 2.3. Create person with minimum required fields

**File:** `tests/create-person/minimum-fields.spec.ts`

**Steps:**
  1. Open the create person form
    - expect: The form is displayed
  2. Fill in only the required fields (typically Name and Email)
    - expect: Required fields are marked with an asterisk or 'Required' label
  3. Submit the form with only required fields filled
    - expect: The person is created successfully
    - expect: Optional fields are saved as empty or with default values
    - expect: The new person appears in the list with the provided data

#### 2.4. Validate required field - Name

**File:** `tests/create-person/validate-name-required.spec.ts`

**Steps:**
  1. Open the create person form
    - expect: The form is displayed
  2. Leave the Name field empty and fill other fields
    - expect: Name field shows as required
  3. Attempt to submit the form
    - expect: Form submission is prevented
    - expect: A validation error message appears near the Name field (e.g., 'Name is required')
    - expect: The Name field is highlighted or marked with an error indicator
    - expect: The form remains open

#### 2.5. Validate email format

**File:** `tests/create-person/validate-email-format.spec.ts`

**Steps:**
  1. Open the create person form
    - expect: The form is displayed
  2. Enter an invalid email format in the Email field (e.g., 'notanemail', 'test@', '@example.com')
    - expect: Email field may show real-time validation error
  3. Attempt to submit the form with invalid email
    - expect: Form submission is prevented
    - expect: A validation error message appears (e.g., 'Please enter a valid email address')
    - expect: The Email field is highlighted with an error indicator
  4. Correct the email to a valid format (e.g., 'test@example.com')
    - expect: The validation error disappears
    - expect: The form can now be submitted successfully

#### 2.6. Validate phone number format

**File:** `tests/create-person/validate-phone-format.spec.ts`

**Steps:**
  1. Open the create person form
    - expect: The form is displayed
  2. Enter an invalid phone number (e.g., 'abc', '123')
    - expect: Phone field may show format hint
  3. Attempt to submit with invalid phone
    - expect: If phone validation exists, an error message appears (e.g., 'Please enter a valid phone number')
    - expect: The form indicates the phone format issue

#### 2.7. Validate age boundaries

**File:** `tests/create-person/validate-age-boundaries.spec.ts`

**Steps:**
  1. Open the create person form
    - expect: The form is displayed
  2. Enter a negative age value (e.g., '-5')
    - expect: Age validation error appears or field prevents negative input
  3. Enter an age of 0
    - expect: System either accepts 0 or shows validation error based on business rules
  4. Enter an extremely large age (e.g., '999')
    - expect: System either accepts within reasonable range or shows validation error
  5. Enter non-numeric characters in age field (e.g., 'abc')
    - expect: Field either prevents non-numeric input or shows validation error
    - expect: Error message indicates age must be a number

#### 2.8. Test special characters in text fields

**File:** `tests/create-person/special-characters.spec.ts`

**Steps:**
  1. Open the create person form
    - expect: The form is displayed
  2. Enter name with special characters (e.g., 'John O'Brien', 'José García', 'Anne-Marie')
    - expect: Special characters are accepted in the name field
    - expect: No validation errors appear for valid special characters
  3. Enter address with special characters (e.g., '#123 Main St., Apt. 4B')
    - expect: Address field accepts special characters commonly used in addresses
    - expect: The form can be submitted successfully
  4. Attempt to enter potentially dangerous characters (e.g., '<script>', SQL injection strings)
    - expect: System sanitizes or rejects dangerous input
    - expect: No script execution occurs
    - expect: Appropriate validation message appears if rejected

#### 2.9. Test maximum character length limits

**File:** `tests/create-person/max-length.spec.ts`

**Steps:**
  1. Open the create person form
    - expect: The form is displayed
  2. Enter extremely long text in the Name field (e.g., 500+ characters)
    - expect: Field either has a character limit that prevents excessive input
    - expect: Or displays a validation error when attempting to submit
    - expect: Character count indicator may be shown if implemented
  3. Test other text fields (Email, Address) with excessive length
    - expect: Each field has appropriate length restrictions
    - expect: Clear error messages indicate the maximum allowed length

#### 2.10. Cancel create person operation

**File:** `tests/create-person/cancel-operation.spec.ts`

**Steps:**
  1. Open the create person form
    - expect: The form is displayed
  2. Fill in some fields with data
    - expect: Data is entered successfully
  3. Click the 'Cancel' or 'Close' button
    - expect: If data was entered, a confirmation dialog may appear asking to confirm cancellation
    - expect: The form closes without saving data
    - expect: User returns to the person list page
    - expect: No new person is added to the list

#### 2.11. Test duplicate person creation

**File:** `tests/create-person/duplicate-person.spec.ts`

**Steps:**
  1. Create a person with specific details (Name: 'Test User', Email: 'test@example.com')
    - expect: Person is created successfully
  2. Open the create form again and enter the exact same details
    - expect: Form accepts the data entry
  3. Attempt to submit the duplicate person
    - expect: System either prevents duplicate creation with an error message (e.g., 'Person with this email already exists')
    - expect: Or allows duplicate if business rules permit
    - expect: Clear feedback is provided to the user about the outcome

### 3. View Person Details

**Seed:** `tests/seed.spec.ts`

#### 3.1. View person details from list

**File:** `tests/view-person/view-from-list.spec.ts`

**Steps:**
  1. Navigate to the person list page
    - expect: Person list is displayed with at least one person
  2. Click on a person row or 'View' button for a specific person
    - expect: Person details page or modal opens
    - expect: All person information is displayed: Name, Email, Phone, Age, Address
    - expect: Data displayed matches the person selected
    - expect: Fields are in read-only mode or clearly formatted for viewing

#### 3.2. Verify all fields in detail view

**File:** `tests/view-person/verify-all-fields.spec.ts`

**Steps:**
  1. Open the details view for a person with complete data
    - expect: All data fields are present and correctly labeled
    - expect: Field labels match the data (Name, Email, Phone, Age, Address)
    - expect: Data formatting is appropriate (e.g., phone numbers formatted, email is a link)
  2. Verify optional fields that are empty
    - expect: Empty fields show appropriate placeholder (e.g., 'N/A', '-', or are hidden)
    - expect: No undefined or null values are displayed as text

#### 3.3. Navigate back from detail view

**File:** `tests/view-person/navigate-back.spec.ts`

**Steps:**
  1. Open person details view
    - expect: Details view is displayed
  2. Click the 'Back' button or close button
    - expect: User returns to the person list page
    - expect: List is in the same state as before (same page, same filters)
    - expect: The selected person is still visible in the list

### 4. Update Person Functionality

**Seed:** `tests/seed.spec.ts`

#### 4.1. Open edit person form

**File:** `tests/update-person/open-edit-form.spec.ts`

**Steps:**
  1. Navigate to the person list page
    - expect: Person list is displayed
  2. Click the 'Edit' button for a specific person
    - expect: Edit form opens (modal, drawer, or new page)
    - expect: Form title indicates this is an edit operation (e.g., 'Edit Person')
    - expect: All fields are pre-populated with the current person data
    - expect: Fields are editable

#### 4.2. Update person with valid changes

**File:** `tests/update-person/valid-update.spec.ts`

**Steps:**
  1. Open the edit form for a person
    - expect: Form is displayed with existing data
  2. Modify one or more fields (e.g., change Phone from '123-456-7890' to '098-765-4321')
    - expect: Fields accept the new data
    - expect: Modified fields may be highlighted or marked as changed
  3. Click the 'Save' or 'Update' button
    - expect: A success message is displayed (e.g., 'Person updated successfully')
    - expect: The form closes
    - expect: The person list is updated with the new data
    - expect: The updated person shows the modified information

#### 4.3. Update person name only

**File:** `tests/update-person/update-name-only.spec.ts`

**Steps:**
  1. Open edit form for a person
    - expect: Form displays with current data
  2. Change only the Name field (e.g., from 'John Doe' to 'John Smith')
    - expect: Name field accepts the change
  3. Save the changes
    - expect: Update is successful
    - expect: Only the name is changed in the list
    - expect: All other fields remain unchanged

#### 4.4. Validate required fields during update

**File:** `tests/update-person/validate-required-update.spec.ts`

**Steps:**
  1. Open edit form for a person
    - expect: Form displays with current data
  2. Clear a required field (e.g., delete the Name)
    - expect: Field is now empty
  3. Attempt to save the form
    - expect: Validation error appears for the required field
    - expect: Form submission is prevented
    - expect: Error message indicates the field is required
    - expect: The form remains open for correction

#### 4.5. Update with invalid email format

**File:** `tests/update-person/invalid-email-update.spec.ts`

**Steps:**
  1. Open edit form for a person
    - expect: Form displays with current data
  2. Change the email to an invalid format (e.g., 'invalidemail')
    - expect: Field accepts the input initially
  3. Attempt to save
    - expect: Validation error appears for invalid email format
    - expect: Update is prevented
    - expect: User can correct the email and retry

#### 4.6. Cancel update operation

**File:** `tests/update-person/cancel-update.spec.ts`

**Steps:**
  1. Open edit form for a person
    - expect: Form displays with current data
  2. Make changes to one or more fields
    - expect: Changes are reflected in the form
  3. Click 'Cancel' button
    - expect: A confirmation dialog may appear warning about unsaved changes
    - expect: Upon confirming cancel, the form closes
    - expect: No changes are saved
    - expect: The person data in the list remains unchanged

#### 4.7. Update all fields at once

**File:** `tests/update-person/update-all-fields.spec.ts`

**Steps:**
  1. Open edit form for a person
    - expect: Form displays with current data
  2. Modify all editable fields: Name, Email, Phone, Age, Address
    - expect: All fields accept the new data
  3. Save the changes
    - expect: Update is successful
    - expect: All fields are updated in the person record
    - expect: The list displays all updated information correctly

### 5. Delete Person Functionality

**Seed:** `tests/seed.spec.ts`

#### 5.1. Delete person with confirmation

**File:** `tests/delete-person/delete-with-confirmation.spec.ts`

**Steps:**
  1. Navigate to the person list page
    - expect: Person list is displayed with existing persons
  2. Click the 'Delete' button for a specific person
    - expect: A confirmation dialog appears
    - expect: Dialog message asks for confirmation (e.g., 'Are you sure you want to delete this person?')
    - expect: Dialog shows person details or name to confirm the correct person
    - expect: Dialog has 'Confirm' and 'Cancel' buttons
  3. Click 'Confirm' or 'Yes' in the confirmation dialog
    - expect: A success message is displayed (e.g., 'Person deleted successfully')
    - expect: The person is removed from the list
    - expect: The list updates immediately without page refresh
    - expect: Remaining persons are still displayed correctly

#### 5.2. Cancel delete operation

**File:** `tests/delete-person/cancel-delete.spec.ts`

**Steps:**
  1. Navigate to the person list page
    - expect: Person list is displayed
  2. Click the 'Delete' button for a person
    - expect: Confirmation dialog appears
  3. Click 'Cancel' or 'No' in the confirmation dialog
    - expect: The dialog closes
    - expect: No person is deleted
    - expect: The person remains in the list unchanged
    - expect: User returns to the normal list view

#### 5.3. Delete last person in list

**File:** `tests/delete-person/delete-last-person.spec.ts`

**Steps:**
  1. Ensure only one person exists in the list
    - expect: List displays exactly one person
  2. Delete the last person
    - expect: Confirmation dialog appears
  3. Confirm the deletion
    - expect: Person is deleted successfully
    - expect: List shows empty state message (e.g., 'No persons found')
    - expect: Page remains functional with option to add new person

#### 5.4. Delete multiple persons sequentially

**File:** `tests/delete-person/delete-multiple.spec.ts`

**Steps:**
  1. Navigate to person list with multiple persons
    - expect: Multiple persons are displayed
  2. Delete the first person and confirm
    - expect: First person is deleted
    - expect: List updates showing remaining persons
  3. Immediately delete another person and confirm
    - expect: Second person is deleted successfully
    - expect: List continues to function correctly
    - expect: No errors occur from consecutive deletions

### 6. UI/UX and Responsiveness

**Seed:** `tests/seed.spec.ts`

#### 6.1. Test responsive design - Mobile view

**File:** `tests/ui-ux/mobile-responsive.spec.ts`

**Steps:**
  1. Set browser viewport to mobile size (e.g., 375x667)
    - expect: Page layout adjusts for mobile screen size
    - expect: All buttons and interactive elements are accessible
    - expect: Text is readable without horizontal scrolling
    - expect: Table may convert to card view or responsive format
  2. Test all major functions (view, create, edit, delete) on mobile viewport
    - expect: All functions remain accessible and usable
    - expect: Forms and dialogs fit within mobile screen
    - expect: Touch targets are appropriately sized

#### 6.2. Test responsive design - Tablet view

**File:** `tests/ui-ux/tablet-responsive.spec.ts`

**Steps:**
  1. Set browser viewport to tablet size (e.g., 768x1024)
    - expect: Page layout optimizes for tablet screen size
    - expect: Navigation and controls are easily accessible
    - expect: Content utilizes available space effectively

#### 6.3. Verify loading states

**File:** `tests/ui-ux/loading-states.spec.ts`

**Steps:**
  1. Navigate to the person page (with network throttling if possible)
    - expect: A loading indicator appears while data is being fetched
    - expect: Loading message or spinner is displayed
    - expect: Page doesn't appear broken during loading
  2. Submit a create or update form
    - expect: Submit button shows loading state (spinner, disabled state, or changed text)
    - expect: User cannot double-submit the form
    - expect: Loading state clears when operation completes

#### 6.4. Test error messages display

**File:** `tests/ui-ux/error-messages.spec.ts`

**Steps:**
  1. Trigger various validation errors (empty required fields, invalid formats)
    - expect: Error messages are clearly visible
    - expect: Messages are displayed near the relevant field
    - expect: Error text is specific and helpful
    - expect: Errors use appropriate color coding (typically red)
  2. Correct the errors
    - expect: Error messages disappear when fields are corrected
    - expect: Error styling is removed from fields

#### 6.5. Test success notifications

**File:** `tests/ui-ux/success-notifications.spec.ts`

**Steps:**
  1. Complete a successful operation (create, update, or delete person)
    - expect: A success notification appears
    - expect: Notification is clearly visible and uses appropriate styling (typically green)
    - expect: Message clearly indicates what action was successful
    - expect: Notification automatically dismisses after a few seconds or has a close button

#### 6.6. Verify form field labels and placeholders

**File:** `tests/ui-ux/form-labels.spec.ts`

**Steps:**
  1. Open create or edit person form
    - expect: All form fields have clear labels
    - expect: Labels are properly associated with their inputs
    - expect: Required fields are marked with an asterisk or 'Required' indicator
    - expect: Placeholder text provides helpful hints where appropriate
    - expect: Labels and placeholders are grammatically correct

#### 6.7. Test keyboard navigation

**File:** `tests/ui-ux/keyboard-navigation.spec.ts`

**Steps:**
  1. Navigate the page using only keyboard (Tab, Enter, Escape keys)
    - expect: All interactive elements are reachable via Tab key
    - expect: Focus indicators are clearly visible
    - expect: Logical tab order follows visual layout
    - expect: Enter key activates buttons and submits forms
    - expect: Escape key closes modals and dialogs
  2. Navigate through a form using Tab key
    - expect: Focus moves through fields in logical order
    - expect: User can complete entire form workflow with keyboard only

#### 6.8. Test accessibility features

**File:** `tests/ui-ux/accessibility.spec.ts`

**Steps:**
  1. Check page with accessibility tools (screen reader compatibility)
    - expect: All interactive elements have appropriate ARIA labels
    - expect: Images have alt text
    - expect: Form fields have proper labels for screen readers
    - expect: Error messages are announced to screen readers
    - expect: Color contrast meets WCAG standards

### 7. Error Handling and Edge Cases

**Seed:** `tests/seed.spec.ts`

#### 7.1. Handle network errors during load

**File:** `tests/error-handling/network-error-load.spec.ts`

**Steps:**
  1. Simulate network failure while loading the person page
    - expect: An appropriate error message is displayed (e.g., 'Unable to load persons. Please check your connection.')
    - expect: Page doesn't crash or show undefined errors
    - expect: A retry button or refresh option is available

#### 7.2. Handle API errors during create

**File:** `tests/error-handling/api-error-create.spec.ts`

**Steps:**
  1. Simulate an API error when creating a person (500 server error)
    - expect: An error message is displayed to the user
    - expect: Message indicates the operation failed
    - expect: Form data is preserved so user doesn't lose input
    - expect: User can retry the operation

#### 7.3. Handle API errors during update

**File:** `tests/error-handling/api-error-update.spec.ts`

**Steps:**
  1. Simulate an API error when updating a person
    - expect: Error message is displayed
    - expect: Update operation fails gracefully
    - expect: Original data remains unchanged in the list
    - expect: User can retry or cancel the operation

#### 7.4. Handle API errors during delete

**File:** `tests/error-handling/api-error-delete.spec.ts`

**Steps:**
  1. Simulate an API error when deleting a person
    - expect: Error message is displayed (e.g., 'Unable to delete person')
    - expect: Person remains in the list
    - expect: System state remains consistent
    - expect: User can retry the delete operation

#### 7.5. Test with special characters in all fields

**File:** `tests/error-handling/special-chars-all-fields.spec.ts`

**Steps:**
  1. Create a person with special characters, emojis, and unicode in all text fields
    - expect: System accepts unicode characters
    - expect: Data is saved correctly
    - expect: Special characters display correctly in the list
    - expect: Edit and delete operations work correctly with special characters

#### 7.6. Test with empty spaces

**File:** `tests/error-handling/empty-spaces.spec.ts`

**Steps:**
  1. Attempt to create a person with only spaces in required fields
    - expect: System treats spaces-only input as empty
    - expect: Validation error appears for required fields
    - expect: Submission is prevented

#### 7.7. Test rapid consecutive operations

**File:** `tests/error-handling/rapid-operations.spec.ts`

**Steps:**
  1. Quickly create multiple persons in succession
    - expect: All persons are created successfully
    - expect: No duplicate or lost entries
    - expect: System handles rapid requests appropriately
  2. Rapidly click delete button multiple times
    - expect: System prevents duplicate delete requests
    - expect: Only one delete operation executes
    - expect: No errors occur from rapid clicking

#### 7.8. Test browser back button behavior

**File:** `tests/error-handling/browser-back-button.spec.ts`

**Steps:**
  1. Navigate to person details or edit form, then use browser back button
    - expect: User returns to the previous page (person list)
    - expect: Page state is preserved correctly
    - expect: No errors occur
    - expect: Data integrity is maintained
  2. Open create form, fill data, use back button
    - expect: User returns to list without saving
    - expect: No incomplete data is saved

#### 7.9. Test page refresh during operations

**File:** `tests/error-handling/page-refresh.spec.ts`

**Steps:**
  1. Open edit form, make changes, then refresh the page
    - expect: Page reloads successfully
    - expect: Unsaved changes are lost (expected behavior)
    - expect: Original data remains intact
    - expect: No corrupted data in the system

#### 7.10. Test session timeout handling

**File:** `tests/error-handling/session-timeout.spec.ts`

**Steps:**
  1. Simulate session timeout, then attempt an operation
    - expect: User receives appropriate message about session expiration
    - expect: User is redirected to login page or prompted to re-authenticate
    - expect: No data loss occurs if possible

### 8. Performance and Data Integrity

**Seed:** `tests/seed.spec.ts`

#### 8.1. Load page with large dataset

**File:** `tests/performance/large-dataset.spec.ts`

**Steps:**
  1. Load person page with 100+ person records
    - expect: Page loads within acceptable time (e.g., under 3 seconds)
    - expect: Pagination is implemented for large datasets
    - expect: UI remains responsive
    - expect: No browser freezing or excessive memory usage

#### 8.2. Verify data persistence

**File:** `tests/performance/data-persistence.spec.ts`

**Steps:**
  1. Create a new person with specific data
    - expect: Person is created successfully
  2. Refresh the page
    - expect: The created person is still present in the list
    - expect: All data fields match what was originally entered
    - expect: Data persists across page reloads

#### 8.3. Verify update data persistence

**File:** `tests/performance/update-persistence.spec.ts`

**Steps:**
  1. Update an existing person's data
    - expect: Update is successful
  2. Refresh the page and view the person
    - expect: Updated data is persisted
    - expect: Changes are reflected after reload
    - expect: No data reversion to old values

#### 8.4. Verify delete data persistence

**File:** `tests/performance/delete-persistence.spec.ts`

**Steps:**
  1. Delete a person
    - expect: Person is removed from the list
  2. Refresh the page
    - expect: Deleted person does not reappear
    - expect: Deletion is permanent (or follows business rules for soft delete)
    - expect: Remaining data is intact

#### 8.5. Test concurrent user operations

**File:** `tests/performance/concurrent-operations.spec.ts`

**Steps:**
  1. Simulate two users editing the same person simultaneously
    - expect: System handles concurrent edits appropriately
    - expect: Last write wins, or conflict resolution is implemented
    - expect: No data corruption occurs
    - expect: Appropriate message if conflict detected
