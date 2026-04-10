# LOQUO iOS App (Marketplace for Farms)

A mobile marketplace application connecting farms with buyers, built using SwiftUI and Firebase.

---

## 🚀 Features

* 📦 Product listing from Firebase Firestore
* 🔍 Real-time search and filtering
* 📄 Product detail view
* 🛒 Shopping cart with quantity management
* 💰 Dynamic total price calculation
* 🔄 State-driven UI with SwiftUI

---

## 🛠 Tech Stack

* **Swift / SwiftUI**
* **Firebase Firestore (Backend)**
* **MVVM Architecture**
* **Git / GitHub**

---

## 📱 Architecture Overview

This app follows a **Model-View-ViewModel (MVVM)** structure:

* **Models**

  * `Product.swift`
  * `CartItem.swift`

* **ViewModel**

  * `ProductViewModel.swift`
  * Handles Firebase integration, state, and business logic

* **Views**

  * `ContentView.swift`
  * Product list, detail, and cart UI

---

## 🔄 Data Flow

```text
Firebase Firestore (Backend)
        ↓
ProductViewModel (fetch + logic)
        ↓
App State (@Published)
        ↓
SwiftUI Views (UI rendering)
        ↓
User Interaction (search, cart, navigation)
        ↓
State Updates → UI Auto-refresh
```

---

## 🔥 Key Functionality

### 📦 Fetch Products

* Retrieves product data from Firestore
* Maps documents into Swift models

### 🔍 Search

* Filters products by name and category in real time

### 🛒 Cart System

* Add products to cart
* Increase/decrease quantity
* Remove items automatically when quantity reaches zero
* Calculates total dynamically

---

## 🧠 What This Project Demonstrates

* Mobile app development with **SwiftUI**
* Backend integration using **Firebase Firestore**
* **State management** using `@Published` and `@StateObject`
* Clean separation of concerns with **MVVM**
* Real-world e-commerce features (search, cart, totals)

---

## 📸 Screenshots (Add yours)

> Add screenshots here after running the app

```md
![Product List](screenshot1.png)
![Product Detail](screenshot2.png)
![Cart](screenshot3.png)
```

---

## ⚙️ Setup Instructions

1. Clone the repo:

```bash
git clone https://github.com/yourusername/loquo-ios-app.git
```

2. Open in Xcode

3. Add Firebase:

   * Add package:

     ```
     https://github.com/firebase/firebase-ios-sdk
     ```
   * Include:

     * FirebaseCore
     * FirebaseFirestore

4. Add your `GoogleService-Info.plist` file

5. Run the app on simulator or device

---

## 📦 Firebase Data Structure

Collection: `products`

Fields:

```text
name: String
price: Number
category: String
description: String
```

---

## 🚀 Future Improvements

* 🔐 User authentication (Firebase Auth)
* 🧑‍🌾 Vendor profiles
* 💳 Checkout and payment integration
* 📦 Order tracking system
* 🎨 UI/UX enhancements

---

## 👨‍💻 Author

Mahdi Elharake

---

## 📌 Notes

This project was built to demonstrate mobile development skills across:

* iOS (SwiftUI)
* Backend integration
* Scalable architecture patterns

```
```
