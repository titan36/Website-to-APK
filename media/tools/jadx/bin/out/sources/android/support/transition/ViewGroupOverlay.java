package android.support.transition;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;

class ViewGroupOverlay extends ViewOverlay {
    ViewGroupOverlay(Context context, ViewGroup hostView, View requestingView) {
        super(context, hostView, requestingView);
    }

    public static ViewGroupOverlay createFrom(ViewGroup viewGroup) {
        return (ViewGroupOverlay) ViewOverlay.createFrom(viewGroup);
    }

    public void add(View view) {
        this.mOverlayViewGroup.add(view);
    }

    public void remove(View view) {
        this.mOverlayViewGroup.remove(view);
    }
}
