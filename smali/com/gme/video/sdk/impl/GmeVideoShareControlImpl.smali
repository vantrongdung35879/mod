.class public Lcom/gme/video/sdk/impl/GmeVideoShareControlImpl;
.super Lcom/gme/video/sdk/IGmeVideoShareControl;
.source "GmeVideoShareControlImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/gme/video/sdk/IGmeVideoShareControl;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelGenerateShareLink(Ljava/lang/String;)I
    .locals 0

    .line 69
    invoke-static {p1}, Lcom/gme/video/sdk/jni/BaseNativeJni;->cancelUploadFile(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public generateShareLink(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/gme/video/sdk/impl/GmeVideoShareControlImpl;->generateShareLink(Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public generateShareLink(Ljava/lang/String;Z)I
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, p1, p2, v0}, Lcom/gme/video/sdk/impl/GmeVideoShareControlImpl;->generateShareLink(Ljava/lang/String;ZLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public generateShareLink(Ljava/lang/String;ZLjava/lang/String;)I
    .locals 0

    if-nez p3, :cond_0

    .line 57
    const-string p3, ""

    .line 59
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/gme/video/sdk/jni/BaseNativeJni;->uploadFile(Ljava/lang/String;ZLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setVideoShareCallback(Lcom/gme/video/sdk/IGmeVideoShareControlCallback;)V
    .locals 1

    .line 20
    invoke-static {}, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->GetInstance()Lcom/gme/video/sdk/net/GmeVideoNetWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gme/video/sdk/net/GmeVideoNetWrapper;->setVideoShareCallback(Lcom/gme/video/sdk/IGmeVideoShareControlCallback;)V

    return-void
.end method
