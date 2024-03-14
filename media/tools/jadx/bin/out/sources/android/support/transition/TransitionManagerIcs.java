package android.support.transition;

class TransitionManagerIcs extends TransitionManagerImpl {
    private final TransitionManagerPort mTransitionManager = new TransitionManagerPort();

    TransitionManagerIcs() {
    }

    public void setTransition(SceneImpl scene, TransitionImpl transition) {
        this.mTransitionManager.setTransition(((SceneIcs) scene).mScene, transition == null ? null : ((TransitionIcs) transition).mTransition);
    }

    public void setTransition(SceneImpl fromScene, SceneImpl toScene, TransitionImpl transition) {
        this.mTransitionManager.setTransition(((SceneIcs) fromScene).mScene, ((SceneIcs) toScene).mScene, transition == null ? null : ((TransitionIcs) transition).mTransition);
    }

    public void transitionTo(SceneImpl scene) {
        this.mTransitionManager.transitionTo(((SceneIcs) scene).mScene);
    }
}
