export const Applications = () => {
    return (
        <div className="space-y-6">
            <div>
                <h3 className="text-lg font-medium">Connected Applications</h3>
                <p className="text-sm text-muted-foreground">
                    Manage applications that have access to your account.
                </p>
            </div>
            <div className="border rounded-lg divide-y">
                <div className="p-4">
                    <div className="flex items-center justify-between">
                        <div>
                            <h4 className="font-medium">UIUC.chat</h4>
                            <p className="text-sm text-muted-foreground">Connected on Jan 1, 2024</p>
                        </div>
                        <button className="inline-flex items-center justify-center rounded-md text-sm font-medium bg-destructive text-destructive-foreground hover:bg-destructive/90 h-8 px-3">
                            Revoke Access
                        </button>
                    </div>
                </div>
            </div>
        </div>
    )
}