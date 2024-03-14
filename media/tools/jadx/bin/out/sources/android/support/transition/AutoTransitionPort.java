package android.support.transition;

class AutoTransitionPort extends TransitionSetPort {
    public AutoTransitionPort() {
        setOrdering(1);
        addTransition(new FadePort(2)).addTransition(new ChangeBoundsPort()).addTransition(new FadePort(1));
    }
}
