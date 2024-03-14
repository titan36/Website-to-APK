package android.support.transition;

import android.content.Context;
import android.view.ViewGroup;

class SceneStaticsIcs extends SceneStaticsImpl {
    SceneStaticsIcs() {
    }

    public SceneImpl getSceneForLayout(ViewGroup sceneRoot, int layoutId, Context context) {
        SceneIcs scene = new SceneIcs();
        scene.mScene = ScenePort.getSceneForLayout(sceneRoot, layoutId, context);
        return scene;
    }
}
