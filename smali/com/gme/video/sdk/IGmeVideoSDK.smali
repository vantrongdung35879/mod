.class public abstract Lcom/gme/video/sdk/IGmeVideoSDK;
.super Ljava/lang/Object;
.source "IGmeVideoSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/gme/video/sdk/IGmeVideoSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/gme/video/sdk/IGmeVideoSDK;
    .locals 1

    .line 41
    sget-object v0, Lcom/gme/video/sdk/IGmeVideoSDK;->mInstance:Lcom/gme/video/sdk/IGmeVideoSDK;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/gme/video/sdk/impl/GmeVideoSDKImpl;

    invoke-direct {v0}, Lcom/gme/video/sdk/impl/GmeVideoSDKImpl;-><init>()V

    sput-object v0, Lcom/gme/video/sdk/IGmeVideoSDK;->mInstance:Lcom/gme/video/sdk/IGmeVideoSDK;

    .line 44
    :cond_0
    sget-object v0, Lcom/gme/video/sdk/IGmeVideoSDK;->mInstance:Lcom/gme/video/sdk/IGmeVideoSDK;

    return-object v0
.end method


# virtual methods
.method public abstract createVideoPlayControl(Landroid/content/Context;I)Lcom/gme/video/sdk/IGmeVideoPlayControl;
.end method

.method public abstract getEditControlInstance()Lcom/gme/video/sdk/IGmeVideoEditControl;
.end method

.method public abstract getSDKVersion()Ljava/lang/String;
.end method

.method public abstract getScreenRecordControlInstance()Lcom/gme/video/sdk/IGmeVideoScreenRecordControl;
.end method

.method public abstract getVideoShareControlInstance()Lcom/gme/video/sdk/IGmeVideoShareControl;
.end method

.method public abstract initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract setContext(Landroid/content/Context;)V
.end method

.method public abstract setLogCallback(Lcom/gme/video/sdk/IGmeVideoSDKLogCallback;)V
.end method

.method public abstract setLogLevel(Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;Lcom/gme/video/sdk/IGmeVideoSDK$LogLevel;)V
.end method

.method public abstract setRegion(Ljava/lang/String;)I
.end method

.method public abstract unInitialize()V
.end method
