.class public Lcom/centauri/oversea/newapi/params/NetParams$Builder;
.super Ljava/lang/Object;
.source "NetParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/oversea/newapi/params/NetParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private params:Lcom/centauri/oversea/newapi/params/NetParams;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/centauri/oversea/newapi/params/NetParams;

    invoke-direct {v0}, Lcom/centauri/oversea/newapi/params/NetParams;-><init>()V

    iput-object v0, p0, Lcom/centauri/oversea/newapi/params/NetParams$Builder;->params:Lcom/centauri/oversea/newapi/params/NetParams;

    return-void
.end method


# virtual methods
.method public build()Lcom/centauri/oversea/newapi/params/NetParams;
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/NetParams$Builder;->params:Lcom/centauri/oversea/newapi/params/NetParams;

    invoke-static {v0}, Lcom/centauri/oversea/newapi/params/NetParams;->access$100(Lcom/centauri/oversea/newapi/params/NetParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/NetParams$Builder;->params:Lcom/centauri/oversea/newapi/params/NetParams;

    return-object v0

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "params are missed,please check init params."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMpReqType(Ljava/lang/String;)Lcom/centauri/oversea/newapi/params/NetParams$Builder;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/centauri/oversea/newapi/params/NetParams$Builder;->params:Lcom/centauri/oversea/newapi/params/NetParams;

    invoke-static {v0, p1}, Lcom/centauri/oversea/newapi/params/NetParams;->access$002(Lcom/centauri/oversea/newapi/params/NetParams;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method
