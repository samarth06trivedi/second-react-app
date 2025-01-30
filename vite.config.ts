import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';

// https://vite.dev/config/
export default defineConfig({
  plugins: [react()],
  server: {
    port: 4173, // Specify the desired port
    host: '0.0.0.0', // Ensure the app is accessible externally
  },
});
