.class public Lcom/beetalk/sdk/data/DataModel$UserInfo;
.super Ljava/lang/Object;
.source "DataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/data/DataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserInfo"
.end annotation


# instance fields
.field public email:Ljava/lang/String;

.field public gender:I

.field public iconURL:Ljava/lang/String;

.field public nickName:Ljava/lang/String;

.field public openID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateFrom(Lorg/json/JSONObject;)V
    .locals 1

    .line 41
    const-string v0, "icon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/data/DataModel$UserInfo;->iconURL:Ljava/lang/String;

    .line 42
    const-string v0, "gender"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/beetalk/sdk/data/DataModel$UserInfo;->gender:I

    .line 43
    const-string v0, "nickname"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/data/DataModel$UserInfo;->nickName:Ljava/lang/String;

    .line 44
    const-string v0, "open_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/data/DataModel$UserInfo;->openID:Ljava/lang/String;

    .line 45
    const-string v0, "email"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/data/DataModel$UserInfo;->email:Ljava/lang/String;

    return-void
.end method
