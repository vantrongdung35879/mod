.class public abstract Lcom/tencent/gcloud/msdk/core/interfaces/IActivityEventHandler;
.super Ljava/lang/Object;
.source "IActivityEventHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onActivityResult(IILandroid/content/Intent;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method
