.class public Lcom/tencent/gcloud/msdk/api/MSDKRet;
.super Lcom/tencent/gcloud/msdk/tools/json/JsonSerializable;
.source "MSDKRet.java"


# instance fields
.field public extraJson:Ljava/lang/String;
    .annotation runtime Lcom/tencent/gcloud/msdk/tools/json/JsonProp;
        value = "extraJson"
    .end annotation
.end field

.field public methodNameID:I
    .annotation runtime Lcom/tencent/gcloud/msdk/tools/json/JsonProp;
        value = "methodNameID"
    .end annotation
.end field

.field public retCode:I
    .annotation runtime Lcom/tencent/gcloud/msdk/tools/json/JsonProp;
        value = "retCode"
    .end annotation
.end field

.field public retMsg:Ljava/lang/String;
    .annotation runtime Lcom/tencent/gcloud/msdk/tools/json/JsonProp;
        value = "retMsg"
    .end annotation
.end field

.field public thirdCode:I
    .annotation runtime Lcom/tencent/gcloud/msdk/tools/json/JsonProp;
        value = "ret"
    .end annotation
.end field

.field public thirdMsg:Ljava/lang/String;
    .annotation runtime Lcom/tencent/gcloud/msdk/tools/json/JsonProp;
        value = "msg"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/tools/json/JsonSerializable;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/tools/json/JsonSerializable;-><init>()V

    .line 41
    iput p1, p0, Lcom/tencent/gcloud/msdk/api/MSDKRet;->retCode:I

    .line 42
    invoke-static {p1}, Lcom/tencent/gcloud/msdk/core/MSDKErrorCode;->get(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/gcloud/msdk/api/MSDKRet;->retMsg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "methodNameID",
            "code"
        }
    .end annotation

    const/4 v0, 0x1

    .line 46
    const-string v1, ""

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "methodNameID",
            "code",
            "thirdCode"
        }
    .end annotation

    .line 70
    invoke-static {p2}, Lcom/tencent/gcloud/msdk/core/MSDKErrorCode;->get(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 6
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
            "thirdCode",
            "thirdMsg"
        }
    .end annotation

    .line 58
    invoke-static {p2}, Lcom/tencent/gcloud/msdk/core/MSDKErrorCode;->get(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "thirdCode",
            "thirdMsg"
        }
    .end annotation

    const/4 v1, 0x0

    .line 74
    invoke-static {p1}, Lcom/tencent/gcloud/msdk/core/MSDKErrorCode;->get(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move v2, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "methodNameID",
            "code",
            "msg",
            "thirdCode",
            "thirdMsg"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/tools/json/JsonSerializable;-><init>()V

    .line 62
    iput p2, p0, Lcom/tencent/gcloud/msdk/api/MSDKRet;->retCode:I

    .line 63
    iput-object p3, p0, Lcom/tencent/gcloud/msdk/api/MSDKRet;->retMsg:Ljava/lang/String;

    .line 64
    iput p4, p0, Lcom/tencent/gcloud/msdk/api/MSDKRet;->thirdCode:I

    .line 65
    iput-object p5, p0, Lcom/tencent/gcloud/msdk/api/MSDKRet;->thirdMsg:Ljava/lang/String;

    .line 66
    iput p1, p0, Lcom/tencent/gcloud/msdk/api/MSDKRet;->methodNameID:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonStr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1}, Lcom/tencent/gcloud/msdk/tools/json/JsonSerializable;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonObj"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1}, Lcom/tencent/gcloud/msdk/tools/json/JsonSerializable;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MSDKRet{methodNameID="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/gcloud/msdk/api/MSDKRet;->methodNameID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", retCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/gcloud/msdk/api/MSDKRet;->retCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", retMsg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/MSDKRet;->retMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', thirdCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/gcloud/msdk/api/MSDKRet;->thirdCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", thirdMsg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/MSDKRet;->thirdMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', extraJson=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/MSDKRet;->extraJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
