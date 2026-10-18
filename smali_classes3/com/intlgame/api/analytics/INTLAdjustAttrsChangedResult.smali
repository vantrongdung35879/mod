.class public Lcom/intlgame/api/analytics/INTLAdjustAttrsChangedResult;
.super Lcom/intlgame/api/INTLResult;
.source "INTLAdjustAttrsChangedResult.java"


# instance fields
.field public adjust_attribution_:Ljava/lang/String;
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "adjust_attribution"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Lcom/intlgame/api/INTLResult;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/intlgame/api/analytics/INTLAdjustAttrsChangedResult;->ret_code_:I

    .line 14
    invoke-static {v0}, Lcom/intlgame/tools/IT;->getRetMsg(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/intlgame/api/analytics/INTLAdjustAttrsChangedResult;->ret_msg_:Ljava/lang/String;

    .line 15
    iput v0, p0, Lcom/intlgame/api/analytics/INTLAdjustAttrsChangedResult;->third_code_:I

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/intlgame/api/analytics/INTLAdjustAttrsChangedResult;->third_msg_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "INTLAdjustAttrsChangedResult{adjustAttribution=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/intlgame/api/analytics/INTLAdjustAttrsChangedResult;->adjust_attribution_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
