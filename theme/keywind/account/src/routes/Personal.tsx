export const Personal = () => {
    return (
      <div className="space-y-6">
        <div>
          <h3 className="text-lg font-medium">Personal Info</h3>
          <p className="text-sm text-muted-foreground">
            Update your personal information and email settings.
          </p>
        </div>
        <div className="border rounded-lg p-4 space-y-4">
          <div className="space-y-2">
            <label className="text-sm font-medium leading-none">Email</label>
            <input
              className="flex h-10 w-full rounded-md border border-input bg-background px-3 py-2 text-sm ring-offset-background"
              type="email"
            />
          </div>
          <div className="space-y-2">
            <label className="text-sm font-medium leading-none">Name</label>
            <input
              className="flex h-10 w-full rounded-md border border-input bg-background px-3 py-2 text-sm ring-offset-background"
              type="text"
            />
          </div>
          <button className="inline-flex items-center justify-center rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 bg-primary text-primary-foreground hover:bg-primary/90 h-10 px-4 py-2">
            Save changes
          </button>
        </div>
      </div>
    )
  }