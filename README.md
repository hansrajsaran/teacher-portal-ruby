# Teacher Portal with Ruby

## Overview

This project involves the development of a teacher portal using Ruby on Rails (RoR). The portal will feature a login screen for teacher authentication and a home screen that also serves as a student listing interface. Teachers will be able to manage student information and add new students through this portal.

## Requirements

### 1. Login Functionality
- **Create a Login Screen**: Implement a login form where teachers can enter their credentials.
- **Authenticate Users**: Verify teacher credentials against the database to authenticate users.
- **Error Handling**: Manage authentication errors and provide meaningful feedback to users.

### 2. Teacher Portal Home & Student Listing
- **Redirect After Login**: Upon successful login, redirect users to the home screen of the teacher portal.
- **Student Listing**: Display a list of students including their names, subjects, and marks.
- **Manage Student Details**: Include options to edit and delete student information. Enable inline editing to update student details directly.

### 3. Adding New Students
- **New Student Entry**: Provide functionality to add a new student's details through a popup or modal window.
- **Check for Existing Records**: Before adding a new student, check if a student with the same name and subject already exists in the database.
- **Update Existing Record**: If a match is found, update the existing student's marks by adding the new marks to the existing ones.
- **Create New Record**: If no match is found, create a new student record in the database.

## Getting Started

### Prerequisites
- Ruby 3.2.1
- Rails 7.1.3 or higher
- Sqlite3

### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/hansrajsaran/teacher-portal-ruby.git
   ```
2. Install dependencies:
   ```bash
   bundle install
   ```
3. Run migrations:
   ```bash
   rails db:migrate
   ```
4. Start the Rails server:
   ```bash
   rails server
   ```
