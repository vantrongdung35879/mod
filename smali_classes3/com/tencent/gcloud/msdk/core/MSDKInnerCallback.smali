.class public abstract Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;
.super Ljava/lang/Object;
.source "MSDKInnerCallback.java"

# interfaces
.implements Lcom/tencent/gcloud/msdk/api/MSDKResultCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tencent/gcloud/msdk/api/MSDKResultCallback<",
        "Lcom/tencent/gcloud/msdk/api/MSDKRet;",
        ">;"
    }
.end annotation


# instance fields
.field protected mInvokeSeqId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;->mInvokeSeqId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "invokeSeqId"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;->mInvokeSeqId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getInvokeSeqId()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;->mInvokeSeqId:Ljava/lang/String;

    return-object v0
.end method

.method public abstract onNotify(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
