package android.support.transition;

import android.content.Context;
import android.transition.Scene;
import android.view.ViewGroup;

class SceneStaticsKitKat extends SceneStaticsImpl {
    SceneStaticsKitKat() {
    }

    public SceneImpl getSceneForLayout(ViewGroup sceneRoot, int layoutId, Context context) {
        SceneKitKat scene = new SceneKitKat();
        scene.mScene = Scene.getSceneForLayout(sceneRoot, layoutId, context);
        return scene;
    }
}
