package android.support.transition;

import android.transition.ChangeBounds;

class ChangeBoundsKitKat extends TransitionKitKat implements ChangeBoundsInterface {
    public ChangeBoundsKitKat(TransitionInterface transition) {
        init(transition, new ChangeBounds());
    }

    public void setResizeClip(boolean resizeClip) {
        ((ChangeBounds) this.mTransition).setResizeClip(resizeClip);
    }
}
