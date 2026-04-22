# 📱 Taskoura

## 🧩 Overview

Taskoura is a productivity companion designed to help users take control of their time and tasks with clarity and focus. It is built for students, professionals, and anyone who wants to improve productivity and turn daily efforts into meaningful progress.

---

## ❗ Problem Statement

Many people struggle to organize, prioritize, and track their daily tasks effectively, which often leads to wasted time, reduced focus, and inconsistent results.

---

## 💡 Solution

Taskoura solves this by providing a clean and intuitive task management experience that allows users to easily create, organize, and track their tasks in one place, helping them stay focused and productive throughout the day.

---

## 🚀 Key Features

- Seamless task creation, editing, and deletion (CRUD operations)
- Organized task management for better productivity
- Clean and distraction-free user interface
- Real-time progress tracking for tasks and projects

---

## 🌟 Value Proposition

Taskoura empowers users to take command of their productivity by combining a distraction-free interface with meaningful insights. It helps transform everyday tasks into measurable progress, enabling users to stay focused, organized, and results-driven.

---

## 🚀 App Launch Process

The app provides a smooth launch process to ensure a seamless user experience for new users.

### 📌 Workflow Overview

1. App startup: A splash screen is displayed.

2. The app checks if the onboarding process is complete.

3. Based on the result:

- New users → Setup screens

- Returning users → Go directly to the home screen.

-

### 🧠 App Architecture

This workflow is built using clean architecture principles:

- Presentation layer :

- Built using BLoC (flutter_bloc)

- Handles the rendering of the user interface and listens for the app's state.

- Domain layer, which includes the following use cases:

- Setup status verification use case

- Setup completion use case

- Data layer :

- Checking and saving complete Onboarding
- Local data source using SharedPreferences

--

### 🔄 State Management

The application uses BLoC to manage the startup workflow:

- **Events**

- Application startup event
- Setup completion event

- **States**
- Initial State
- Loading State
- Show Onboarding State
- Navigate To Home State

---

### 💾 Local Storage

Setup completion data is stored locally using SharedPreferences to ensure the setup is viewed only once.

---
