.class final Lcom/samsung/android/knox/keystore/TUIProperty$1;
.super Ljava/lang/Object;
.source "TUIProperty.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/keystore/TUIProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/samsung/android/knox/keystore/TUIProperty;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/keystore/TUIProperty;
    .locals 2

    new-instance v0, Lcom/samsung/android/knox/keystore/TUIProperty;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/knox/keystore/TUIProperty;-><init>(Landroid/os/Parcel;Lcom/samsung/android/knox/keystore/TUIProperty;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/keystore/TUIProperty$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/keystore/TUIProperty;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/android/knox/keystore/TUIProperty;
    .locals 1

    new-array v0, p1, [Lcom/samsung/android/knox/keystore/TUIProperty;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/keystore/TUIProperty$1;->newArray(I)[Lcom/samsung/android/knox/keystore/TUIProperty;

    move-result-object v0

    return-object v0
.end method
