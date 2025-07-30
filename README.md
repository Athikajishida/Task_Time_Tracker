# 🕒 Mini Task & Time Tracker

A simple productivity app built with **Ruby on Rails** for managing tasks and tracking time.

## ✨ Features

- ✅ Create multiple projects
- 📝 Add tasks to projects
- ⏱️ Start/stop timers to track time
- ✔️ Mark tasks as complete
- 💬 Add comments to tasks

## 🛠️ Tech Stack

- **Backend**: Ruby on Rails
- **Database**: PostgreSQL
- **Frontend**: ERB templates
- **Styling**: Basic HTML/CSS

## 🚀 Setup

1. **Clone and install**
   ```bash
   git clone https://github.com/yourusername/task_time_tracker.git
   cd task_time_tracker
   bundle install
   ```

2. **Database setup**
   ```bash
   rails db:create
   rails db:migrate
   ```

3. **Run the app**
   ```bash
   rails server
   ```
   Visit: http://localhost:3000

## 📁 Models

- **Project**: `has_many :tasks`
- **Task**: `belongs_to :project`, `has_many :time_trackers, :comments`
- **TimeTracker**: `belongs_to :task` (tracks start_time, end_time)
- **Comment**: `belongs_to :task`

## 🔮 Future Improvements
- ✨ **UI Enhancements**  
  Implement a modern and responsive UI using **Tailwind CSS** or integrate with **React** for dynamic front-end behavior.

- 🔴 **Real-time Features**  
  Use **Action Cable** and **Turbo Streams** to support real-time updates such as live task timers, instant comment updates, and status changes.

- 👥 **Multi-user Support**  
  Add user authentication so that multiple users can create and manage their own projects and tasks securely.

- 🔐 **Authorization & Roles**  
  Implement role-based access control where permissions can differ based on user roles (e.g., admin, member, guest) and their association with specific projects.

- 📊 **Advanced Reporting**  
  Generate detailed reports on time tracked, task completion rates, and project efficiency to help users monitor productivity.

- 🗂 **Task Assignment**  
  Allow tasks to be assigned to individual users within a team or project, enabling better collaboration and accountability.

- 🗓️ **Calendar & Deadlines**  
  Add support for task deadlines and integrate a calendar view to visualize and manage upcoming tasks more effectively.
