package android.support.transition;

import android.os.IBinder;
import android.support.annotation.NonNull;
import android.view.View;

class WindowIdPort {
    private final IBinder mToken;

    private WindowIdPort(IBinder token) {
        this.mToken = token;
    }

    static WindowIdPort getWindowId(@NonNull View view) {
        return new WindowIdPort(view.getWindowToken());
    }

    public boolean equals(Object obj) {
        return (obj instanceof WindowIdPort) && ((WindowIdPort) obj).mToken.equals(this.mToken);
    }
}
