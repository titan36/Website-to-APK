.class Landroid/support/v4/media/MediaDescriptionCompatApi21$Builder;
.super Ljava/lang/Object;
.source "MediaDescriptionCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaDescriptionCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "builderObj"    # Ljava/lang/Object;

    .line 99
    move-object v0, p0

    check-cast v0, Landroid/media/MediaDescription$Builder;

    invoke-virtual {v0}, Landroid/media/MediaDescription$Builder;->build()Landroid/media/MediaDescription;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance()Ljava/lang/Object;
    .locals 1

    .line 66
    new-instance v0, Landroid/media/MediaDescription$Builder;

    invoke-direct {v0}, Landroid/media/MediaDescription$Builder;-><init>()V

    return-object v0
.end method

.method public static setDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "builderObj"    # Ljava/lang/Object;
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 83
    move-object v0, p0

    check-cast v0, Landroid/media/MediaDescription$Builder;

    invoke-virtual {v0, p1}, Landroid/media/MediaDescription$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    .line 84
    return-void
.end method

.method public static setExtras(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "builderObj"    # Ljava/lang/Object;
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 95
    move-object v0, p0

    check-cast v0, Landroid/media/MediaDescription$Builder;

    invoke-virtual {v0, p1}, Landroid/media/MediaDescription$Builder;->setExtras(Landroid/os/Bundle;)Landroid/media/MediaDescription$Builder;

    .line 96
    return-void
.end method

.method public static setIconBitmap(Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "builderObj"    # Ljava/lang/Object;
    .param p1, "iconBitmap"    # Landroid/graphics/Bitmap;

    .line 87
    move-object v0, p0

    check-cast v0, Landroid/media/MediaDescription$Builder;

    invoke-virtual {v0, p1}, Landroid/media/MediaDescription$Builder;->setIconBitmap(Landroid/graphics/Bitmap;)Landroid/media/MediaDescription$Builder;

    .line 88
    return-void
.end method

.method public static setIconUri(Ljava/lang/Object;Landroid/net/Uri;)V
    .locals 1
    .param p0, "builderObj"    # Ljava/lang/Object;
    .param p1, "iconUri"    # Landroid/net/Uri;

    .line 91
    move-object v0, p0

    check-cast v0, Landroid/media/MediaDescription$Builder;

    invoke-virtual {v0, p1}, Landroid/media/MediaDescription$Builder;->setIconUri(Landroid/net/Uri;)Landroid/media/MediaDescription$Builder;

    .line 92
    return-void
.end method

.method public static setMediaId(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "builderObj"    # Ljava/lang/Object;
    .param p1, "mediaId"    # Ljava/lang/String;

    .line 71
    move-object v0, p0

    check-cast v0, Landroid/media/MediaDescription$Builder;

    invoke-virtual {v0, p1}, Landroid/media/MediaDescription$Builder;->setMediaId(Ljava/lang/String;)Landroid/media/MediaDescription$Builder;

    .line 72
    return-void
.end method

.method public static setSubtitle(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "builderObj"    # Ljava/lang/Object;
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 79
    move-object v0, p0

    check-cast v0, Landroid/media/MediaDescription$Builder;

    invoke-virtual {v0, p1}, Landroid/media/MediaDescription$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    .line 80
    return-void
.end method

.method public static setTitle(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "builderObj"    # Ljava/lang/Object;
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 75
    move-object v0, p0

    check-cast v0, Landroid/media/MediaDescription$Builder;

    invoke-virtual {v0, p1}, Landroid/media/MediaDescription$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    .line 76
    return-void
.end method
