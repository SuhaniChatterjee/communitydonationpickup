# KindKart - Community Donation Pickup Scheduling System

A comprehensive demo of the Community Donation Pickup Scheduling System that allows donors to schedule donation pickups, volunteers to accept and complete pickups, and admins to oversee the entire ecosystem.

## 🌐 Live Demo

🚀 **Deployed on Vercel**  
👉 (https://communitydonationpickup.vercel.app/)

## 🚀 Quick Start

### Prerequisites
- Node.js 18+ and npm
- A modern web browser

### Installation

```bash
# Clone the repository
git clone <YOUR_GIT_URL>
cd <YOUR_PROJECT_NAME>

# Install dependencies
npm install

# Start the development server
npm run dev
```

The app will be available at `http://localhost:8080`

## 🎯 Demo Features

This demo showcases a complete donation scheduling and pickup system with:

- **Authentication**: Email/password login with quick demo account access
- **Real-time Updates**: Live status changes across all dashboards
- **Interactive Maps**: OpenStreetMap integration with route visualization and directions
- **SMS Notifications**: Simulated notifications (uses Twilio when configured)
- **Image Uploads**: Donation photos stored securely
- **PDF Receipts**: Downloadable receipt generation for completed donations
- **Multi-role System**: Separate dashboards for donors, volunteers, and admins

## 👥 Demo Accounts

Use these pre-configured accounts to explore different user roles:

### Donor Account
- **Email**: `donor1@demo.com`
- **Password**: `demodemo`
- **Features**: Schedule donations, upload photos, track pickup status, download receipts

### Volunteer Account
- **Email**: `vol1@demo.com`
- **Password**: `demodemo`
- **Features**: View available pickups, accept assignments, update status, view routes

### Admin Account
- **Email**: `admin@demo.com`
- **Password**: `demodemo`
- **Features**: View all donations, monitor volunteers, access system analytics

### Quick Demo Login
Click the demo buttons on the sign-in page for instant access to any role.

## 🎬 Demo Workflow

### 1. As a Donor
1. Sign in using demo donor credentials or quick login
2. Click "Schedule a Donation" from the dashboard
3. Fill in donation details (category, description, quantity)
4. Upload photos of items (optional)
5. Select pickup location on the map or enter address
6. Choose preferred date and time slot
7. Submit and watch for real-time status updates
8. Download PDF receipt when pickup is completed

### 2. As a Volunteer
1. Sign in using demo volunteer credentials
2. View available pickups in your area
3. Accept a donation assignment
4. View route and directions to pickup location
5. Update status: Accepted → In Progress → Completed
6. Upload proof of pickup photo

### 3. As an Admin
1. Sign in using demo admin credentials
2. View dashboard with system statistics
3. Monitor all donations across all statuses
4. View registered users (donors, volunteers)
5. Track completion rates and active assignments

## 🗺️ Maps & Routing

The system uses **OpenStreetMap** with the following features:

### Current Implementation (No API Key Required)
- Interactive map markers for donors and volunteers
- Route visualization using OSRM (Open Source Routing Machine)
- Distance and ETA calculations
- Click-to-select location on map
- Address geocoding via Nominatim

### Optional: Google Maps Integration
To enable Google Maps features:

1. Get a Google Maps API key from [Google Cloud Console](https://console.cloud.google.com)
2. Enable these APIs:
   - Maps JavaScript API
   - Geocoding API
   - Directions API
3. Add to your `.env` file:
   ```
   VITE_GOOGLE_MAPS_API_KEY=your_key_here
   ```

**Note**: The demo works perfectly without Google Maps. The free OpenStreetMap integration provides all core functionality.

## 📧 Notifications

### Current Setup (Demo Mode)
- In-app notification panel shows real-time updates
- Toast notifications for important events
- Simulated SMS notifications (logged to console)

### Production SMS Setup (Optional)
The app supports Twilio SMS notifications. To enable:

1. Sign up at [Twilio](https://www.twilio.com)
2. Verify your domain and get credentials
3. The following secrets are already configured in Lovable Cloud:
   - `TWILIO_ACCOUNT_SID`
   - `TWILIO_AUTH_TOKEN`
   - `TWILIO_PHONE_NUMBER`

SMS notifications will automatically activate when Twilio credentials are present.

## 📄 PDF Receipt Generation

Completed donations automatically generate downloadable PDF receipts containing:
- Donation ID and timestamp
- Donor information
- Item details and category
- Pickup address and date
- Volunteer information
- Thank you message

Click "Download Receipt" on any completed donation to generate the PDF.

## 🗄️ Demo Data

### Pre-seeded Data
The system includes sample donations to demonstrate the workflow:

- **D-1001**: Pending donation (Clothing & Books)
- **D-1002**: Completed donation (Electronics) 
- **D-1003**: Assigned donation (Furniture)

### Creating New Demo Data
Simply use the donor account to schedule new donations, or sign up additional test accounts to explore the full system.

## 🏗️ Architecture

### Frontend
- **React 18** with TypeScript
- **Tailwind CSS** for styling with custom design system
- **React Router** for navigation
- **Leaflet/React-Leaflet** for maps
- **jsPDF** for receipt generation

### Backend (Lovable Cloud)
- **Supabase** for database and authentication
- **PostgreSQL** with Row Level Security (RLS)
- **Supabase Realtime** for live updates
- **Edge Functions** for serverless logic
- **Supabase Storage** for image uploads

### Key Components
- `MapPicker.tsx` - Interactive location selection
- `RouteMap.tsx` - Route visualization with directions
- `ImageUpload.tsx` - Photo upload with preview
- `NotificationsPanel.tsx` - In-app notification center
- `pdfGenerator.ts` - Receipt generation utility

## 📱 Real-time Features

The system uses Supabase Realtime to provide instant updates:

- Donation status changes appear immediately on all dashboards
- New donations show up in volunteer's available pickups
- Admins see live statistics updates
- In-app notifications trigger on relevant events

## 🎨 Design System

The app uses a comprehensive design system with:

- **Semantic color tokens** (primary, secondary, success, etc.)
- **HSL color values** for consistency
- **Custom gradients** for hero sections
- **Shadow utilities** for depth
- **Responsive breakpoints** for mobile support

All colors and styles are defined in `src/index.css` and `tailwind.config.ts`.

## 🔒 Security Features

- **Row Level Security (RLS)** on all database tables
- **Authentication required** for all operations
- **Role-based access control** (donor, volunteer, admin, ngo)
- **Secure file uploads** with bucket policies
- **Input validation** on all forms
- **Protected API routes** with JWT verification

## 🚢 Deployment

### Custom Domain
1. Go to Project → Settings → Domains
2. Click "Connect Domain"
3. Follow the DNS configuration steps


## 🛠️ Development

### Project Structure
```
src/
├── components/        # Reusable UI components
│   ├── ui/           # shadcn/ui components
│   ├── MapPicker.tsx
│   ├── RouteMap.tsx
│   ├── ImageUpload.tsx
│   └── NotificationsPanel.tsx
├── pages/            # Main page components
│   ├── Auth.tsx
│   ├── Landing.tsx
│   ├── DonorDashboard.tsx
│   ├── VolunteerDashboard.tsx
│   └── AdminDashboard.tsx
├── hooks/            # Custom React hooks
├── utils/            # Utility functions
└── integrations/     # Supabase integration
    └── supabase/
```

### Available Scripts
```bash
npm run dev          # Start development server
npm run build        # Build for production
npm run preview      # Preview production build
npm run lint         # Run ESLint
```

## 📝 Environment Variables

The following environment variables are automatically configured by Lovable Cloud:

```env
VITE_SUPABASE_URL=https://your-project.supabase.co
VITE_SUPABASE_PUBLISHABLE_KEY=your-anon-key
VITE_SUPABASE_PROJECT_ID=your-project-id
```

**Note**: These are automatically managed. Do not edit `.env` manually.

## 🆘 Troubleshooting

### Demo accounts don't work
Make sure to create the demo accounts first by signing up with the exact credentials:
- donor1@demo.com / demodemo
- vol1@demo.com / demodemo  
- admin@demo.com / demodemo

### Maps not loading
- Check your internet connection
- OpenStreetMap tiles may take a moment to load
- Try refreshing the page

### Images not uploading
- Ensure file size is under 2MB
- Only JPG, PNG, and WEBP formats supported
- Check browser console for detailed error messages

### Real-time updates not working
- Verify you're connected to the internet
- Check that you're signed in
- Try refreshing the page to reconnect

## 🤝 Contributing

This is a demo project showcasing the capabilities of Lovable for building full-stack applications. Feel free to:

- Fork and experiment
- Add new features
- Customize the design
- Deploy your own version

## 📚 Learn More

- [Supabase Documentation](https://supabase.com/docs)
- [React Leaflet Documentation](https://react-leaflet.js.org)
- [Tailwind CSS Documentation](https://tailwindcss.com/docs)

## 📄 License

This project is open source and available for educational and demonstration purposes.

## 🎉 Demo vs Production

### This Demo Includes:
✅ Quick login buttons for easy testing  
✅ Pre-seeded sample data  
✅ Simulated notifications (console logs)  
✅ Free OpenStreetMap integration  
✅ All core features functional  

### For Production Use:
- Remove demo login buttons
- Clear sample data
- Configure Twilio for real SMS
- Add Google Maps API key (optional)
- Enable production security settings
- Set up custom domain
- Configure email confirmation

---


