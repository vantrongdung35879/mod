.class public interface abstract Lcom/tencent/gcloud/msdk/core/login/LoginInterface;
.super Ljava/lang/Object;
.source "LoginInterface.java"


# static fields
.field public static final LOGIN_TYPE_UNDEFINE:I = -0x1


# virtual methods
.method public abstract login(Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation
.end method

.method public abstract logout(Lcom/tencent/gcloud/msdk/api/MSDKBaseParams;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation
.end method
