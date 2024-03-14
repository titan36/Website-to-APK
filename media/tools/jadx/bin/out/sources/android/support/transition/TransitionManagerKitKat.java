package android.support.transition;

import android.transition.TransitionManager;

class TransitionManagerKitKat extends TransitionManagerImpl {
    private final TransitionManager mTransitionManager = new TransitionManager();

    TransitionManagerKitKat() {
    }

    public void setTransition(SceneImpl scene, TransitionImpl transition) {
        this.mTransitionManager.setTransition(((SceneWrapper) scene).mScene, transition == null ? null : ((TransitionKitKat) transition).mTransition);
    }

    public void setTransition(SceneImpl fromScene, SceneImpl toScene, TransitionImpl transition) {
        this.mTransitionManager.setTransition(((SceneWrapper) fromScene).mScene, ((SceneWrapper) toScene).mScene, transition == null ? null : ((TransitionKitKat) transition).mTransition);
    }

    public void transitionTo(SceneImpl scene) {
        this.mTransitionManager.transitionTo(((SceneWrapper) scene).mScene);
    }
}
