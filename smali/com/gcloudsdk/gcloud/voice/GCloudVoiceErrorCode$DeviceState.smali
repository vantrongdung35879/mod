.class public final Lcom/gcloudsdk/gcloud/voice/GCloudVoiceErrorCode$DeviceState;
.super Ljava/lang/Object;
.source "GCloudVoiceErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gcloudsdk/gcloud/voice/GCloudVoiceErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceState"
.end annotation


# static fields
.field public static final AUDIO_DEVICE_BLUETOOTH_CONNECCTED:I = 0x2

.field public static final AUDIO_DEVICE_CONNECCTED:I = 0x3

.field public static final AUDIO_DEVICE_UNCONNECTED:I = 0x0

.field public static final AUDIO_DEVICE_WIREDHEADSET_CONNECCTED:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
