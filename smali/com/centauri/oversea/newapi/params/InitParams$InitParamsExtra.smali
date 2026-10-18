.class public Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;
.super Ljava/lang/Object;
.source "InitParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/oversea/newapi/params/InitParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitParamsExtra"
.end annotation


# instance fields
.field private channelExtras:Ljava/lang/String;

.field private goodsZoneID:Ljava/lang/String;

.field private idcInfo:Ljava/lang/String;

.field private openKey:Ljava/lang/String;

.field private pf:Ljava/lang/String;

.field private pfKey:Ljava/lang/String;

.field private sessionID:Ljava/lang/String;

.field private sessionType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    const-string v0, "huyu_m-2001-android-2001"

    iput-object v0, p0, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->pf:Ljava/lang/String;

    .line 158
    const-string v0, "pfKey"

    iput-object v0, p0, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->pfKey:Ljava/lang/String;

    .line 159
    const-string v0, "hy_gameid"

    iput-object v0, p0, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->sessionID:Ljava/lang/String;

    .line 160
    const-string/jumbo v0, "st_dummy"

    iput-object v0, p0, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->sessionType:Ljava/lang/String;

    .line 161
    const-string v0, "openkey"

    iput-object v0, p0, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->openKey:Ljava/lang/String;

    .line 162
    const-string v0, ""

    iput-object v0, p0, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->goodsZoneID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getChannelExtras()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->channelExtras:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsZoneID()Ljava/lang/String;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->goodsZoneID:Ljava/lang/String;

    return-object v0
.end method

.method public getIDCInfo()Ljava/lang/String;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->idcInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenKey()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->openKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPf()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->pf:Ljava/lang/String;

    return-object v0
.end method

.method public getPfKey()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->pfKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->sessionID:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionType()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->sessionType:Ljava/lang/String;

    return-object v0
.end method

.method public setChannelExtras(Ljava/lang/String;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->channelExtras:Ljava/lang/String;

    return-void
.end method

.method public setGoodsZoneID(Ljava/lang/String;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->goodsZoneID:Ljava/lang/String;

    return-void
.end method

.method public setIDCInfo(Ljava/lang/String;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->idcInfo:Ljava/lang/String;

    return-void
.end method

.method public setOpenKey(Ljava/lang/String;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->openKey:Ljava/lang/String;

    return-void
.end method

.method public setPF(Ljava/lang/String;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->pf:Ljava/lang/String;

    return-void
.end method

.method public setPFKey(Ljava/lang/String;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->pfKey:Ljava/lang/String;

    return-void
.end method

.method public setSessionID(Ljava/lang/String;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->sessionID:Ljava/lang/String;

    return-void
.end method

.method public setSessionType(Ljava/lang/String;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;->sessionType:Ljava/lang/String;

    return-void
.end method
