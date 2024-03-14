package android.support.transition;

class TransitionApi23 extends TransitionKitKat {
    TransitionApi23() {
    }

    public TransitionImpl removeTarget(int targetId) {
        this.mTransition.removeTarget(targetId);
        return this;
    }
}
