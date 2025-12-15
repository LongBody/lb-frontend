# LB Frontend

A React-based frontend application with Docker support and Nginx reverse proxy configuration.

## 🚀 Features

- **React 19.2.3** - Modern React application
- **Docker Support** - Multi-stage build with Nginx
- **API Integration** - Configured reverse proxy to backend API
- **Testing Ready** - Includes React Testing Library setup
- **Production Optimized** - Nginx serving static files

## 📋 Prerequisites

- Node.js 20.x or higher
- npm or yarn
- Docker (optional, for containerized deployment)

## 🛠️ Installation

### Local Development

1. Clone the repository:
```bash
git clone <repository-url>
cd lb-frontend
```

2. Install dependencies:
```bash
npm install
```

3. Start the development server:
```bash
npm start
```

The application will open at [http://localhost:5173](http://localhost:5173)

## 📝 Available Scripts

### `npm start`
Runs the app in development mode. Open [http://localhost:5173](http://localhost:5173) to view it in your browser.

The page will reload when you make changes. You may also see any lint errors in the console.

### `npm test`
Launches the test runner in interactive watch mode.

### `npm run build`
Builds the app for production to the `build` folder. It correctly bundles React in production mode and optimizes the build for the best performance.

### `npm run eject`
**Note: this is a one-way operation. Once you eject, you can't go back!**

## 🐳 Docker Deployment

### Build Docker Image

```bash
docker build -t lb-frontend:latest .
```

### Run Container

```bash
docker run -d -p 80:80 --name lb-frontend lb-frontend:latest
```

The application will be available at [http://localhost](http://localhost)

To stop the container:
```bash
docker stop lb-frontend
```

To remove the container:
```bash
docker rm lb-frontend
```

### Docker Configuration

- **Multi-stage build**: Uses Node.js 20 Alpine for building and Nginx Alpine for serving
- **Nginx configuration**: Includes reverse proxy to backend API at `/api/`
- **Backend proxy**: Configured to forward API requests to `http://10.0.0.4:3000/`

## 🔧 Configuration

### Backend API

The application is configured to communicate with a backend API. Update the backend URL in [nginx.conf](nginx.conf):

```nginx
location /api/ {
  proxy_pass http://YOUR_BACKEND_URL:PORT/;
  proxy_set_header Host $host;
  proxy_set_header X-Real-IP $remote_addr;
}
```

## 📁 Project Structure

```
lb-frontend/
├── public/              # Static files
│   ├── index.html
│   ├── manifest.json
│   └── robots.txt
├── src/                 # Source files
│   ├── App.js          # Main application component
│   ├── App.css         # App styles
│   ├── index.js        # Entry point
│   └── ...
├── Dockerfile          # Multi-stage Docker build
├── nginx.conf          # Nginx configuration
├── package.json        # Dependencies and scripts
└── README.md          # This file
```

## 🧪 Testing

The project includes testing setup with React Testing Library:

```bash
npm test
```

## 🌐 Browser Support

- Production: >0.2%, not dead, not op_mini all
- Development: Latest Chrome, Firefox, and Safari

## 📦 Dependencies

### Main Dependencies
- `react`: ^19.2.3
- `react-dom`: ^19.2.3
- `react-scripts`: 5.0.1
- `web-vitals`: ^2.1.4

### Testing Dependencies
- `@testing-library/react`: ^16.3.0
- `@testing-library/jest-dom`: ^6.9.1
- `@testing-library/user-event`: ^13.5.0

## 📄 License

This project is private.

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📞 Support

For support, please contact the development team.