.class public Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo$DayInfo;
.super Ljava/lang/Object;
.source "AccuForecastInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DayInfo"
.end annotation


# instance fields
.field public LongPhrase:Ljava/lang/String;

.field public PrecipitationProbability:I

.field public RainProbability:I

.field public SnowProbability:I

.field public ThunderstormProbability:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
