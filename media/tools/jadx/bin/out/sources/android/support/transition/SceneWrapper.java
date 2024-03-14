package android.support.transition;

import android.transition.Scene;
import android.view.ViewGroup;

abstract class SceneWrapper extends SceneImpl {
    Scene mScene;

    SceneWrapper() {
    }

    public ViewGroup getSceneRoot() {
        return this.mScene.getSceneRoot();
    }

    public void exit() {
        this.mScene.exit();
    }

    public void setEnterAction(Runnable action) {
        this.mScene.setEnterAction(action);
    }

    public void setExitAction(Runnable action) {
        this.mScene.setExitAction(action);
    }
}
