package android.support.transition;

import android.transition.TransitionSet;

class TransitionSetKitKat extends TransitionKitKat implements TransitionSetImpl {
    private TransitionSet mTransitionSet = new TransitionSet();

    public TransitionSetKitKat(TransitionInterface transition) {
        init(transition, this.mTransitionSet);
    }

    public int getOrdering() {
        return this.mTransitionSet.getOrdering();
    }

    public TransitionSetKitKat setOrdering(int ordering) {
        this.mTransitionSet.setOrdering(ordering);
        return this;
    }

    public TransitionSetKitKat addTransition(TransitionImpl transition) {
        this.mTransitionSet.addTransition(((TransitionKitKat) transition).mTransition);
        return this;
    }

    public TransitionSetKitKat removeTransition(TransitionImpl transition) {
        this.mTransitionSet.removeTransition(((TransitionKitKat) transition).mTransition);
        return this;
    }
}
