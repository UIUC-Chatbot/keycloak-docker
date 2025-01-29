import { BrowserRouter as Router, Routes, Route } from 'react-router-dom'
import { Layout } from './components/layout'
import { Personal } from './routes/Personal'
import { Security } from './routes/Security'
import { Applications } from './routes/Applications'

export const App = () => {
  return (
    <Router basename="/realms/master/account">
      <Layout>
        <Routes>
          <Route path="/" element={<Personal />} />
          <Route path="/security" element={<Security />} />
          <Route path="/applications" element={<Applications />} />
        </Routes>
      </Layout>
    </Router>
  )
}