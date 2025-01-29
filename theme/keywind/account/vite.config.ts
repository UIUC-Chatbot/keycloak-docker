import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

export default defineConfig({
  plugins: [react()],
  server: {
    proxy: {
      '/realms': 'http://localhost:8080'
    }
  },
  build: {
    outDir: 'resources/public',
    assetsDir: '',
    rollupOptions: {
      output: {
        entryFileNames: 'bundle.js',
        assetFileNames: 'bundle.[ext]'
      }
    }
  }
})