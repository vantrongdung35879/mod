.class public Lcom/beetalk/sdk/networking/model/BaseResponse;
.super Ljava/lang/Object;
.source "BaseResponse.java"


# instance fields
.field public error:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "error"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/beetalk/sdk/networking/model/BaseResponse;->error:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/beetalk/sdk/networking/model/BaseResponse;->error:Ljava/lang/String;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/beetalk/sdk/networking/model/BaseResponse;->error:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/beetalk/sdk/networking/model/BaseResponse;->error:Ljava/lang/String;

    return-void
.end method
