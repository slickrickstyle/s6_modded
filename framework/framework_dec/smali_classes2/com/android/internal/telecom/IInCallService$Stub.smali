.class public abstract Lcom/android/internal/telecom/IInCallService$Stub;
.super Landroid/os/Binder;
.source "IInCallService.java"

# interfaces
.implements Lcom/android/internal/telecom/IInCallService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IInCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IInCallService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IInCallService"

.field static final TRANSACTION_addCall:I = 0x2

.field static final TRANSACTION_bringToForeground:I = 0x7

.field static final TRANSACTION_onCallAudioStateChanged:I = 0x6

.field static final TRANSACTION_onCanAddCallChanged:I = 0x8

.field static final TRANSACTION_onChangeInContent:I = 0xb

.field static final TRANSACTION_onConnectionEvent:I = 0xa

.field static final TRANSACTION_setInCallAdapter:I = 0x1

.field static final TRANSACTION_setPostDial:I = 0x4

.field static final TRANSACTION_setPostDialWait:I = 0x5

.field static final TRANSACTION_silenceRinger:I = 0x9

.field static final TRANSACTION_updateCall:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IInCallService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IInCallService;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.android.internal.telecom.IInCallService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telecom/IInCallService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/telecom/IInCallService;

    return-object v0

    :cond_1
    new-instance v1, Lcom/android/internal/telecom/IInCallService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/IInCallService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v8, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    return v8

    :sswitch_0
    const-string/jumbo v9, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v8

    :sswitch_1
    const-string/jumbo v9, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IInCallAdapter;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telecom/IInCallService$Stub;->setInCallAdapter(Lcom/android/internal/telecom/IInCallAdapter;)V

    return v8

    :sswitch_2
    const-string/jumbo v9, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_0

    sget-object v9, Landroid/telecom/ParcelableCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/ParcelableCall;

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallService$Stub;->addCall(Landroid/telecom/ParcelableCall;)V

    return v8

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :sswitch_3
    const-string/jumbo v9, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1

    sget-object v9, Landroid/telecom/ParcelableCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/ParcelableCall;

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallService$Stub;->updateCall(Landroid/telecom/ParcelableCall;)V

    return v8

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :sswitch_4
    const-string/jumbo v9, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v6}, Lcom/android/internal/telecom/IInCallService$Stub;->setPostDial(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :sswitch_5
    const-string/jumbo v9, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v6}, Lcom/android/internal/telecom/IInCallService$Stub;->setPostDialWait(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :sswitch_6
    const-string/jumbo v9, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_2

    sget-object v9, Landroid/telecom/CallAudioState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallAudioState;

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IInCallService$Stub;->onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    return v8

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :sswitch_7
    const-string/jumbo v9, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3

    move v5, v8

    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/internal/telecom/IInCallService$Stub;->bringToForeground(Z)V

    return v8

    :sswitch_8
    const-string/jumbo v9, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_4

    move v5, v8

    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/internal/telecom/IInCallService$Stub;->onCanAddCallChanged(Z)V

    return v8

    :sswitch_9
    const-string/jumbo v9, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telecom/IInCallService$Stub;->silenceRinger()V

    return v8

    :sswitch_a
    const-string/jumbo v9, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_5

    sget-object v9, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    :goto_3
    invoke-virtual {p0, v4, v6, v7}, Lcom/android/internal/telecom/IInCallService$Stub;->onConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return v8

    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    :sswitch_b
    const-string/jumbo v9, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IInCallService$Stub;->onChangeInContent(I)V

    return v8

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
