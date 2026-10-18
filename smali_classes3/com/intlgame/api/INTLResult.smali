.class public Lcom/intlgame/api/INTLResult;
.super Lcom/intlgame/tools/json/JsonSerializable;
.source "INTLResult.java"


# instance fields
.field public extra_json_:Ljava/lang/String;
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "extraJson"
    .end annotation
.end field

.field public method_id_:I
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "methodID"
    .end annotation
.end field

.field public ret_code_:I
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "retCode"
    .end annotation
.end field

.field public ret_msg_:Ljava/lang/String;
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "retMsg"
    .end annotation
.end field

.field public sub_ret_code_:I
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "sub_ret"
    .end annotation
.end field

.field public third_code_:I
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "ret"
    .end annotation
.end field

.field public third_msg_:Ljava/lang/String;
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "msg"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/intlgame/tools/json/JsonSerializable;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/intlgame/tools/json/JsonSerializable;-><init>()V

    .line 43
    iput p1, p0, Lcom/intlgame/api/INTLResult;->ret_code_:I

    .line 44
    invoke-static {p1}, Lcom/intlgame/core/INTLErrorCode;->get(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/intlgame/api/INTLResult;->ret_msg_:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    const/4 v0, 0x0

    .line 48
    const-string v1, ""

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/intlgame/api/INTLResult;-><init>(IIILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 6

    .line 72
    invoke-static {p2}, Lcom/intlgame/core/INTLErrorCode;->get(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/intlgame/api/INTLResult;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 6

    .line 60
    invoke-static {p2}, Lcom/intlgame/core/INTLErrorCode;->get(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/intlgame/api/INTLResult;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    .line 76
    invoke-static {p1}, Lcom/intlgame/core/INTLErrorCode;->get(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move v2, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/intlgame/api/INTLResult;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/intlgame/tools/json/JsonSerializable;-><init>()V

    .line 64
    iput p2, p0, Lcom/intlgame/api/INTLResult;->ret_code_:I

    .line 65
    iput-object p3, p0, Lcom/intlgame/api/INTLResult;->ret_msg_:Ljava/lang/String;

    .line 66
    iput p4, p0, Lcom/intlgame/api/INTLResult;->third_code_:I

    .line 67
    iput-object p5, p0, Lcom/intlgame/api/INTLResult;->third_msg_:Ljava/lang/String;

    .line 68
    iput p1, p0, Lcom/intlgame/api/INTLResult;->method_id_:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1}, Lcom/intlgame/tools/json/JsonSerializable;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1}, Lcom/intlgame/tools/json/JsonSerializable;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "INTLResult{methodNameID="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/intlgame/api/INTLResult;->method_id_:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", retCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/intlgame/api/INTLResult;->ret_code_:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", retMsg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intlgame/api/INTLResult;->ret_msg_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', thirdCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/intlgame/api/INTLResult;->third_code_:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", thirdMsg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intlgame/api/INTLResult;->third_msg_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', extraJson=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intlgame/api/INTLResult;->extra_json_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', subRetCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/intlgame/api/INTLResult;->sub_ret_code_:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
