package android.support.transition;

import android.view.ViewGroup;

class TransitionManagerStaticsIcs extends TransitionManagerStaticsImpl {
    TransitionManagerStaticsIcs() {
    }

    public void go(SceneImpl scene) {
        TransitionManagerPort.go(((SceneIcs) scene).mScene);
    }

    public void go(SceneImpl scene, TransitionImpl transition) {
        TransitionManagerPort.go(((SceneIcs) scene).mScene, transition == null ? null : ((TransitionIcs) transition).mTransition);
    }

    public void beginDelayedTransition(ViewGroup sceneRoot) {
        TransitionManagerPort.beginDelayedTransition(sceneRoot);
    }

    public void beginDelayedTransition(ViewGroup sceneRoot, TransitionImpl transition) {
        TransitionManagerPort.beginDelayedTransition(sceneRoot, transition == null ? null : ((TransitionIcs) transition).mTransition);
    }
}
