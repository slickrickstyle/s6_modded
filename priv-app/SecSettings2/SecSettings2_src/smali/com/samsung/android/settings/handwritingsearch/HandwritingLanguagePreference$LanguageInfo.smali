.class public Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;
.super Ljava/lang/Object;
.source "HandwritingLanguagePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LanguageInfo"
.end annotation


# instance fields
.field language:Ljava/lang/String;

.field locale:Ljava/util/Locale;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->language:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->locale:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->title:Ljava/lang/String;

    return-object v0
.end method
