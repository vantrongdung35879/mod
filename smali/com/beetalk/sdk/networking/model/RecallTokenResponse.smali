.class public Lcom/beetalk/sdk/networking/model/RecallTokenResponse;
.super Lcom/beetalk/sdk/networking/model/BaseResponse;
.source "RecallTokenResponse.java"


# instance fields
.field private tokens:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tokens"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/beetalk/sdk/networking/model/RecallToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/beetalk/sdk/networking/model/BaseResponse;-><init>()V

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/networking/model/RecallTokenResponse;->tokens:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getTokens()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/beetalk/sdk/networking/model/RecallToken;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/beetalk/sdk/networking/model/RecallTokenResponse;->tokens:Ljava/util/List;

    return-object v0
.end method
