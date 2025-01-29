export const Security = () => {
    return (
      <div className="space-y-6">
        <div>
          <h3 className="text-lg font-medium">Security Settings</h3>
          <p className="text-sm text-muted-foreground">
            Manage your password and 2-factor authentication settings.
          </p>
        </div>
        <div className="border rounded-lg p-4 space-y-4">
          <div className="space-y-2">
            <label className="text-sm font-medium leading-none">Current Password</label>
            <input
              className="flex h-10 w-full rounded-md border border-input bg-background px-3 py-2 text-sm ring-offset-background"
              type="password"
            />
          </div>
          <div className="space-y-2">
            <label className="text-sm font-medium leading-none">New Password</label>
            <input
              className="flex h-10 w-full rounded-md border border-input bg-background px-3 py-2 text-sm ring-offset-background"
              type="password"
            />
          </div>
          <button className="inline-flex items-center justify-center rounded-md text-sm font-medium bg-primary text-primary-foreground hover:bg-primary/90 h-10 px-4 py-2">
            Update Password
          </button>
        </div>
      </div>
    )
  }