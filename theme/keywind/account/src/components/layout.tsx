import { Link } from "react-router-dom"

const Sidebar = () => (
  <div className="border-r bg-background">
    <div className="space-y-4 py-4">
      <div className="px-3 py-2">
        <h2 className="mb-2 px-4 text-lg font-semibold tracking-tight">
          Account Management
        </h2>
        <div className="space-y-1">
          <Link
            to="/"
            className="group flex w-full items-center rounded-md border border-transparent px-2 py-1 hover:bg-accent hover:text-accent-foreground"
          >
            <svg
              xmlns="http://www.w3.org/2000/svg"
              viewBox="0 0 24 24"
              fill="none"
              stroke="currentColor"
              strokeWidth="2"
              strokeLinecap="round"
              strokeLinejoin="round"
              className="mr-2 h-4 w-4"
            >
              <path d="M19 21v-2a4 4 0 0 0-4-4H9a4 4 0 0 0-4 4v2" />
              <circle cx="12" cy="7" r="4" />
            </svg>
            Personal Info
          </Link>
          <Link
            to="/security"
            className="group flex w-full items-center rounded-md border border-transparent px-2 py-1 hover:bg-accent hover:text-accent-foreground"
          >
            <svg
              xmlns="http://www.w3.org/2000/svg"
              viewBox="0 0 24 24"
              fill="none"
              stroke="currentColor"
              strokeWidth="2"
              strokeLinecap="round"
              strokeLinejoin="round"
              className="mr-2 h-4 w-4"
            >
              <rect width="18" height="11" x="3" y="11" rx="2" ry="2" />
              <path d="M7 11V7a5 5 0 0 1 10 0v4" />
            </svg>
            Security
          </Link>
          <Link
            to="/applications"
            className="group flex w-full items-center rounded-md border border-transparent px-2 py-1 hover:bg-accent hover:text-accent-foreground"
          >
            <svg
              xmlns="http://www.w3.org/2000/svg"
              viewBox="0 0 24 24"
              fill="none"
              stroke="currentColor"
              strokeWidth="2"
              strokeLinecap="round"
              strokeLinejoin="round"
              className="mr-2 h-4 w-4"
            >
              <rect width="16" height="16" x="4" y="4" rx="2" />
              <rect width="6" height="6" x="9" y="9" />
              <path d="M15 2v2M15 20v2M2 15h2M20 15h2" />
            </svg>
            Applications
          </Link>
        </div>
      </div>
    </div>
  </div>
)

interface LayoutProps {
  children: React.ReactNode
}

export const Layout = ({ children }: LayoutProps) => {
  return (
    <div className="min-h-screen bg-background">
      <div className="border-b">
        <div className="flex h-16 items-center px-4">
          <div className="ml-auto flex items-center space-x-4">
            <h1 className="text-xl font-bold">UIUC.chat Account</h1>
          </div>
        </div>
      </div>
      <div className="grid lg:grid-cols-5">
        <Sidebar />
        <div className="col-span-4 lg:col-span-4 lg:border-l">
          <div className="h-full px-4 py-6 lg:px-8">
            {children}
          </div>
        </div>
      </div>
    </div>
  )
}