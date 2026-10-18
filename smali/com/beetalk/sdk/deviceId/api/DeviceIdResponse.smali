.class public final Lcom/beetalk/sdk/deviceId/api/DeviceIdResponse;
.super Ljava/lang/Object;
.source "DeviceIdResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0005\u0008\u0001\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/beetalk/sdk/deviceId/api/DeviceIdResponse;",
        "",
        "()V",
        "deviceId",
        "",
        "getDeviceId",
        "()Ljava/lang/String;",
        "setDeviceId",
        "(Ljava/lang/String;)V",
        "nextRefreshTimeInSeconds",
        "",
        "getNextRefreshTimeInSeconds",
        "()J",
        "setNextRefreshTimeInSeconds",
        "(J)V",
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
.field private deviceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device_id"
    .end annotation
.end field

.field private nextRefreshTimeInSeconds:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "next_refresh_time"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/beetalk/sdk/deviceId/api/DeviceIdResponse;->deviceId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDeviceId()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/beetalk/sdk/deviceId/api/DeviceIdResponse;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getNextRefreshTimeInSeconds()J
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/beetalk/sdk/deviceId/api/DeviceIdResponse;->nextRefreshTimeInSeconds:J

    return-wide v0
.end method

.method public final setDeviceId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/beetalk/sdk/deviceId/api/DeviceIdResponse;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public final setNextRefreshTimeInSeconds(J)V
    .locals 0

    .line 29
    iput-wide p1, p0, Lcom/beetalk/sdk/deviceId/api/DeviceIdResponse;->nextRefreshTimeInSeconds:J

    return-void
.end method
