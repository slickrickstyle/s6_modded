.class public Lcom/sec/android/app/camera/command/VideoCollageTypeMenuSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "VideoCollageTypeMenuSelectCommand.java"


# instance fields
.field private final mReceiver:Lcom/sec/android/app/camera/interfaces/CommandInterface;

.field private mType:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CommandInterface;I)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/command/VideoCollageTypeMenuSelectCommand;->mReceiver:Lcom/sec/android/app/camera/interfaces/CommandInterface;

    invoke-static {p2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/command/VideoCollageTypeMenuSelectCommand;->mType:I

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/command/VideoCollageTypeMenuSelectCommand;->mReceiver:Lcom/sec/android/app/camera/interfaces/CommandInterface;

    iget v1, p0, Lcom/sec/android/app/camera/command/VideoCollageTypeMenuSelectCommand;->mType:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onVideoCollageTypeMenuSelect(I)Z

    move-result v0

    return v0
.end method
