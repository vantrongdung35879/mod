.class public Lcom/tencent/gcloud/msdk/api/extend/MSDKExtendRet;
.super Lcom/tencent/gcloud/msdk/api/MSDKRet;
.source "MSDKExtendRet.java"


# instance fields
.field public channel:Ljava/lang/String;
    .annotation runtime Lcom/tencent/gcloud/msdk/tools/json/JsonProp;
        value = "channel"
    .end annotation
.end field

.field public extendMethodName:Ljava/lang/String;
    .annotation runtime Lcom/tencent/gcloud/msdk/tools/json/JsonProp;
        value = "extend_method_name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "methodNameID",
            "code",
            "channel",
            "extendMethodName"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(II)V

    .line 26
    iput-object p3, p0, Lcom/tencent/gcloud/msdk/api/extend/MSDKExtendRet;->channel:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/tencent/gcloud/msdk/api/extend/MSDKExtendRet;->extendMethodName:Ljava/lang/String;

    return-void
.end method
