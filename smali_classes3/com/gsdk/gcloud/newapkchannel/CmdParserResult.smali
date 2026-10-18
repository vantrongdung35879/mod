.class public Lcom/gsdk/gcloud/newapkchannel/CmdParserResult;
.super Ljava/lang/Object;
.source "CmdParserResult.java"


# instance fields
.field private apkChannelId:Ljava/lang/String;

.field private code:Ljava/lang/Integer;

.field private minSignatureMd5:Ljava/lang/String;

.field private msg:Ljava/lang/String;

.field private v1SignatureMd5:Ljava/lang/String;

.field private v1SignatureMolo:Ljava/lang/String;

.field private v2SignatureMd5:Ljava/lang/String;

.field private v3SignatureMd5:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/gsdk/gcloud/newapkchannel/CmdParserResult;->code:Ljava/lang/Integer;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/gsdk/gcloud/newapkchannel/CmdParserResult;->msg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getApkChannelId()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/gsdk/gcloud/newapkchannel/CmdParserResult;->apkChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/Integer;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/gsdk/gcloud/newapkchannel/CmdParserResult;->code:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMinSignatureMd5()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/gsdk/gcloud/newapkchannel/CmdParserResult;->minSignatureMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/gsdk/gcloud/newapkchannel/CmdParserResult;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getV1SignatureMd5()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/gsdk/gcloud/newapkchannel/CmdParserResult;->v1SignatureMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getV1SignatureMolo()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/gsdk/gcloud/newapkchannel/CmdParserResult;->v1SignatureMolo:Ljava/lang/String;

    return-object v0
.end method

.method public getV2SignatureMd5()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/gsdk/gcloud/newapkchannel/CmdParserResult;->v2SignatureMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getV3SignatureMd5()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/gsdk/gcloud/newapkchannel/CmdParserResult;->v3SignatureMd5:Ljava/lang/String;

    return-object v0
.end method

.method public setApkChannelId(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/gsdk/gcloud/newapkchannel/CmdParserResult;->apkChannelId:Ljava/lang/String;

    return-void
.end method

.method public setCode(Ljava/lang/Integer;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/gsdk/gcloud/newapkchannel/CmdParserResult;->code:Ljava/lang/Integer;

    return-void
.end method

.method public setMinSignatureMd5(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/gsdk/gcloud/newapkchannel/CmdParserResult;->minSignatureMd5:Ljava/lang/String;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/gsdk/gcloud/newapkchannel/CmdParserResult;->msg:Ljava/lang/String;

    return-void
.end method

.method public setV1SignatureMd5(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/gsdk/gcloud/newapkchannel/CmdParserResult;->v1SignatureMd5:Ljava/lang/String;

    return-void
.end method

.method public setV1SignatureMolo(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/gsdk/gcloud/newapkchannel/CmdParserResult;->v1SignatureMolo:Ljava/lang/String;

    return-void
.end method

.method public setV2SignatureMd5(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/gsdk/gcloud/newapkchannel/CmdParserResult;->v2SignatureMd5:Ljava/lang/String;

    return-void
.end method

.method public setV3SignatureMd5(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/gsdk/gcloud/newapkchannel/CmdParserResult;->v3SignatureMd5:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CmdParserResult{code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gsdk/gcloud/newapkchannel/CmdParserResult;->code:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", msg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsdk/gcloud/newapkchannel/CmdParserResult;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', v1SignatureMd5=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsdk/gcloud/newapkchannel/CmdParserResult;->v1SignatureMd5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', v1SignatureMolo=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsdk/gcloud/newapkchannel/CmdParserResult;->v1SignatureMolo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', v2SignatureMd5=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsdk/gcloud/newapkchannel/CmdParserResult;->v2SignatureMd5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', v3SignatureMd5=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsdk/gcloud/newapkchannel/CmdParserResult;->v3SignatureMd5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', apkChannelId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsdk/gcloud/newapkchannel/CmdParserResult;->apkChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', minSignatureMd5=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsdk/gcloud/newapkchannel/CmdParserResult;->minSignatureMd5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
