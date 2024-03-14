package android.support.transition;

import android.transition.Scene;
import android.view.View;
import android.view.ViewGroup;

class SceneApi21 extends SceneWrapper {
    SceneApi21() {
    }

    public void init(ViewGroup sceneRoot) {
        this.mScene = new Scene(sceneRoot);
    }

    public void init(ViewGroup sceneRoot, View layout) {
        this.mScene = new Scene(sceneRoot, layout);
    }

    public void enter() {
        this.mScene.enter();
    }
}
