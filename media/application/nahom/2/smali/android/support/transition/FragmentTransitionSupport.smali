.class public Landroid/support/transition/FragmentTransitionSupport;
.super Landroid/support/v4/app/FragmentTransitionImpl;
.source "FragmentTransitionSupport.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/FragmentTransitionImpl;-><init>()V

    return-void
.end method

.method private static hasSimpleTarget(Landroid/support/transition/Transition;)Z
    .locals 1
    .param p0, "transition"    # Landroid/support/transition/Transition;

    .line 122
    invoke-virtual {p0}, Landroid/support/transition/Transition;->getTargetIds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/support/transition/FragmentTransitionSupport;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {p0}, Landroid/support/transition/Transition;->getTargetNames()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/support/transition/FragmentTransitionSupport;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {p0}, Landroid/support/transition/Transition;->getTargetTypes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/support/transition/FragmentTransitionSupport;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public addTarget(Ljava/lang/Object;Landroid/view/View;)V
    .locals 1
    .param p1, "transitionObj"    # Ljava/lang/Object;
    .param p2, "view"    # Landroid/view/View;

    .line 290
    if-eqz p1, :cond_0

    .line 291
    move-object v0, p1

    check-cast v0, Landroid/support/transition/Transition;

    .line 292
    .local v0, "transition":Landroid/support/transition/Transition;
    invoke-virtual {v0, p2}, Landroid/support/transition/Transition;->addTarget(Landroid/view/View;)Landroid/support/transition/Transition;

    .line 294
    .end local v0    # "transition":Landroid/support/transition/Transition;
    :cond_0
    return-void
.end method

.method public addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "transitionObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 98
    .local p2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v0, p1

    check-cast v0, Landroid/support/transition/Transition;

    .line 99
    .local v0, "transition":Landroid/support/transition/Transition;
    if-nez v0, :cond_0

    .line 100
    return-void

    .line 102
    :cond_0
    instance-of v1, v0, Landroid/support/transition/TransitionSet;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 103
    move-object v1, v0

    check-cast v1, Landroid/support/transition/TransitionSet;

    .line 104
    .local v1, "set":Landroid/support/transition/TransitionSet;
    invoke-virtual {v1}, Landroid/support/transition/TransitionSet;->getTransitionCount()I

    move-result v3

    .line 105
    .local v3, "numTransitions":I
    nop

    .line 105
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 106
    invoke-virtual {v1, v2}, Landroid/support/transition/TransitionSet;->getTransitionAt(I)Landroid/support/transition/Transition;

    move-result-object v4

    .line 107
    .local v4, "child":Landroid/support/transition/Transition;
    invoke-virtual {p0, v4, p2}, Landroid/support/transition/FragmentTransitionSupport;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 105
    .end local v4    # "child":Landroid/support/transition/Transition;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    .end local v1    # "set":Landroid/support/transition/TransitionSet;
    .end local v2    # "i":I
    .end local v3    # "numTransitions":I
    :cond_1
    goto :goto_2

    :cond_2
    invoke-static {v0}, Landroid/support/transition/FragmentTransitionSupport;->hasSimpleTarget(Landroid/support/transition/Transition;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 110
    invoke-virtual {v0}, Landroid/support/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v1

    .line 111
    .local v1, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-static {v1}, Landroid/support/transition/FragmentTransitionSupport;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 113
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 114
    .local v3, "numViews":I
    nop

    .line 114
    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 115
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/support/transition/Transition;->addTarget(Landroid/view/View;)Landroid/support/transition/Transition;

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 119
    .end local v1    # "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v2    # "i":I
    .end local v3    # "numViews":I
    :cond_3
    :goto_2
    return-void
.end method

.method public beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "transition"    # Ljava/lang/Object;

    .line 209
    move-object v0, p2

    check-cast v0, Landroid/support/transition/Transition;

    invoke-static {p1, v0}, Landroid/support/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/support/transition/Transition;)V

    .line 210
    return-void
.end method

.method public canHandle(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "transition"    # Ljava/lang/Object;

    .line 42
    instance-of v0, p1, Landroid/support/transition/Transition;

    return v0
.end method

.method public cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "transition"    # Ljava/lang/Object;

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "copy":Landroid/support/transition/Transition;
    if-eqz p1, :cond_0

    .line 49
    move-object v1, p1

    check-cast v1, Landroid/support/transition/Transition;

    invoke-virtual {v1}, Landroid/support/transition/Transition;->clone()Landroid/support/transition/Transition;

    move-result-object v0

    .line 51
    :cond_0
    return-object v0
.end method

.method public mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "exitTransitionObj"    # Ljava/lang/Object;
    .param p2, "enterTransitionObj"    # Ljava/lang/Object;
    .param p3, "sharedElementTransitionObj"    # Ljava/lang/Object;

    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, "staggered":Landroid/support/transition/Transition;
    move-object v1, p1

    check-cast v1, Landroid/support/transition/Transition;

    .line 183
    .local v1, "exitTransition":Landroid/support/transition/Transition;
    move-object v2, p2

    check-cast v2, Landroid/support/transition/Transition;

    .line 184
    .local v2, "enterTransition":Landroid/support/transition/Transition;
    move-object v3, p3

    check-cast v3, Landroid/support/transition/Transition;

    .line 185
    .local v3, "sharedElementTransition":Landroid/support/transition/Transition;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 186
    new-instance v4, Landroid/support/transition/TransitionSet;

    invoke-direct {v4}, Landroid/support/transition/TransitionSet;-><init>()V

    .line 187
    invoke-virtual {v4, v1}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    move-result-object v4

    .line 188
    invoke-virtual {v4, v2}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    move-result-object v4

    const/4 v5, 0x1

    .line 189
    invoke-virtual {v4, v5}, Landroid/support/transition/TransitionSet;->setOrdering(I)Landroid/support/transition/TransitionSet;

    move-result-object v0

    goto :goto_0

    .line 190
    :cond_0
    if-eqz v1, :cond_1

    .line 191
    move-object v0, v1

    goto :goto_0

    .line 192
    :cond_1
    if-eqz v2, :cond_2

    .line 193
    move-object v0, v2

    .line 195
    :cond_2
    :goto_0
    if-eqz v3, :cond_4

    .line 196
    new-instance v4, Landroid/support/transition/TransitionSet;

    invoke-direct {v4}, Landroid/support/transition/TransitionSet;-><init>()V

    .line 197
    .local v4, "together":Landroid/support/transition/TransitionSet;
    if-eqz v0, :cond_3

    .line 198
    invoke-virtual {v4, v0}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    .line 200
    :cond_3
    invoke-virtual {v4, v3}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    .line 201
    return-object v4

    .line 203
    .end local v4    # "together":Landroid/support/transition/TransitionSet;
    :cond_4
    return-object v0
.end method

.method public mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "transition1"    # Ljava/lang/Object;
    .param p2, "transition2"    # Ljava/lang/Object;
    .param p3, "transition3"    # Ljava/lang/Object;

    .line 130
    new-instance v0, Landroid/support/transition/TransitionSet;

    invoke-direct {v0}, Landroid/support/transition/TransitionSet;-><init>()V

    .line 131
    .local v0, "transitionSet":Landroid/support/transition/TransitionSet;
    if-eqz p1, :cond_0

    .line 132
    move-object v1, p1

    check-cast v1, Landroid/support/transition/Transition;

    invoke-virtual {v0, v1}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    .line 134
    :cond_0
    if-eqz p2, :cond_1

    .line 135
    move-object v1, p2

    check-cast v1, Landroid/support/transition/Transition;

    invoke-virtual {v0, v1}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    .line 137
    :cond_1
    if-eqz p3, :cond_2

    .line 138
    move-object v1, p3

    check-cast v1, Landroid/support/transition/Transition;

    invoke-virtual {v0, v1}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    .line 140
    :cond_2
    return-object v0
.end method

.method public removeTarget(Ljava/lang/Object;Landroid/view/View;)V
    .locals 1
    .param p1, "transitionObj"    # Ljava/lang/Object;
    .param p2, "view"    # Landroid/view/View;

    .line 298
    if-eqz p1, :cond_0

    .line 299
    move-object v0, p1

    check-cast v0, Landroid/support/transition/Transition;

    .line 300
    .local v0, "transition":Landroid/support/transition/Transition;
    invoke-virtual {v0, p2}, Landroid/support/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/support/transition/Transition;

    .line 302
    .end local v0    # "transition":Landroid/support/transition/Transition;
    :cond_0
    return-void
.end method

.method public replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "transitionObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 264
    .local p2, "oldTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p3, "newTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v0, p1

    check-cast v0, Landroid/support/transition/Transition;

    .line 265
    .local v0, "transition":Landroid/support/transition/Transition;
    instance-of v1, v0, Landroid/support/transition/TransitionSet;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 266
    move-object v1, v0

    check-cast v1, Landroid/support/transition/TransitionSet;

    .line 267
    .local v1, "set":Landroid/support/transition/TransitionSet;
    invoke-virtual {v1}, Landroid/support/transition/TransitionSet;->getTransitionCount()I

    move-result v3

    .line 268
    .local v3, "numTransitions":I
    nop

    .line 268
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 269
    invoke-virtual {v1, v2}, Landroid/support/transition/TransitionSet;->getTransitionAt(I)Landroid/support/transition/Transition;

    move-result-object v4

    .line 270
    .local v4, "child":Landroid/support/transition/Transition;
    invoke-virtual {p0, v4, p2, p3}, Landroid/support/transition/FragmentTransitionSupport;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 268
    .end local v4    # "child":Landroid/support/transition/Transition;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 272
    .end local v1    # "set":Landroid/support/transition/TransitionSet;
    .end local v2    # "i":I
    .end local v3    # "numTransitions":I
    :cond_0
    goto :goto_4

    :cond_1
    invoke-static {v0}, Landroid/support/transition/FragmentTransitionSupport;->hasSimpleTarget(Landroid/support/transition/Transition;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 273
    invoke-virtual {v0}, Landroid/support/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v1

    .line 274
    .local v1, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 275
    invoke-interface {v1, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 277
    if-nez p3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 278
    .local v3, "targetCount":I
    :goto_1
    nop

    .line 278
    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v3, :cond_3

    .line 279
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/support/transition/Transition;->addTarget(Landroid/view/View;)Landroid/support/transition/Transition;

    .line 278
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 281
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 281
    .restart local v2    # "i":I
    :goto_3
    if-ltz v2, :cond_4

    .line 282
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/support/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/support/transition/Transition;

    .line 281
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 286
    .end local v1    # "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v2    # "i":I
    .end local v3    # "targetCount":I
    :cond_4
    :goto_4
    return-void
.end method

.method public scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "exitTransitionObj"    # Ljava/lang/Object;
    .param p2, "fragmentView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 146
    .local p3, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v0, p1

    check-cast v0, Landroid/support/transition/Transition;

    .line 147
    .local v0, "exitTransition":Landroid/support/transition/Transition;
    new-instance v1, Landroid/support/transition/FragmentTransitionSupport$2;

    invoke-direct {v1, p0, p2, p3}, Landroid/support/transition/FragmentTransitionSupport$2;-><init>(Landroid/support/transition/FragmentTransitionSupport;Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/support/transition/Transition;->addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    .line 174
    return-void
.end method

.method public scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 10
    .param p1, "overallTransitionObj"    # Ljava/lang/Object;
    .param p2, "enterTransition"    # Ljava/lang/Object;
    .param p4, "exitTransition"    # Ljava/lang/Object;
    .param p6, "sharedElementTransition"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 217
    .local p3, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p5, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p7, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v0, p1

    check-cast v0, Landroid/support/transition/Transition;

    .line 218
    .local v0, "overallTransition":Landroid/support/transition/Transition;
    new-instance v9, Landroid/support/transition/FragmentTransitionSupport$3;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Landroid/support/transition/FragmentTransitionSupport$3;-><init>(Landroid/support/transition/FragmentTransitionSupport;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v9}, Landroid/support/transition/Transition;->addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    .line 248
    return-void
.end method

.method public setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "transitionObj"    # Ljava/lang/Object;
    .param p2, "epicenter"    # Landroid/graphics/Rect;

    .line 306
    if-eqz p1, :cond_0

    .line 307
    move-object v0, p1

    check-cast v0, Landroid/support/transition/Transition;

    .line 308
    .local v0, "transition":Landroid/support/transition/Transition;
    new-instance v1, Landroid/support/transition/FragmentTransitionSupport$4;

    invoke-direct {v1, p0, p2}, Landroid/support/transition/FragmentTransitionSupport$4;-><init>(Landroid/support/transition/FragmentTransitionSupport;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/support/transition/Transition;->setEpicenterCallback(Landroid/support/transition/Transition$EpicenterCallback;)V

    .line 318
    .end local v0    # "transition":Landroid/support/transition/Transition;
    :cond_0
    return-void
.end method

.method public setEpicenter(Ljava/lang/Object;Landroid/view/View;)V
    .locals 3
    .param p1, "transitionObj"    # Ljava/lang/Object;
    .param p2, "view"    # Landroid/view/View;

    .line 82
    if-eqz p2, :cond_0

    .line 83
    move-object v0, p1

    check-cast v0, Landroid/support/transition/Transition;

    .line 84
    .local v0, "transition":Landroid/support/transition/Transition;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 85
    .local v1, "epicenter":Landroid/graphics/Rect;
    invoke-virtual {p0, p2, v1}, Landroid/support/transition/FragmentTransitionSupport;->getBoundsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 87
    new-instance v2, Landroid/support/transition/FragmentTransitionSupport$1;

    invoke-direct {v2, p0, v1}, Landroid/support/transition/FragmentTransitionSupport$1;-><init>(Landroid/support/transition/FragmentTransitionSupport;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v2}, Landroid/support/transition/Transition;->setEpicenterCallback(Landroid/support/transition/Transition$EpicenterCallback;)V

    .line 94
    .end local v0    # "transition":Landroid/support/transition/Transition;
    .end local v1    # "epicenter":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "transitionObj"    # Ljava/lang/Object;
    .param p2, "nonExistentView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 67
    .local p3, "sharedViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v0, p1

    check-cast v0, Landroid/support/transition/TransitionSet;

    .line 68
    .local v0, "transition":Landroid/support/transition/TransitionSet;
    invoke-virtual {v0}, Landroid/support/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v1

    .line 69
    .local v1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 70
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 71
    .local v2, "count":I
    const/4 v3, 0x0

    .line 71
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 72
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 73
    .local v4, "view":Landroid/view/View;
    invoke-static {v1, v4}, Landroid/support/transition/FragmentTransitionSupport;->bfsAddViewChildren(Ljava/util/List;Landroid/view/View;)V

    .line 71
    .end local v4    # "view":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 75
    .end local v3    # "i":I
    :cond_0
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {p0, v0, p3}, Landroid/support/transition/FragmentTransitionSupport;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 78
    return-void
.end method

.method public swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "sharedElementTransitionObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 253
    .local p2, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p3, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v0, p1

    check-cast v0, Landroid/support/transition/TransitionSet;

    .line 254
    .local v0, "sharedElementTransition":Landroid/support/transition/TransitionSet;
    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Landroid/support/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 256
    invoke-virtual {v0}, Landroid/support/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 257
    invoke-virtual {p0, v0, p2, p3}, Landroid/support/transition/FragmentTransitionSupport;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 259
    :cond_0
    return-void
.end method

.method public wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "transition"    # Ljava/lang/Object;

    .line 56
    if-nez p1, :cond_0

    .line 57
    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_0
    new-instance v0, Landroid/support/transition/TransitionSet;

    invoke-direct {v0}, Landroid/support/transition/TransitionSet;-><init>()V

    .line 60
    .local v0, "transitionSet":Landroid/support/transition/TransitionSet;
    move-object v1, p1

    check-cast v1, Landroid/support/transition/Transition;

    invoke-virtual {v0, v1}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    .line 61
    return-object v0
.end method
