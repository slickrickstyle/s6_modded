.class final enum Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;
.super Ljava/lang/Enum;
.source "SemApexParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/apex/motionphoto/SemApexParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

.field public static final enum FLOAT:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

.field public static final enum INT:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

.field public static final enum INTARRAY:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

.field public static final enum LONG:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

.field public static final enum LONGARRAY:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

.field public static final enum STRING:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

.field public static final enum STRINGARRAY:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

.field public static final enum ULONGARRAY:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;


# instance fields
.field private val:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    const-string v1, "INT"

    invoke-static {}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->access$000()[I

    move-result-object v2

    aget v2, v2, v5

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->INT:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    new-instance v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    const-string v1, "LONG"

    invoke-static {}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->access$000()[I

    move-result-object v2

    aget v2, v2, v6

    invoke-direct {v0, v1, v6, v2}, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->LONG:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    new-instance v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    const-string v1, "FLOAT"

    invoke-static {}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->access$000()[I

    move-result-object v2

    aget v2, v2, v7

    invoke-direct {v0, v1, v7, v2}, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->FLOAT:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    new-instance v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    const-string v1, "STRING"

    invoke-static {}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->access$000()[I

    move-result-object v2

    aget v2, v2, v8

    invoke-direct {v0, v1, v8, v2}, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->STRING:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    new-instance v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    const-string v1, "INTARRAY"

    invoke-static {}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->access$000()[I

    move-result-object v2

    aget v2, v2, v9

    invoke-direct {v0, v1, v9, v2}, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->INTARRAY:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    new-instance v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    const-string v1, "LONGARRAY"

    const/4 v2, 0x5

    invoke-static {}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->access$000()[I

    move-result-object v3

    const/4 v4, 0x5

    aget v3, v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->LONGARRAY:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    new-instance v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    const-string v1, "ULONGARRAY"

    const/4 v2, 0x6

    invoke-static {}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->access$000()[I

    move-result-object v3

    const/4 v4, 0x6

    aget v3, v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->ULONGARRAY:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    new-instance v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    const-string v1, "STRINGARRAY"

    const/4 v2, 0x7

    invoke-static {}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->access$000()[I

    move-result-object v3

    const/4 v4, 0x7

    aget v3, v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->STRINGARRAY:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    sget-object v1, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->INT:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->LONG:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->FLOAT:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->STRING:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->INTARRAY:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->LONGARRAY:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->ULONGARRAY:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->STRINGARRAY:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->$VALUES:[Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->val:I

    return-void
.end method

.method static valueOf(I)Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;
    .locals 1

    sget-object v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->INT:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    iget v0, v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->val:I

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->INT:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->LONG:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    iget v0, v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->val:I

    if-ne p0, v0, :cond_1

    sget-object v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->LONG:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->FLOAT:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    iget v0, v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->val:I

    if-ne p0, v0, :cond_2

    sget-object v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->FLOAT:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->STRING:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    iget v0, v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->val:I

    if-ne p0, v0, :cond_3

    sget-object v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->STRING:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->INTARRAY:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    iget v0, v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->val:I

    if-ne p0, v0, :cond_4

    sget-object v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->INTARRAY:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->LONGARRAY:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    iget v0, v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->val:I

    if-ne p0, v0, :cond_5

    sget-object v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->LONGARRAY:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->STRINGARRAY:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;
    .locals 1

    const-class v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;
    .locals 1

    sget-object v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->$VALUES:[Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    invoke-virtual {v0}, [Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->val:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
