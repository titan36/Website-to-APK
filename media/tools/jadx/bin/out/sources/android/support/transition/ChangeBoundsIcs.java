package android.support.transition;

class ChangeBoundsIcs extends TransitionIcs implements ChangeBoundsInterface {
    public ChangeBoundsIcs(TransitionInterface transition) {
        init(transition, new ChangeBoundsPort());
    }

    public void setResizeClip(boolean resizeClip) {
        ((ChangeBoundsPort) this.mTransition).setResizeClip(resizeClip);
    }
}
