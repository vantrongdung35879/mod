.class public final Lcom/beetalk/sdk/tiktok/TiktokVideoShareContent$Builder;
.super Ljava/lang/Object;
.source "TiktokVideoShareContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/tiktok/TiktokVideoShareContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field videoContents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/garena/android/share/model/ShareVideoContent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/beetalk/sdk/tiktok/TiktokVideoShareContent$Builder;->videoContents:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addVideo(I)Lcom/beetalk/sdk/tiktok/TiktokVideoShareContent$Builder;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/beetalk/sdk/tiktok/TiktokVideoShareContent$Builder;->isFileCountNotExceed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Lcom/garena/android/share/model/ShareVideoContent$Builder;

    invoke-direct {v0}, Lcom/garena/android/share/model/ShareVideoContent$Builder;-><init>()V

    .line 78
    invoke-virtual {v0, p1}, Lcom/garena/android/share/model/ShareVideoContent$Builder;->setRawVideoRes(I)Lcom/garena/android/share/model/ShareVideoContent$Builder;

    .line 79
    iget-object p1, p0, Lcom/beetalk/sdk/tiktok/TiktokVideoShareContent$Builder;->videoContents:Ljava/util/List;

    invoke-virtual {v0}, Lcom/garena/android/share/model/ShareVideoContent$Builder;->build()Lcom/garena/android/share/model/ShareVideoContent;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public addVideo(Ljava/lang/String;)Lcom/beetalk/sdk/tiktok/TiktokVideoShareContent$Builder;
    .locals 1

    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/beetalk/sdk/tiktok/TiktokVideoShareContent$Builder;->isFileCountNotExceed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Lcom/garena/android/share/model/ShareVideoContent$Builder;

    invoke-direct {v0}, Lcom/garena/android/share/model/ShareVideoContent$Builder;-><init>()V

    .line 69
    invoke-virtual {v0, p1}, Lcom/garena/android/share/model/ShareVideoContent$Builder;->setVideoPath(Ljava/lang/String;)Lcom/garena/android/share/model/ShareVideoContent$Builder;

    .line 70
    iget-object p1, p0, Lcom/beetalk/sdk/tiktok/TiktokVideoShareContent$Builder;->videoContents:Ljava/util/List;

    invoke-virtual {v0}, Lcom/garena/android/share/model/ShareVideoContent$Builder;->build()Lcom/garena/android/share/model/ShareVideoContent;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public build()Lcom/beetalk/sdk/tiktok/TiktokVideoShareContent;
    .locals 2

    .line 89
    new-instance v0, Lcom/beetalk/sdk/tiktok/TiktokVideoShareContent;

    iget-object v1, p0, Lcom/beetalk/sdk/tiktok/TiktokVideoShareContent$Builder;->videoContents:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/beetalk/sdk/tiktok/TiktokVideoShareContent;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public isFileCountNotExceed()Z
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/beetalk/sdk/tiktok/TiktokVideoShareContent$Builder;->videoContents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
