.class public Lcom/android/keyguard/util/KeyguardWallpaperUser;
.super Ljava/lang/Object;
.source "KeyguardWallpaperUser.java"


# instance fields
.field private mImagePath:Ljava/lang/String;

.field private userId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/keyguard/util/KeyguardWallpaperUser;->userId:I

    iput-object p2, p0, Lcom/android/keyguard/util/KeyguardWallpaperUser;->mImagePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getImagePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardWallpaperUser;->mImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/util/KeyguardWallpaperUser;->userId:I

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/util/KeyguardWallpaperUser;->mImagePath:Ljava/lang/String;

    return-void
.end method
