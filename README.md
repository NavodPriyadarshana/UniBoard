<div align="center">

# UniBoard
### A Mobile- Based Student Boarding Finder Application for Sri Lankan University Students

[![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?style=for-the-badge&logo=flutter)](https://flutter.dev)
[![Firebase](https://img.shields.io/badge/Firebase-FFCA28?style=for-the-badge&logo=firebase&logoColor=black)](https://firebase.google.com)
[![React](https://img.shields.io/badge/React.js-20232A?style=for-the-badge&logo=react&logoColor=61DAFB)](https://reactjs.org)
[![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)](LICENSE)

*A Flutter-based mobile application connecting university students with verified boarding house landlords across Sri Lanka.*

[Live Admin Panel](https://uniboard-fd52f.web.app) • [Report Bug](https://github.com/NavodPriyadarshana/UniBoard/issues)

</div>

---

## 📱 About UniBoard

UniBoard solves a real problem faced by thousands of Sri Lankan university students every year — finding safe, affordable, and verified boarding houses near their universities. The platform provides a complete ecosystem with a mobile app for students and landlords, and a web-based admin dashboard for platform management.

---

## ✨ Key Features

### 🎓 Student Module
- Browse verified boarding listings near universities
- Distance calculation from university to each listing
- Advanced filtering by room type, gender preference, and price
- Swipeable property photo gallery with Google Maps location
- Real-time chat with landlords
- Slot-based booking request system
- Star ratings and reviews
- Push notifications for booking updates

### 🏠 Landlord Module
- Multi-step verification system (NIC + Property Deed + Police Clearance)
- Automated OTP verification via EmailJS
- Membership plan selection (Basic / Standard / Premium)
- PayHere payment gateway integration (sandbox mode)
- Add and edit listings with Google Maps location picker
- Photo upload (up to 5 photos per listing)
- Booking management with accept/reject functionality

### 🖥️ Admin Panel (React.js)
- Landlord application review with document verification
- OTP generation and automated email delivery
- Listing verification management
- User management with subscription plan tracking
- Real-time platform statistics dashboard
- Responsive design with mobile support

---

## 🛠️ Tech Stack

| Category | Technology |
|----------|-----------|
| Mobile App | Flutter (Dart) |
| Database | Firebase Cloud Firestore |
| Authentication | Firebase Authentication |
| File Storage | Firebase Storage |
| Push Notifications | Firebase Cloud Messaging (FCM) |
| Server-side Logic | Firebase Cloud Functions |
| Admin Panel | React.js + Vite |
| Admin Hosting | Firebase Hosting |
| Maps & Location | Google Maps Flutter + Geolocator + Geocoding |
| Payment | PayHere SDK (Sandbox) |
| Email | EmailJS |
| Font | Google Fonts (Poppins) + Agency FB |

---

## 🏗️ System Architecture

```
┌─────────────────────────────────────────┐
│           Layer 1 — Client Side         │
│  Flutter Mobile App  │  React.js Admin  │
└──────────────────────┴──────────────────┘
              │                │
┌─────────────────────────────────────────┐
│         Layer 2 — Firebase Backend      │
│  Auth │ Firestore │ Storage │ Functions │
│            FCM │ Hosting                │
└──────────────────────┬──────────────────┘
              │        │
┌─────────────────────────────────────────┐
│       Layer 3 — External Services       │
│  Google Maps │ PayHere │ EmailJS        │
└─────────────────────────────────────────┘
```

---

## 🗄️ Firestore Collections

| Collection | Purpose |
|-----------|---------|
| `users` | Student and landlord accounts |
| `listings` | Boarding property listings |
| `bookings` | Booking requests and status |
| `chats` / `messages` | Real-time chat messages |
| `reviews` | Student ratings and reviews |
| `landlord_applications` | Verification documents |
| `landlord_otps` | One-time passwords |
| `subscriptions` | Payment and plan records |
| `notifications` | FCM push notification queue |

---

## 🚀 Getting Started

### Prerequisites
- Flutter SDK 3.x
- Dart SDK 3.x
- Firebase CLI
- Node.js (for Cloud Functions)
- Android Studio / VS Code

### Installation

1. **Clone the repository**
```bash
git clone https://github.com/NavodPriyadarshana/UniBoard.git
cd UniBoard
```

2. **Install dependencies**
```bash
flutter pub get
```

3. **Create .env file**
```
PAYHERE_MERCHANT_ID=your_merchant_id
PAYHERE_SECRET=your_merchant_secret
```

4. **Add Firebase configuration**
   - Download `google-services.json` from Firebase Console
   - Place in `android/app/`

5. **Run the app**
```bash
flutter run
```

### Cloud Functions Setup
```bash
cd functions
npm install
firebase deploy --only functions
```

---

## 🔐 Security Features

- ✅ Firebase Authentication with role-based access control
- ✅ Firestore server-side security rules
- ✅ Multi-step landlord verification system
- ✅ OTP-based identity confirmation
- ✅ Environment variables for sensitive credentials
- ✅ Email lock prevents registration with different email
- ✅ Cross-role login prevention

---

## 📸 Screenshots

> Coming soon

---

## 👥 Team

| Name | Student ID | Role |
|------|-----------|------|
| Navod Priyadarshana | 22UG3-0902 | Project Lead & Student Module |
| Yasiru Pathirana | 22UG3-0774 | Landlord Module |
| Nimna Kavishka | 22UG3-0754 | Admin Panel |
| Malisha Nethmini | 22UG3-0233 | Authentication & Chat |

**Supervisor:** Ms. Vindya Kalapuge
**Institution:** SLTC Research University — Faculty of Computing & IT
**Programme:** Bachelor of Applied Information Technology (BAIT) — Batch 01
**Module:** CIT310 — Information Technology Project

---

## 🌐 Links

- 🔗 **Live Admin Panel:** https://uniboard-fd52f.web.app
- 📱 **Admin Panel Repo:** https://github.com/NavodPriyadarshana/UniBoard-Admin-Panel

---

## 📄 License

This project is licensed under the MIT License.

---

<div align="center">
Made with ❤️ by Team UniBoard | SLTC Research University 2026
</div>