.class public abstract Landroid/support/customtabs/ICustomTabsService$Stub;
.super Landroid/os/Binder;
.source "ICustomTabsService.java"

# interfaces
.implements Landroid/support/customtabs/ICustomTabsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/customtabs/ICustomTabsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.support.customtabs.ICustomTabsService"

.field static final TRANSACTION_extraCommand:I = 0x5

.field static final TRANSACTION_mayLaunchUrl:I = 0x4

.field static final TRANSACTION_newSession:I = 0x3

.field static final TRANSACTION_postMessage:I = 0x8

.field static final TRANSACTION_requestPostMessageChannel:I = 0x7

.field static final TRANSACTION_updateVisuals:I = 0x6

.field static final TRANSACTION_validateRelationship:I = 0x9

.field static final TRANSACTION_warmup:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {p0, p0, v0}, Landroid/support/customtabs/ICustomTabsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/ICustomTabsService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    return-object v0

    .line 30
    :cond_0
    const-string v0, "android.support.customtabs.ICustomTabsService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/support/customtabs/ICustomTabsService;

    if-eqz v1, :cond_1

    .line 32
    move-object v1, v0

    check-cast v1, Landroid/support/customtabs/ICustomTabsService;

    return-object v1

    .line 34
    :cond_1
    new-instance v1, Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/support/customtabs/ICustomTabsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_9

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 198
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 173
    :pswitch_0
    const-string v2, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/support/customtabs/ICustomTabsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/ICustomTabsCallback;

    move-result-object v2

    .line 177
    .local v2, "_arg0":Landroid/support/customtabs/ICustomTabsCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 179
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 180
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 180
    .local v4, "_arg2":Landroid/net/Uri;
    goto :goto_0

    .line 183
    .end local v4    # "_arg2":Landroid/net/Uri;
    :cond_0
    move-object v4, v0

    .line 186
    .restart local v4    # "_arg2":Landroid/net/Uri;
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 187
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 187
    .local v0, "_arg3":Landroid/os/Bundle;
    goto :goto_1

    .line 190
    .end local v0    # "_arg3":Landroid/os/Bundle;
    :cond_1
    nop

    .line 192
    .restart local v0    # "_arg3":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p0, v2, v3, v4, v0}, Landroid/support/customtabs/ICustomTabsService$Stub;->validateRelationship(Landroid/support/customtabs/ICustomTabsCallback;ILandroid/net/Uri;Landroid/os/Bundle;)Z

    move-result v5

    .line 193
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    return v1

    .line 154
    .end local v0    # "_arg3":Landroid/os/Bundle;
    .end local v2    # "_arg0":Landroid/support/customtabs/ICustomTabsCallback;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/net/Uri;
    .end local v5    # "_result":Z
    :pswitch_1
    const-string v2, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/support/customtabs/ICustomTabsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/ICustomTabsCallback;

    move-result-object v2

    .line 158
    .restart local v2    # "_arg0":Landroid/support/customtabs/ICustomTabsCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 161
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 161
    .local v0, "_arg2":Landroid/os/Bundle;
    goto :goto_2

    .line 164
    .end local v0    # "_arg2":Landroid/os/Bundle;
    :cond_2
    nop

    .line 166
    .restart local v0    # "_arg2":Landroid/os/Bundle;
    :goto_2
    invoke-virtual {p0, v2, v3, v0}, Landroid/support/customtabs/ICustomTabsService$Stub;->postMessage(Landroid/support/customtabs/ICustomTabsCallback;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v4

    .line 167
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    return v1

    .line 137
    .end local v0    # "_arg2":Landroid/os/Bundle;
    .end local v2    # "_arg0":Landroid/support/customtabs/ICustomTabsCallback;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_2
    const-string v2, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/support/customtabs/ICustomTabsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/ICustomTabsCallback;

    move-result-object v2

    .line 141
    .restart local v2    # "_arg0":Landroid/support/customtabs/ICustomTabsCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 142
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 142
    .local v0, "_arg1":Landroid/net/Uri;
    goto :goto_3

    .line 145
    .end local v0    # "_arg1":Landroid/net/Uri;
    :cond_3
    nop

    .line 147
    .restart local v0    # "_arg1":Landroid/net/Uri;
    :goto_3
    invoke-virtual {p0, v2, v0}, Landroid/support/customtabs/ICustomTabsService$Stub;->requestPostMessageChannel(Landroid/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;)Z

    move-result v3

    .line 148
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    return v1

    .line 120
    .end local v0    # "_arg1":Landroid/net/Uri;
    .end local v2    # "_arg0":Landroid/support/customtabs/ICustomTabsCallback;
    .end local v3    # "_result":Z
    :pswitch_3
    const-string v2, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/support/customtabs/ICustomTabsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/ICustomTabsCallback;

    move-result-object v2

    .line 124
    .restart local v2    # "_arg0":Landroid/support/customtabs/ICustomTabsCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 125
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 125
    .local v0, "_arg1":Landroid/os/Bundle;
    goto :goto_4

    .line 128
    .end local v0    # "_arg1":Landroid/os/Bundle;
    :cond_4
    nop

    .line 130
    .restart local v0    # "_arg1":Landroid/os/Bundle;
    :goto_4
    invoke-virtual {p0, v2, v0}, Landroid/support/customtabs/ICustomTabsService$Stub;->updateVisuals(Landroid/support/customtabs/ICustomTabsCallback;Landroid/os/Bundle;)Z

    move-result v3

    .line 131
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    return v1

    .line 97
    .end local v0    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg0":Landroid/support/customtabs/ICustomTabsCallback;
    .end local v3    # "_result":Z
    :pswitch_4
    const-string v2, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    .line 102
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 102
    .restart local v0    # "_arg1":Landroid/os/Bundle;
    goto :goto_5

    .line 105
    .end local v0    # "_arg1":Landroid/os/Bundle;
    :cond_5
    nop

    .line 107
    .restart local v0    # "_arg1":Landroid/os/Bundle;
    :goto_5
    invoke-virtual {p0, v2, v0}, Landroid/support/customtabs/ICustomTabsService$Stub;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 108
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v3, :cond_6

    .line 110
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    invoke-virtual {v3, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    .line 114
    :cond_6
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    :goto_6
    return v1

    .line 71
    .end local v0    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/Bundle;
    :pswitch_5
    const-string v2, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/support/customtabs/ICustomTabsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/ICustomTabsCallback;

    move-result-object v2

    .line 75
    .local v2, "_arg0":Landroid/support/customtabs/ICustomTabsCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    .line 76
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 76
    .local v3, "_arg1":Landroid/net/Uri;
    goto :goto_7

    .line 79
    .end local v3    # "_arg1":Landroid/net/Uri;
    :cond_7
    move-object v3, v0

    .line 82
    .restart local v3    # "_arg1":Landroid/net/Uri;
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    .line 83
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 83
    .local v0, "_arg2":Landroid/os/Bundle;
    goto :goto_8

    .line 86
    .end local v0    # "_arg2":Landroid/os/Bundle;
    :cond_8
    nop

    .line 89
    .restart local v0    # "_arg2":Landroid/os/Bundle;
    :goto_8
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    .line 90
    .local v4, "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-virtual {p0, v2, v3, v0, v4}, Landroid/support/customtabs/ICustomTabsService$Stub;->mayLaunchUrl(Landroid/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result v5

    .line 91
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    return v1

    .line 61
    .end local v0    # "_arg2":Landroid/os/Bundle;
    .end local v2    # "_arg0":Landroid/support/customtabs/ICustomTabsCallback;
    .end local v3    # "_arg1":Landroid/net/Uri;
    .end local v4    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .end local v5    # "_result":Z
    :pswitch_6
    const-string v0, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/support/customtabs/ICustomTabsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/ICustomTabsCallback;

    move-result-object v0

    .line 64
    .local v0, "_arg0":Landroid/support/customtabs/ICustomTabsCallback;
    invoke-virtual {p0, v0}, Landroid/support/customtabs/ICustomTabsService$Stub;->newSession(Landroid/support/customtabs/ICustomTabsCallback;)Z

    move-result v2

    .line 65
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    return v1

    .line 51
    .end local v0    # "_arg0":Landroid/support/customtabs/ICustomTabsCallback;
    .end local v2    # "_result":Z
    :pswitch_7
    const-string v0, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 54
    .local v2, "_arg0":J
    invoke-virtual {p0, v2, v3}, Landroid/support/customtabs/ICustomTabsService$Stub;->warmup(J)Z

    move-result v0

    .line 55
    .local v0, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    return v1

    .line 46
    .end local v0    # "_result":Z
    .end local v2    # "_arg0":J
    :cond_9
    const-string v0, "android.support.customtabs.ICustomTabsService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
