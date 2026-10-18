.class public final Lcom/beetalk/sdk/networking/model/BoundedAccount;
.super Ljava/lang/Object;
.source "BoundedAccount.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R \u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001e\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001e\u0010\u0015\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/beetalk/sdk/networking/model/BoundedAccount;",
        "",
        "()V",
        "accountInfo",
        "Lcom/beetalk/sdk/networking/model/AccountInfo;",
        "getAccountInfo",
        "()Lcom/beetalk/sdk/networking/model/AccountInfo;",
        "setAccountInfo",
        "(Lcom/beetalk/sdk/networking/model/AccountInfo;)V",
        "createTime",
        "",
        "getCreateTime",
        "()J",
        "setCreateTime",
        "(J)V",
        "platformType",
        "",
        "getPlatformType",
        "()I",
        "setPlatformType",
        "(I)V",
        "uid",
        "",
        "getUid",
        "()Ljava/lang/String;",
        "setUid",
        "(Ljava/lang/String;)V",
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
.field private accountInfo:Lcom/beetalk/sdk/networking/model/AccountInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_info"
    .end annotation
.end field

.field private createTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "create_time"
    .end annotation
.end field

.field private platformType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "platform"
    .end annotation
.end field

.field private uid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/JsonAdapter;
        value = Lcom/beetalk/sdk/networking/ULongJsonAdapter;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "uid"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/beetalk/sdk/networking/model/BoundedAccount;->uid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAccountInfo()Lcom/beetalk/sdk/networking/model/AccountInfo;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/beetalk/sdk/networking/model/BoundedAccount;->accountInfo:Lcom/beetalk/sdk/networking/model/AccountInfo;

    return-object v0
.end method

.method public final getCreateTime()J
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/beetalk/sdk/networking/model/BoundedAccount;->createTime:J

    return-wide v0
.end method

.method public final getPlatformType()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/beetalk/sdk/networking/model/BoundedAccount;->platformType:I

    return v0
.end method

.method public final getUid()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/beetalk/sdk/networking/model/BoundedAccount;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public final setAccountInfo(Lcom/beetalk/sdk/networking/model/AccountInfo;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/beetalk/sdk/networking/model/BoundedAccount;->accountInfo:Lcom/beetalk/sdk/networking/model/AccountInfo;

    return-void
.end method

.method public final setCreateTime(J)V
    .locals 0

    .line 38
    iput-wide p1, p0, Lcom/beetalk/sdk/networking/model/BoundedAccount;->createTime:J

    return-void
.end method

.method public final setPlatformType(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/beetalk/sdk/networking/model/BoundedAccount;->platformType:I

    return-void
.end method

.method public final setUid(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcom/beetalk/sdk/networking/model/BoundedAccount;->uid:Ljava/lang/String;

    return-void
.end method
