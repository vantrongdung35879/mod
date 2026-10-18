.class public final Lcom/beetalk/sdk/networking/model/RegisterGuestResponse;
.super Ljava/lang/Object;
.source "RegisterGuestResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/networking/model/RegisterGuestResponse$Data;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u0011B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R \u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u000c\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/beetalk/sdk/networking/model/RegisterGuestResponse;",
        "",
        "()V",
        "data",
        "Lcom/beetalk/sdk/networking/model/RegisterGuestResponse$Data;",
        "getData",
        "()Lcom/beetalk/sdk/networking/model/RegisterGuestResponse$Data;",
        "setData",
        "(Lcom/beetalk/sdk/networking/model/RegisterGuestResponse$Data;)V",
        "error",
        "",
        "getError",
        "()Ljava/lang/String;",
        "setError",
        "(Ljava/lang/String;)V",
        "uid",
        "getUid",
        "Data",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private data:Lcom/beetalk/sdk/networking/model/RegisterGuestResponse$Data;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field

.field private error:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "error"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/beetalk/sdk/networking/model/RegisterGuestResponse$Data;

    invoke-direct {v0}, Lcom/beetalk/sdk/networking/model/RegisterGuestResponse$Data;-><init>()V

    iput-object v0, p0, Lcom/beetalk/sdk/networking/model/RegisterGuestResponse;->data:Lcom/beetalk/sdk/networking/model/RegisterGuestResponse$Data;

    return-void
.end method


# virtual methods
.method public final getData()Lcom/beetalk/sdk/networking/model/RegisterGuestResponse$Data;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/beetalk/sdk/networking/model/RegisterGuestResponse;->data:Lcom/beetalk/sdk/networking/model/RegisterGuestResponse$Data;

    return-object v0
.end method

.method public final getError()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/beetalk/sdk/networking/model/RegisterGuestResponse;->error:Ljava/lang/String;

    return-object v0
.end method

.method public final getUid()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/beetalk/sdk/networking/model/RegisterGuestResponse;->data:Lcom/beetalk/sdk/networking/model/RegisterGuestResponse$Data;

    invoke-virtual {v0}, Lcom/beetalk/sdk/networking/model/RegisterGuestResponse$Data;->getUid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setData(Lcom/beetalk/sdk/networking/model/RegisterGuestResponse$Data;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/beetalk/sdk/networking/model/RegisterGuestResponse;->data:Lcom/beetalk/sdk/networking/model/RegisterGuestResponse$Data;

    return-void
.end method

.method public final setError(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/beetalk/sdk/networking/model/RegisterGuestResponse;->error:Ljava/lang/String;

    return-void
.end method
