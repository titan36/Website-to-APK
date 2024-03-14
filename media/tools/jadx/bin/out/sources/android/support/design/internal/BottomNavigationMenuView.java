package android.support.design.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo.Scope;
import android.support.design.R;
import android.support.v4.util.Pools.Pool;
import android.support.v4.util.Pools.SynchronizedPool;
import android.support.v4.view.ViewCompat;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.view.menu.MenuView;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;

@RestrictTo({Scope.GROUP_ID})
public class BottomNavigationMenuView extends ViewGroup implements MenuView {
    private static final Pool<BottomNavigationItemView> sItemPool = new SynchronizedPool(5);
    private int mActiveButton;
    private final int mActiveItemMaxWidth;
    private final BottomNavigationAnimationHelperBase mAnimationHelper;
    private BottomNavigationItemView[] mButtons;
    private final int mInactiveItemMaxWidth;
    private final int mInactiveItemMinWidth;
    private int mItemBackgroundRes;
    private final int mItemHeight;
    private ColorStateList mItemIconTint;
    private ColorStateList mItemTextColor;
    /* access modifiers changed from: private */
    public MenuBuilder mMenu;
    private final OnClickListener mOnClickListener;
    /* access modifiers changed from: private */
    public BottomNavigationPresenter mPresenter;
    private boolean mShiftingMode;

    public BottomNavigationMenuView(Context context) {
        this(context, null);
    }

    public BottomNavigationMenuView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mShiftingMode = true;
        this.mActiveButton = 0;
        Resources res = getResources();
        this.mInactiveItemMaxWidth = res.getDimensionPixelSize(R.dimen.design_bottom_navigation_item_max_width);
        this.mInactiveItemMinWidth = res.getDimensionPixelSize(R.dimen.design_bottom_navigation_item_min_width);
        this.mActiveItemMaxWidth = res.getDimensionPixelSize(R.dimen.design_bottom_navigation_active_item_max_width);
        this.mItemHeight = res.getDimensionPixelSize(R.dimen.design_bottom_navigation_height);
        if (VERSION.SDK_INT >= 14) {
            this.mAnimationHelper = new BottomNavigationAnimationHelperIcs();
        } else {
            this.mAnimationHelper = new BottomNavigationAnimationHelperBase();
        }
        this.mOnClickListener = new OnClickListener() {
            public void onClick(View v) {
                BottomNavigationItemView itemView = (BottomNavigationItemView) v;
                BottomNavigationMenuView.this.activateNewButton(itemView.getItemPosition());
                BottomNavigationMenuView.this.mMenu.performItemAction(itemView.getItemData(), BottomNavigationMenuView.this.mPresenter, 0);
            }
        };
    }

    public void initialize(MenuBuilder menu) {
        this.mMenu = menu;
        if (this.mMenu != null && this.mMenu.size() > this.mActiveButton) {
            this.mMenu.getItem(this.mActiveButton).setChecked(true);
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int i;
        int width = MeasureSpec.getSize(widthMeasureSpec);
        int count = getChildCount();
        int heightSpec = MeasureSpec.makeMeasureSpec(this.mItemHeight, 1073741824);
        int[] childWidths = new int[count];
        if (this.mShiftingMode) {
            int inactiveCount = count - 1;
            int activeWidth = Math.min(width - (this.mInactiveItemMinWidth * inactiveCount), this.mActiveItemMaxWidth);
            int inactiveWidth = Math.min((width - activeWidth) / inactiveCount, this.mInactiveItemMaxWidth);
            int extra = (width - activeWidth) - (inactiveWidth * inactiveCount);
            for (int i2 = 0; i2 < count; i2++) {
                if (i2 == this.mActiveButton) {
                    i = activeWidth;
                } else {
                    i = inactiveWidth;
                }
                childWidths[i2] = i;
                if (extra > 0) {
                    childWidths[i2] = childWidths[i2] + 1;
                    extra--;
                }
            }
        } else {
            int childWidth = Math.min(width / count, this.mActiveItemMaxWidth);
            int extra2 = width - (childWidth * count);
            for (int i3 = 0; i3 < count; i3++) {
                childWidths[i3] = childWidth;
                if (extra2 > 0) {
                    childWidths[i3] = childWidths[i3] + 1;
                    extra2--;
                }
            }
        }
        int totalWidth = 0;
        for (int i4 = 0; i4 < count; i4++) {
            View child = getChildAt(i4);
            if (child.getVisibility() != 8) {
                child.measure(MeasureSpec.makeMeasureSpec(childWidths[i4], 1073741824), heightSpec);
                child.getLayoutParams().width = child.getMeasuredWidth();
                totalWidth += child.getMeasuredWidth();
            }
        }
        setMeasuredDimension(ViewCompat.resolveSizeAndState(totalWidth, MeasureSpec.makeMeasureSpec(totalWidth, 1073741824), 0), ViewCompat.resolveSizeAndState(this.mItemHeight, heightSpec, 0));
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        int count = getChildCount();
        int width = right - left;
        int height = bottom - top;
        int used = 0;
        for (int i = 0; i < count; i++) {
            View child = getChildAt(i);
            if (child.getVisibility() != 8) {
                if (ViewCompat.getLayoutDirection(this) == 1) {
                    child.layout((width - used) - child.getMeasuredWidth(), 0, width - used, height);
                } else {
                    child.layout(used, 0, child.getMeasuredWidth() + used, height);
                }
                used += child.getMeasuredWidth();
            }
        }
    }

    public int getWindowAnimations() {
        return 0;
    }

    public void setIconTintList(ColorStateList color) {
        this.mItemIconTint = color;
        if (this.mButtons != null) {
            for (BottomNavigationItemView item : this.mButtons) {
                item.setIconTintList(color);
            }
        }
    }

    @Nullable
    public ColorStateList getIconTintList() {
        return this.mItemIconTint;
    }

    public void setItemTextColor(ColorStateList color) {
        this.mItemTextColor = color;
        if (this.mButtons != null) {
            for (BottomNavigationItemView item : this.mButtons) {
                item.setTextColor(color);
            }
        }
    }

    public ColorStateList getItemTextColor() {
        return this.mItemTextColor;
    }

    public void setItemBackgroundRes(int background) {
        this.mItemBackgroundRes = background;
        if (this.mButtons != null) {
            for (BottomNavigationItemView item : this.mButtons) {
                item.setItemBackground(background);
            }
        }
    }

    public int getItemBackgroundRes() {
        return this.mItemBackgroundRes;
    }

    public void setPresenter(BottomNavigationPresenter presenter) {
        this.mPresenter = presenter;
    }

    public void buildMenuView() {
        boolean z;
        if (this.mButtons != null) {
            for (BottomNavigationItemView item : this.mButtons) {
                sItemPool.release(item);
            }
        }
        removeAllViews();
        this.mButtons = new BottomNavigationItemView[this.mMenu.size()];
        if (this.mMenu.size() > 3) {
            z = true;
        } else {
            z = false;
        }
        this.mShiftingMode = z;
        for (int i = 0; i < this.mMenu.size(); i++) {
            this.mPresenter.setUpdateSuspended(true);
            this.mMenu.getItem(i).setCheckable(true);
            this.mPresenter.setUpdateSuspended(false);
            BottomNavigationItemView child = getNewItem();
            this.mButtons[i] = child;
            child.setIconTintList(this.mItemIconTint);
            child.setTextColor(this.mItemTextColor);
            child.setItemBackground(this.mItemBackgroundRes);
            child.setShiftingMode(this.mShiftingMode);
            child.initialize((MenuItemImpl) this.mMenu.getItem(i), 0);
            child.setItemPosition(i);
            child.setOnClickListener(this.mOnClickListener);
            addView(child);
        }
    }

    public void updateMenuView() {
        int menuSize = this.mMenu.size();
        if (menuSize != this.mButtons.length) {
            buildMenuView();
            return;
        }
        for (int i = 0; i < menuSize; i++) {
            this.mPresenter.setUpdateSuspended(true);
            this.mButtons[i].initialize((MenuItemImpl) this.mMenu.getItem(i), 0);
            this.mPresenter.setUpdateSuspended(false);
        }
    }

    /* access modifiers changed from: private */
    public void activateNewButton(int newButton) {
        if (this.mActiveButton != newButton) {
            this.mAnimationHelper.beginDelayedTransition(this);
            this.mPresenter.setUpdateSuspended(true);
            this.mButtons[this.mActiveButton].setChecked(false);
            this.mButtons[newButton].setChecked(true);
            this.mPresenter.setUpdateSuspended(false);
            this.mActiveButton = newButton;
        }
    }

    private BottomNavigationItemView getNewItem() {
        BottomNavigationItemView item = (BottomNavigationItemView) sItemPool.acquire();
        if (item == null) {
            return new BottomNavigationItemView(getContext());
        }
        return item;
    }
}
