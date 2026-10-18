.class public Lcom/centauri/oversea/newapi/params/InitParams;
.super Ljava/lang/Object;
.source "InitParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;,
        Lcom/centauri/oversea/newapi/params/InitParams$Builder;
    }
.end annotation


# static fields
.field public static final IDC_CANADA:Ljava/lang/String; = "canada"

.field public static final IDC_HONGKONG:Ljava/lang/String; = "hongkong"

.field public static final IDC_LOCAL:Ljava/lang/String; = "local"

.field public static final TAG:Ljava/lang/String; = "InitParams"


# instance fields
.field private env:Ljava/lang/String;

.field private extra:Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;

.field private idc:Ljava/lang/String;

.field private offerID:Ljava/lang/String;

.field private openID:Ljava/lang/String;

.field private zoneID:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "1"

    iput-object v0, p0, Lcom/centauri/oversea/newapi/params/InitParams;->zoneID:Ljava/lang/String;

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/centauri/oversea/newapi/params/InitParams;->extra:Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;

    return-void
.end method

.method synthetic constructor <init>(Lcom/centauri/oversea/newapi/params/InitParams$1;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/centauri/oversea/newapi/params/InitParams;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/centauri/oversea/newapi/params/InitParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/centauri/oversea/newapi/params/InitParams;->env:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/centauri/oversea/newapi/params/InitParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/centauri/oversea/newapi/params/InitParams;->idc:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/centauri/oversea/newapi/params/InitParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/centauri/oversea/newapi/params/InitParams;->offerID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/centauri/oversea/newapi/params/InitParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/centauri/oversea/newapi/params/InitParams;->openID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/centauri/oversea/newapi/params/InitParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/centauri/oversea/newapi/params/InitParams;->zoneID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/centauri/oversea/newapi/params/InitParams;Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;)Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/centauri/oversea/newapi/params/InitParams;->extra:Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;

    return-object p1
.end method

.method static synthetic access$700(Lcom/centauri/oversea/newapi/params/InitParams;)Z
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/centauri/oversea/newapi/params/InitParams;->checkParams()Z

    move-result p0

    return p0
.end method

.method private checkParams()Z
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/InitParams;->idc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "InitParams"

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "IDC is empty,please set it !!"

    invoke-static {v2, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/InitParams;->offerID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    const-string v0, "offerID is empty,please set it !!"

    invoke-static {v2, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/InitParams;->openID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    const-string v0, "openID is empty,please set it !!"

    invoke-static {v2, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/InitParams;->zoneID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    const-string/jumbo v0, "zoneID is empty,please set it !!"

    invoke-static {v2, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getEnv()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/InitParams;->env:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/InitParams;->extra:Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;

    invoke-direct {v0}, Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;-><init>()V

    iput-object v0, p0, Lcom/centauri/oversea/newapi/params/InitParams;->extra:Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/InitParams;->extra:Lcom/centauri/oversea/newapi/params/InitParams$InitParamsExtra;

    return-object v0
.end method

.method public getIDC()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/InitParams;->idc:Ljava/lang/String;

    return-object v0
.end method

.method public getOfferID()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/InitParams;->offerID:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenID()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/InitParams;->openID:Ljava/lang/String;

    return-object v0
.end method

.method public getZoneID()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/InitParams;->zoneID:Ljava/lang/String;

    return-object v0
.end method
