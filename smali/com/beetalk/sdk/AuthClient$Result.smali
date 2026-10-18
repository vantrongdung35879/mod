.class public Lcom/beetalk/sdk/AuthClient$Result;
.super Ljava/lang/Object;
.source "AuthClient.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/AuthClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/AuthClient$Result$ResultCode;
    }
.end annotation


# static fields
.field public static final NO_ERROR:I

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final errorCode:I

.field final errorMessage:Ljava/lang/String;

.field final openId:Ljava/lang/String;

.field final platform:I

.field final resultCode:Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

.field final token:Lcom/beetalk/sdk/data/AuthToken;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 225
    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/beetalk/sdk/AuthClient$Result;->NO_ERROR:I

    return-void
.end method

.method private constructor <init>(Lcom/beetalk/sdk/AuthClient$Result$ResultCode;Lcom/beetalk/sdk/data/AuthToken;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object p1, p0, Lcom/beetalk/sdk/AuthClient$Result;->resultCode:Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

    .line 236
    iput-object p2, p0, Lcom/beetalk/sdk/AuthClient$Result;->token:Lcom/beetalk/sdk/data/AuthToken;

    .line 237
    iput-object p3, p0, Lcom/beetalk/sdk/AuthClient$Result;->errorMessage:Ljava/lang/String;

    .line 238
    iput p4, p0, Lcom/beetalk/sdk/AuthClient$Result;->errorCode:I

    .line 239
    iput-object p5, p0, Lcom/beetalk/sdk/AuthClient$Result;->openId:Ljava/lang/String;

    .line 240
    iput p6, p0, Lcom/beetalk/sdk/AuthClient$Result;->platform:I

    return-void
.end method

.method public static createErrorResult(I)Lcom/beetalk/sdk/AuthClient$Result;
    .locals 1

    .line 248
    const-string v0, ""

    invoke-static {v0, v0, p0}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(Ljava/lang/String;Ljava/lang/String;I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p0

    return-object p0
.end method

.method static createErrorResult(Ljava/lang/String;Ljava/lang/String;I)Lcom/beetalk/sdk/AuthClient$Result;
    .locals 8

    .line 253
    const-string v0, ": "

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 254
    new-instance p0, Lcom/beetalk/sdk/AuthClient$Result;

    sget-object v2, Lcom/beetalk/sdk/AuthClient$Result$ResultCode;->ERROR:Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/beetalk/sdk/AuthClient$Result;-><init>(Lcom/beetalk/sdk/AuthClient$Result$ResultCode;Lcom/beetalk/sdk/data/AuthToken;Ljava/lang/String;ILjava/lang/String;I)V

    return-object p0
.end method

.method public static createTokenResult(Lcom/beetalk/sdk/data/AuthToken;)Lcom/beetalk/sdk/AuthClient$Result;
    .locals 8

    .line 244
    new-instance v7, Lcom/beetalk/sdk/AuthClient$Result;

    sget-object v1, Lcom/beetalk/sdk/AuthClient$Result$ResultCode;->SUCCESS:Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

    sget v4, Lcom/beetalk/sdk/AuthClient$Result;->NO_ERROR:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, v7

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/beetalk/sdk/AuthClient$Result;-><init>(Lcom/beetalk/sdk/AuthClient$Result$ResultCode;Lcom/beetalk/sdk/data/AuthToken;Ljava/lang/String;ILjava/lang/String;I)V

    return-object v7
.end method

.method public static isError(Lcom/beetalk/sdk/AuthClient$Result$ResultCode;)Z
    .locals 1

    .line 258
    sget-object v0, Lcom/beetalk/sdk/AuthClient$Result$ResultCode;->SUCCESS:Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Result{resultCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/beetalk/sdk/AuthClient$Result;->resultCode:Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/beetalk/sdk/AuthClient$Result;->token:Lcom/beetalk/sdk/data/AuthToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errorMessage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/beetalk/sdk/AuthClient$Result;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/beetalk/sdk/AuthClient$Result;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", openId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/beetalk/sdk/AuthClient$Result;->openId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', platform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/beetalk/sdk/AuthClient$Result;->platform:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
