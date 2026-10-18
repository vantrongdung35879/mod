.class public Lcom/centauri/oversea/api/request/CTIGameRequest;
.super Lcom/centauri/oversea/api/request/CTIBaseRequest;
.source "CTIGameRequest.java"


# static fields
.field private static final serialVersionUID:J = -0x142b4746c3a9c548L


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/centauri/oversea/api/request/CTIBaseRequest;-><init>()V

    .line 21
    const-string v0, "save"

    iput-object v0, p0, Lcom/centauri/oversea/api/request/CTIGameRequest;->mType:Ljava/lang/String;

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/centauri/oversea/api/request/CTIGameRequest;->mOldType:I

    return-void
.end method
