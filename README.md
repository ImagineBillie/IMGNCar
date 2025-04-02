# IMGNCar Rental System 🚗

A full-stack car rental management system built with **Blazor (Frontend)** and **.NET API (Backend)**.

---

## ✨ Features
- **User Authentication**: Signup/Login for bookings and feedback.
- **Browse Cars**: Filter and view car details (make, model, daily rate).
- **Booking System**: Select pickup/dropoff locations, dates, and calculate total price.
- **Admin Dashboard**: Manage cars, bookings, and user feedback (*admin role required*).
- **Feedback Submission**: Rate your rental experience.

---

## 🛠️ Prerequisites
- [.NET SDK 9.0+](https://dotnet.microsoft.com/download)
- [XAMPP](https://www.apachefriends.org/) (MySQL database)
- [Git](https://git-scm.com/)
- IDE (Recommended - [Visual Studio](https://visualstudio.microsoft.com/))

---

## 🚀 Installation

### 1. Clone the Repository
```bash
git clone https://github.com/ImagineBillie/IMGNCar.git
cd IMGNCar
```

### 2. Database Setup
1. Start **XAMPP** and run **Apache** + **MySQL**.
2. Open `http://localhost/phpmyadmin`.
3. Create a database named `imgncar`.
4. Import the SQL file from `/IMGNCar/imgncar.sql`.

### 3. Configure Backend (API)
1. Navigate to the API project:
   ```bash
   git clone https://github.com/ImagineBillie/CarRentalAPI.git
   cd CarRentalAPI
   ```

### 4. Run Migrations
```bash
dotnet ef database update
```

---

## ⚡ Running the Application

### Backend (API)
```bash
cd CarRentalAPI
dotnet run
```
- API runs at `http://localhost:5087`.
- Test endpoints via Swagger: `http://localhost:5087/swagger`.

### Frontend (Blazor)
```bash
cd IMGNCar
dotnet run
```
- Frontend runs at `https://localhost:7137/`.

---

## 📖 Usage
1. **Homepage**: Browse featured cars and service highlights.
2. **About**: About project system, mission and values.
3. **Browse Cars**: Click "More Info" to view details.
4. **Book a Car**:
   - Select pickup/dropoff locations, dates, and rental days.
   - Confirm booking in the popup.
5. **My Bookings**: View/Cancel bookings.
6. **Feedback**: Submit ratings and comments post-rental.
7. **FAQs**: Show lists of frequently asked questions.

---

## 🔧 API Documentation
- **Swagger UI**: Available at `http://localhost:5000/swagger`.
- **Sample Endpoints**:
  - `GET /api/cars`: List all cars.
  - `GET /api/users`: List all users.
  - `POST /api/bookings`: Create a booking.
  - `GET /api/feedbacks`: Get all feedbacks.

---

## 📜 License
Distributed under the MIT License. See `LICENSE` for details.

---

## 🙏 Acknowledgments
- Built with .NET 9 and Blazor.
- Icons by [Font Awesome](https://fontawesome.com/).
